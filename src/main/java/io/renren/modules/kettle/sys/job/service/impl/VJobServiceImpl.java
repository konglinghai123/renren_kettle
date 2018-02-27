package io.renren.modules.kettle.sys.job.service.impl;

import io.renren.datasources.DataSourceNames;
import io.renren.datasources.annotation.DataSource;
import io.renren.modules.kettle.sys.job.dao.VJobDao;
import io.renren.modules.kettle.sys.job.entity.VJobEntity;
import io.renren.modules.kettle.sys.job.service.VJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;




@Service("vJobService")
public class VJobServiceImpl implements VJobService {
	@Autowired
	private VJobDao vJobDao;
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public VJobEntity queryObject(Long idJob){
		return vJobDao.queryObject(idJob);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public List<VJobEntity> queryList(Map<String, Object> map){
		return vJobDao.queryList(map);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public int queryTotal(Map<String, Object> map){
		return vJobDao.queryTotal(map);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void save(VJobEntity vJob){
		vJobDao.save(vJob);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void update(VJobEntity vJob){
		vJobDao.update(vJob);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void delete(Long idJob){
		vJobDao.delete(idJob);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void deleteBatch(Long[] idJobs){
		vJobDao.deleteBatch(idJobs);
	}
	
}
