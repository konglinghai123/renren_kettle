/**
* Project Name:kettle-manager
* Date:2017年6月13日
* Copyright (c) 2017, jingma All Rights Reserved.
*/

package io.renren.modules.kettle.engine.service;


import com.alibaba.fastjson.JSON;
import io.renren.common.utils.R;
import io.renren.modules.kettle.engine.util.PathKit;
import io.renren.modules.kettle.sys.job.entity.VJobEntity;
import org.apache.log4j.Logger;
import org.pentaho.di.core.exception.KettleException;
import org.pentaho.di.core.exception.KettleXMLException;
import org.pentaho.di.job.JobMeta;
import org.pentaho.di.repository.RepositoryDirectoryInterface;
import org.springframework.stereotype.Service;
import my.study.utils.KettleUtils;
import my.study.utils.StringUtil;

import java.util.Map;

/**
 * 作业管理服务类 <br/>
 * date: 2017年6月13日 <br/>
 * @author jingma
 * @version 
 */
@Service
public class JobManagerService {

    //作业类型
    public static final String JOB_TYPE_SHELL = "shell";
    public static final String JOB_TYPE_JAVASCRIPT = "javascript";
    public static final String JOB_TYPE_SQL = "sql";
    public static final String JOB_TYPE_KM = "km";

    /**
    * 目录-km自动生成的作业根目录
    */
    public static final String DIR_KM_AUTO_GEN = "/km_auto_gen/";
    
    //模板信息
    public static final String templateRoot = PathKit.getRootClassPath()+"/template/";
    public static final String templateHz = "Template.kjb";

    /**
    * 日志
    */
    private final static Logger log= Logger.getLogger(JobManagerService.class);

    /**
    * 编辑作业基本信息 <br/>
    * @author jingma
    * @param paraMap
    * @param result
    * @param jobType 作业类型
    * @return
    * @throws KettleException
    * @throws KettleXMLException
    */
    public  JobMeta editJobInfo(Map<String, String[]> paraMap, R result, String jobType)
            throws KettleException, KettleXMLException {
        JobMeta jm = null;
        if(StringUtil.isNotBlank(paraMap.get("jobId")[0])){
            result.put("msg","修改成功！");
            jm = KettleUtils.loadJob(paraMap.get("jobId")[0]);
        }else{
            //创建作业元对象
            jm = new JobMeta(templateRoot+jobType+templateHz, KettleUtils.getInstanceRep());
            jm.setName(paraMap.get("name")[0]);
            //设置目录
            String directory = paraMap.get("directory")[0];
            RepositoryDirectoryInterface dir = KettleUtils.makeDirs(DIR_KM_AUTO_GEN+directory);
            jm.setRepositoryDirectory(dir);
        }
        //设置作业描述
        jm.setDescription(paraMap.get("description")[0]);
        return jm;
    }

    /**
    * 设置作业的相对路径 <br/>
    * @param job
    * @throws KettleException
    */
    public void setDir(VJobEntity job) throws KettleException {
        String dir = KettleUtils.getDirectory(job.getIdDirectory());
        job.setDirectoryStr(dir);
    }
    

    



    /**
    * 删除作业 <br/>
    * @author jingma
    * @param VJobEntity
     * @throws KettleException
    */
    public  void delJob(VJobEntity VJobEntity) throws KettleException {
        log.info("删除作业："+ JSON.toJSONString(VJobEntity));
        KettleUtils.delJob(VJobEntity.getIdJob());
    }

    public String getDir(VJobEntity job){
        String dir = "";
        try {
            dir = KettleUtils.getDirectory(job.getIdDirectory());
        } catch (Exception e) {
            log.error("获取作业目录失败:"+job, e);
        }
        return dir;
    }

}
