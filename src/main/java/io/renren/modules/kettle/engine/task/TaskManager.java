package io.renren.modules.kettle.engine.task;


import com.alibaba.fastjson.JSONObject;
import org.beetl.sql.core.db.Db;
import org.pentaho.di.core.exception.KettleException;
import my.study.kettle.common.KuConst;
import my.study.utils.StringUtil;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
* 用于查找job对应的定时任务
* */
public class TaskManager {

    public static Long startTypeId = 0L;

    private static HashMap<String,String> weekDayMap = new HashMap<>();//星期

    static {
        weekDayMap.put("0","星期天");
        weekDayMap.put("1","星期一");
        weekDayMap.put("2","星期二");
        weekDayMap.put("3","星期三");
        weekDayMap.put("4","星期四");
        weekDayMap.put("5","星期五");
        weekDayMap.put("6","星期六");
    }

    public static  void setStartTypeId(Long id){
        startTypeId = id;
    }

    private static String showText(HashMap<String,String> startTimingMap){
        //是否重复
        String isRepeat = startTimingMap.get("repeat");
        //定时类别
        String schedulerType = startTimingMap.get("scheduler_type").toString();
        String hour = startTimingMap.get("hour").toString();
        String minutes = startTimingMap.get("minutes").toString();
        String result = "";
        if(KuConst.SCHEDULER_TYPE_NOT_TIMING.equals(schedulerType)){
            result = "不需要定时";
        }else if(KuConst.SCHEDULER_TYPE_TIME_INTERVAL.equals(schedulerType)){
            String intervalSeconds = startTimingMap.get("interval_seconds").toString();
            String intervalMinutes = startTimingMap.get("interval_minutes").toString();
            if(intervalMinutes.equals("0")){
                result = "等"+intervalSeconds+"秒执行一次";
            }else{
                result = "等"+intervalMinutes+"分"+intervalSeconds+"秒执行一次";
            }
        }else if(KuConst.SCHEDULER_TYPE_DAY.equals(schedulerType)){
            result = "一天的"+hour+"点"+minutes+"分执行一次";
        }else if(KuConst.SCHEDULER_TYPE_WEEK.equals(schedulerType)){
            String weekDay = startTimingMap.get("week_day").toString();
            String week = weekDayMap.get(weekDay);
            result = week + "的"+hour+"点"+minutes+"分执行一次";
        }else if(KuConst.SCHEDULER_TYPE_MONTH.equals(schedulerType)){
            String dayOfMonth = startTimingMap.get("day_of_month").toString();
            result = "一个月的"+dayOfMonth+"日"+hour+"点"+minutes+"分执行一次";
        }
        if(isRepeat.equals("Y")){
            result+="/重复执行";
        }
        String msg = result;
        return msg;
    }

    /**
     * 根据作业id获取该作业的开始控件id <br/>
     * @author jingma
     * @param dbCode
     * @param jobId
     * @return
     */
    private static Integer getStartIdByJobId(String dbCode, Long jobId) {
        //START控件的类型编号是74，每个JOB只有一个START控件，所有可以唯一确定
        String sql = "select je.id_jobentry from r_jobentry je where "
                + "je.id_job=? and je.id_jobentry_type=?";
        JSONObject startIdRecord = Db.use(dbCode).findFirst(sql, jobId,startTypeId);
        if(startIdRecord == null){
            return null;
        }
        Integer startId = startIdRecord.getIntValue("id_jobentry");
        return startId;
    }


    /**
     * 通过作业ID获取作业定时信息<br/>
     * @author jingma
     * @param jobId 作业ID
     * @return SATRT控件实体
     */
    public static String getTimingByJobId(Long jobId) {
        HashMap<String,String> startTimingMap = getTimingByJobId(jobId.toString());
        if(startTimingMap == null){
            return "未设定";
        }else{
            return showText(startTimingMap);
        }

    }

    public static HashMap<String,String> getTimingByJobId(String jobId){
        HashMap<String,String> startTimingMap = initTimingMap();
        Integer startId = getStartIdByJobId(KuConst.DATASOURCE_KETTLE, Long.valueOf(jobId));
        if(startId==null){
            return null;
        }

        String sql = "select ja.value_num,ja.value_str,ja.code from r_jobentry_attribute ja "
                + "where ja.id_jobentry=?";
        List<JSONObject> records = Db.use(KuConst.DATASOURCE_KETTLE).find(sql, startId);
        for(JSONObject record:records){

            if(record.getString("code").equals("repeat")){
                startTimingMap.put(startTimingMap.get(record.getString("code")), record.getString("value_str"));
            }

            if(StringUtil.isNotBlank(record.getString("value_str"))){
                startTimingMap.put(startTimingMap.get(record.getString("code")), record.getString("value_str"));
            }else{
                startTimingMap.put(startTimingMap.get(record.getString("code")), record.getString("value_num"));
            }
        }
        return startTimingMap;
    }
    private static HashMap<String,String> initTimingMap(){
        HashMap<String,String> startTimingMap = new HashMap<>();
        startTimingMap.put("start", "start");
        startTimingMap.put("dummy", "dummy");
        startTimingMap.put("repeat", "repeat");
        startTimingMap.put("schedulerType", "scheduler_type");
        startTimingMap.put("intervalSeconds", "interval_seconds");
        startTimingMap.put("intervalSeconds", "interval_seconds");
        startTimingMap.put("intervalMinutes", "interval_minutes");
        startTimingMap.put("hour", "hour");
        startTimingMap.put("minutes", "minutes");
        startTimingMap.put("weekDay", "week_day");
        startTimingMap.put("dayOfMonth", "day_of_month");
        return startTimingMap;
    }

    /**
     * 保存定时到kettle的表中方式1 <br/>
     * 直接修改相关表数据，效率高，存在风险<br/>
     * @return
     * @throws KettleException
     */
    public static Long saveTimingToKettle(Map<String,String[]> data) throws KettleException {
        Long jobId = Long.valueOf(data.get("jobId")[0].toString());
        Integer startId = getStartIdByJobId(KuConst.DATASOURCE_KETTLE, jobId);
        BigDecimal intervalSeconds = new BigDecimal(data.get("interval_seconds")!=null?data.get("interval_seconds")[0]:"0");
        BigDecimal intervalMinutes = new BigDecimal(data.get("interval_minutes")!=null?data.get("interval_minutes")[0]:"60");
        BigDecimal hour = new BigDecimal(data.get("hour")!=null?data.get("hour")[0]:"12");
        BigDecimal minutes = new BigDecimal(data.get("minutes")!=null?data.get("minutes")[0]:"0");
        BigDecimal dayOfMonth = new BigDecimal(data.get("day_of_month")!=null?data.get("day_of_month")[0]:"1");
        Integer weekDay = data.get("week_day")!=null? Integer.valueOf(data.get("week_day")[0]) :1;
        if(startId==null){
            return 0L;
        }
        String sql = "update r_jobentry_attribute ja "
                + "set ja.VALUE_NUM=?,ja.VALUE_STR=? "
                + "where ja.id_jobentry="+startId
                + " and ja.code=?";
        Db db = Db.use(KuConst.DATASOURCE_KETTLE);
        db.update(sql, 0, "Y".equals(data.get("is_repeat")!=null?data.get("is_repeat")[0]:"N")?"Y":"N",
                "repeat");
        db.update(sql, Integer.parseInt(data.get("scheduler_type")[0]),
                null,"schedulerType");
        db.update(sql, intervalSeconds.intValue(),
                null,"intervalSeconds");
        db.update(sql, intervalMinutes.intValue(),
                null,"intervalMinutes");
        db.update(sql, hour.intValue(),null,"hour");
        db.update(sql, minutes.intValue(),null,"minutes");
        db.update(sql, weekDay,null,"weekDay");
        db.update(sql, dayOfMonth.intValue(),
                null,"dayOfMonth");
        return jobId;
    }
}
