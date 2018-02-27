package io.renren.modules.kettle.sys.task.service;



import io.renren.modules.kettle.sys.task.entity.CrTaskEntity;

import java.util.List;
import java.util.Map;

/**
 * km作业定时任务表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:51:19
 */
public interface CrTaskService {
	
	CrTaskEntity queryObject(Integer id);
	
	List<CrTaskEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CrTaskEntity crTask);
	
	void update(CrTaskEntity crTask);
	
	void delete(Integer id);
	
	void deleteBatch(Integer[] ids);
}
