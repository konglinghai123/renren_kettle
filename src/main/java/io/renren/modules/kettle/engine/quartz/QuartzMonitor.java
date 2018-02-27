package io.renren.modules.kettle.engine.quartz;


import io.renren.modules.kettle.engine.common.AbsJob;
import io.renren.modules.kettle.engine.common.TaskStatus;
import io.renren.modules.kettle.sys.task.entity.CrTaskEntity;
import io.renren.modules.kettle.sys.task.service.CrTaskService;
import org.apache.log4j.Logger;
import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


@Component
public class QuartzMonitor {

    @Autowired
    CrTaskService crTaskService;

    /**
     * 日志
     */
    private final static Logger log = org.apache.log4j.Logger.getLogger(AbsJob.class);

    private SchedulerFactory sf = null;

    public static Scheduler scheduler = null;




    /**
     * 启动Quartz
     */
    @SuppressWarnings({ "rawtypes", "unchecked" })
    public boolean start() throws Exception{
        // 创建调度工厂
        sf = new StdSchedulerFactory();

        try {
            scheduler = sf.getScheduler();
            List<CrTaskEntity> list = crTaskService.queryList(new HashMap<>());
            for (CrTaskEntity task : list) {
                String jobClassName = task.getJavaClass();
                String jobCronExp = task.getExp();
                int state = task.getState();

                Class clazz;
                try {
                    clazz = Class.forName(jobClassName);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }

                JobDetail job = JobBuilder.newJob(clazz).withIdentity(task.getId().toString(), jobClassName).build();
                job.getJobDataMap().put(AbsJob.TASK_KEY, task);
                CronTrigger trigger = TriggerBuilder.newTrigger().withIdentity(task.getId().toString(), jobClassName).withSchedule(CronScheduleBuilder.cronSchedule(jobCronExp)).build();

                try {
                    scheduler.scheduleJob(job, trigger);
                    if (state == TaskStatus.STATE_STOP) {
                        // 暂停触发
                        scheduler.pauseTrigger(trigger.getKey());
                    }
                } catch (SchedulerException e) {
                    new RuntimeException(e);
                }

                log.info(job.getKey() + " loading and exp: " + trigger.getCronExpression());
            }

            scheduler.start();

        } catch (SchedulerException e) {
            new RuntimeException(e);
        }

        return true;

    }

    /**
     * 停止Quartz
     */
    public boolean stop() {
        try {
            scheduler.shutdown();
        } catch (SchedulerException e) {
            log.error("shutdown error", e);
            return false;
        }
        return true;
    }
}
