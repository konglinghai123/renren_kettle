package io.renren.modules.kettle.sys.task.service.impl;

import io.renren.datasources.DataSourceNames;
import io.renren.datasources.annotation.DataSource;
import io.renren.modules.kettle.sys.task.dao.CrTaskDao;
import io.renren.modules.kettle.sys.task.entity.CrTaskEntity;
import io.renren.modules.kettle.sys.task.service.CrTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;





@Service("crTaskService")
public class CrTaskServiceImpl implements CrTaskService {
	@Autowired
	private CrTaskDao crTaskDao;
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public CrTaskEntity queryObject(Integer id){
		return crTaskDao.queryObject(id);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public List<CrTaskEntity> queryList(Map<String, Object> map){
		return crTaskDao.queryList(map);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public int queryTotal(Map<String, Object> map){
		return crTaskDao.queryTotal(map);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void save(CrTaskEntity crTask){
		crTaskDao.save(crTask);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void update(CrTaskEntity crTask){
		crTaskDao.update(crTask);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void delete(Integer id){
		crTaskDao.delete(id);
	}
	
	@Override
	@DataSource(name = DataSourceNames.SECOND)
	public void deleteBatch(Integer[] ids){
		crTaskDao.deleteBatch(ids);
	}
	
}
