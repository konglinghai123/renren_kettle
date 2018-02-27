package io.renren.modules.kettle.sys.log.service.impl;

import io.renren.datasources.DataSourceNames;
import io.renren.datasources.annotation.DataSource;
import io.renren.modules.kettle.sys.log.dao.JobLogDao;
import io.renren.modules.kettle.sys.log.entity.JobLogEntity;
import io.renren.modules.kettle.sys.log.service.JobLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;





@Service("jobLogService")
public class JobLogServiceImpl implements JobLogService {
	@Autowired
	private JobLogDao jobLogDao;
	
	@Override
	public JobLogEntity queryObject(String oid){
		return jobLogDao.queryObject(oid);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public List<JobLogEntity> queryList(Map<String, Object> map){
		return jobLogDao.queryList(map);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public int queryTotal(Map<String, Object> map){
		return jobLogDao.queryTotal(map);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void save(JobLogEntity jobLog){
		jobLogDao.save(jobLog);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void update(JobLogEntity jobLog){
		jobLogDao.update(jobLog);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void delete(String oid){
		jobLogDao.delete(oid);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void deleteBatch(String[] oids){
		jobLogDao.deleteBatch(oids);
	}
	
}
