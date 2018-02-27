package io.renren.modules.kettle.sys.task.controller;

import java.util.List;
import java.util.Map;

import io.renren.modules.kettle.sys.task.entity.CrTaskEntity;
import io.renren.modules.kettle.sys.task.service.CrTaskService;
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
 * km作业定时任务表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:51:19
 */
@RestController
@RequestMapping("/crtask")
public class CrTaskController {
	@Autowired
	private CrTaskService crTaskService;
	
	/**
	 * 列表
	 */
	@RequestMapping("/list")
	public R list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);

		List<CrTaskEntity> crTaskList = crTaskService.queryList(query);
		int total = crTaskService.queryTotal(query);
		
		PageUtils pageUtil = new PageUtils(crTaskList, total, query.getLimit(), query.getPage());
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@RequestMapping("/info/{id}")
	public R info(@PathVariable("id") Integer id){
		CrTaskEntity crTask = crTaskService.queryObject(id);
		
		return R.ok().put("crTask", crTask);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping("/save")
	public R save(@RequestBody CrTaskEntity crTask){
		crTaskService.save(crTask);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("/update")
	public R update(@RequestBody CrTaskEntity crTask){
		crTaskService.update(crTask);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	public R delete(@RequestBody Integer[] ids){
		crTaskService.deleteBatch(ids);
		
		return R.ok();
	}
	
}
