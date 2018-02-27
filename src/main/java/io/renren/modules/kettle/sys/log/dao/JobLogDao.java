package io.renren.modules.kettle.sys.log.dao;


import io.renren.modules.kettle.sys.log.entity.JobLogEntity;
import io.renren.modules.sys.dao.BaseDao;
import org.apache.ibatis.annotations.Mapper;

/**
 * 作业日志
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:52:11
 */
@Mapper
public interface JobLogDao extends BaseDao<JobLogEntity> {
	
}
