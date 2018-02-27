package io.renren.modules.kettle.engine;

import com.alibaba.druid.pool.DruidDataSource;
import io.renren.modules.kettle.engine.job.JobManager;
import io.renren.modules.kettle.engine.log.KettleLogListener;
import io.renren.modules.kettle.engine.quartz.QuartzMonitor;
import io.renren.modules.kettle.engine.task.TaskManager;
import org.apache.log4j.Logger;
import org.beetl.sql.core.db.Db;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SingleColumnRowMapper;
import org.springframework.stereotype.Component;
import my.study.kettle.common.KuConst;
import my.study.utils.KettleUtils;

import javax.sql.DataSource;
import java.util.List;
import java.util.ResourceBundle;

@Component
@Order(value = 2)
public class KettleRunner implements CommandLineRunner {

    private static Logger logger = Logger.getLogger(KettleRunner.class);

    private static ResourceBundle res = ResourceBundle.getBundle("kettle");

    @Autowired
    @Qualifier("kettleJdbcTemplate")
    private JdbcTemplate kettleJdbcTemplate;

    @Autowired
    @Qualifier("secondDataSource")
    private DataSource dataSource;

    @Autowired
    private QuartzMonitor quartzMonitor;

    @Autowired
    private KettleLogListener logListener;


    @Override
    public void run(String... strings) throws Exception {
        //往beetl的数据池加入kettle的数据源

        logger.info("kettle start run ...");
        String sql = "select jt.id_jobentry_type from r_jobentry_type jt where jt.code='SPECIAL'";
        List<Long> types = kettleJdbcTemplate.query(sql,new SingleColumnRowMapper<Long>());
        Long type = types!=null?types.get(0):0L;
        TaskManager.setStartTypeId(type);
        //初始化资源库
        try {
            //得到本应用操作的资源库代码
            KuConst.DATASOURCE_KETTLE = res.getString("rep_jndi_code");
            KettleUtils.connectKettle(KuConst.DATASOURCE_KETTLE,
                    res.getString("kettle.url"),
                    res.getString("kettle.username"),
                    res.getString("kettle.password"),
                    res.getString("kettle_username"),
                    res.getString("kettle_password"),
                    res.getString("kettle_home"));
            Db.put(KuConst.DATASOURCE_KETTLE,(DruidDataSource) dataSource);
            JobManager.init(res.getString("job_view_name"),res.getString("project_code"),logListener);
            logger.info("kettle running !");
        } catch (Exception e) {
            logger.error("连接kettle资源库失败", e);
        }

        logger.info("quartz start run ...");
        try {
            quartzMonitor.start();
        }catch (Exception e){
            e.printStackTrace();
            logger.error("quartz task  running fail",e);
        }
        logger.info("quartz task  running!");
    }
}
