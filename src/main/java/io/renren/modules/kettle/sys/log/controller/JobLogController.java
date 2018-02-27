package io.renren.modules.kettle.sys.log.controller;

import java.util.List;
import java.util.Map;

import io.renren.modules.kettle.sys.log.entity.JobLogEntity;
import io.renren.modules.kettle.sys.log.service.JobLogService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;
import io.renren.common.utils.R;




/**
 * 作业日志
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:52:11
 */
@RestController
@RequestMapping("/joblog")
public class JobLogController {
	@Autowired
	private JobLogService jobLogService;
	
	/**
	 * 列表
	 */
	@RequestMapping("/list")
	public R list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);

		List<JobLogEntity> jobLogList = jobLogService.queryList(query);
		int total = jobLogService.queryTotal(query);
		
		PageUtils pageUtil = new PageUtils(jobLogList, total, query.getLimit(), query.getPage());
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@RequestMapping("/info/{oid}")
	public R info(@PathVariable("oid") String oid){
		JobLogEntity jobLog = jobLogService.queryObject(oid);
		
		return R.ok().put("jobLog", jobLog);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping("/save")
	public R save(@RequestBody JobLogEntity jobLog){
		jobLogService.save(jobLog);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("/update")
	public R update(@RequestBody JobLogEntity jobLog){
		jobLogService.update(jobLog);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	public R delete(@RequestBody String[] oids){
		jobLogService.deleteBatch(oids);
		
		return R.ok();
	}
	
}
