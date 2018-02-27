package io.renren.modules.kettle.sys.job.dao;


import io.renren.modules.kettle.sys.job.entity.VJobEntity;
import io.renren.modules.sys.dao.BaseDao;
import org.apache.ibatis.annotations.Mapper;

/**
 * VIEW
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:52:22
 */
@Mapper
public interface VJobDao extends BaseDao<VJobEntity> {
	
}
