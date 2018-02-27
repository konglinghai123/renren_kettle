package io.renren.modules.kettle.sys.log.service;



import io.renren.modules.kettle.sys.log.entity.JobLogEntity;

import java.util.List;
import java.util.Map;

/**
 * 作业日志
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:52:11
 */
public interface JobLogService {
	
	JobLogEntity queryObject(String oid);
	
	List<JobLogEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(JobLogEntity jobLog);
	
	void update(JobLogEntity jobLog);
	
	void delete(String oid);
	
	void deleteBatch(String[] oids);
}
