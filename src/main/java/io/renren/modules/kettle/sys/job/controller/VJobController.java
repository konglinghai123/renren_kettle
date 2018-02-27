package io.renren.modules.kettle.sys.job.controller;

import java.util.List;
import java.util.Map;

import io.renren.modules.kettle.engine.common.AbsJob;
import io.renren.modules.kettle.engine.job.JobManager;
import io.renren.modules.kettle.engine.service.JobManagerService;
import io.renren.modules.kettle.sys.job.entity.VJobEntity;
import io.renren.modules.kettle.sys.job.service.VJobService;
import my.study.kettle.common.KuConst;
import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.beetl.sql.core.db.Db;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;
import io.renren.common.utils.R;




/**
 * VIEW
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:52:22
 */
@RestController
@RequestMapping("/vjob")
public class VJobController {

	@Autowired
	private VJobService vJobService;

	@Autowired
	private JobManagerService managerService;

	private final static Logger logger= Logger.getLogger(AbsJob.class);
	
	/**
	 * 列表
	 */
	@RequestMapping("/list")
	public R list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);

		List<VJobEntity> vJobList = vJobService.queryList(query);
		int total = vJobService.queryTotal(query);
		
		PageUtils pageUtil = new PageUtils(vJobList, total, query.getLimit(), query.getPage());
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@RequestMapping("/info/{idJob}")
	public R info(@PathVariable("idJob") Long idJob){
		VJobEntity vJob = vJobService.queryObject(idJob);
		
		return R.ok().put("vJob", vJob);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping("/save")
	public R save(@RequestBody VJobEntity vJob){
		vJobService.save(vJob);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("/update")
	public R update(@RequestBody VJobEntity vJob){
		vJobService.update(vJob);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	public R delete(@RequestBody Long[] idJobs){
		vJobService.deleteBatch(idJobs);
		return R.ok();
	}


	/**
	 * 启动作业 <br/>
	 */
	@RequestMapping("/start")
	@ResponseBody
	public R startJob(@RequestBody Long [] jobs){
		String failJob = "";
		//是否有启动失败的作业
		boolean flag = false;
		for(int i=0;i<jobs.length;i++){
			String runStatus = JobManager.START_FAILED;
			VJobEntity job = null;
			try {
				job = vJobService.queryObject(jobs[i]);
			}catch (Exception e){
				e.printStackTrace();
				logger.error("job丢失");
			}

			if(job == null){
				continue;
			}

			try {
				runStatus = JobManager.startJob(job);
			} catch (Exception e) {
				flag = true;
				logger.error("启动job失败:"+job, e);
				failJob = failJob +" "+job.getName();
			}
			Db.use(KuConst.DATASOURCE_KETTLE).update(JobManager.SQL_UPDATE_JOB_STATUS, runStatus,
					Db.use(KuConst.DATASOURCE_KETTLE).getCurrentDateStr14(),job.getIdJob());
		}
		if(!flag){
			return R.error("作业启动成功！");
		}else{
			return R.error("部分作业启动失败，作业名称为："+failJob);
		}
	}

	/**
	 * 停止作业 <br/>
	 */
	@RequestMapping("/stop")
	@ResponseBody
	public R stopJob(@RequestBody Long [] jobs){
		String failJob = "";
		//是否有停止失败的作业
		boolean flag = false;
		for(int i=0;i<jobs.length;i++){
			String runStatus = JobManager.STOP_FAILED;
			VJobEntity job = null;
			try {
				job = vJobService.queryObject(jobs[i]);
			}catch (Exception e){
				e.printStackTrace();
				logger.error("job丢失");
			}

			if(job == null){
				continue;
			}
			//如果该作业就指定运行在本项目

			try {
				runStatus = JobManager.stopJob(job.getIdJob().toString());
			} catch (Exception e) {
				flag = true;
				logger.error("停止job失败:"+job, e);
				failJob = failJob +" "+job.getName();
			}

			Db.use(KuConst.DATASOURCE_KETTLE).update(JobManager.SQL_UPDATE_JOB_STATUS, runStatus,
					Db.use(KuConst.DATASOURCE_KETTLE).getCurrentDateStr14(),job.getIdJob());
		}

		if(!flag){
			return R.error("作业停止成功！");
		}else{
			return R.error("部分作业停止失败，作业名称为："+failJob);
		}
	}

	/**
	 * 删除作业 <br/>
	 */
	@RequestMapping("/del")
	@ResponseBody
	public R delJob(@RequestBody Long [] jobs){
		String failJob = "";
		//是否有删除失败的作业
		boolean flag = false;
		for(int i=0;i<jobs.length;i++){
			VJobEntity job = null;
			try {
				job = vJobService.queryObject(jobs[i]);
			}catch (Exception e){
				e.printStackTrace();
				logger.error("job丢失");
			}

			if(job == null){
				continue;
			}
			//如果该作业就指定运行在本项目
			try {
				managerService.delJob(job);
			} catch (Exception e) {
				flag = true;
				logger.error("作业删除失败:"+job, e);
				failJob = failJob +" "+job.getName();
			}
		}
		if(!flag){
			return R.error("作业删除成功！");
		}else{
			return R.error("部分作业删除失败，作业名称为："+failJob);
		}
	}

	/**
	 * 结束作业 <br/>
	 */
	@RequestMapping("/kill")
	@ResponseBody
	public R killJob(@RequestBody Long [] jobs){
		String failJob = "";
		//是否有结束失败的作业
		boolean flag = false;
		for(int i=0;i<jobs.length;i++){
			String runStatus = JobManager.STOP_FAILED;
			VJobEntity job = null;
			try {
				job = vJobService.queryObject(jobs[i]);
			}catch (Exception e){
				e.printStackTrace();
				logger.error("job丢失");
			}

			if(job == null){
				continue;
			}

			try {
				runStatus = JobManager.killJob(job.getIdJob().toString());
			} catch (Exception e) {
				flag = true;
				logger.error("结束job失败:"+job, e);
				failJob = failJob +" "+job.getName();
			}
			Db.use(KuConst.DATASOURCE_KETTLE).update(JobManager.SQL_UPDATE_JOB_STATUS, runStatus,
					Db.use(KuConst.DATASOURCE_KETTLE).getCurrentDateStr14(),job.getIdJob());
		}
		if(!flag){
			return R.error("作业结束成功！");
		}else{
			return R.error("部分作业结束失败，作业名称为："+failJob);
		}
	}

	
}
