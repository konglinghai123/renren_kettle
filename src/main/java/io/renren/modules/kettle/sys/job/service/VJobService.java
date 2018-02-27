package io.renren.modules.kettle.sys.job.service;

import io.renren.modules.kettle.sys.job.entity.VJobEntity;

import java.util.List;
import java.util.Map;

/**
 * VIEW
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:52:22
 */
public interface VJobService {
	
	VJobEntity queryObject(Long idJob);
	
	List<VJobEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(VJobEntity vJob);
	
	void update(VJobEntity vJob);
	
	void delete(Long idJob);
	
	void deleteBatch(Long[] idJobs);
}
