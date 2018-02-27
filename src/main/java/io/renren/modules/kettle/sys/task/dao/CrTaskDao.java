package io.renren.modules.kettle.sys.task.dao;


import io.renren.modules.kettle.sys.task.entity.CrTaskEntity;
import io.renren.modules.sys.dao.BaseDao;
import org.apache.ibatis.annotations.Mapper;

/**
 * km作业定时任务表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:51:19
 */
@Mapper
public interface CrTaskDao extends BaseDao<CrTaskEntity> {
	
}
