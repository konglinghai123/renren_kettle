package io.renren.modules.kettle.sys.log.entity;

import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;


/**
 * 作业日志
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:52:11
 */
public class JobLogEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//对象主键
	private String oid;
	//对象代码
	private String ocode;
	//对象名称
	private String oname;
	//对象描述
	private String odescribe;
	//对象排序
	private BigDecimal oorder;
	//对象简拼
	private String simpleSpell;
	//对象全拼
	private String fullSpell;
	//创建时间
	private String createDate;
	//更新时间
	private String updateDate;
	//创建人
	private String createUser;
	//更新人
	private String updateUser;
	//扩展信息
	private String expand;
	//是否禁用
	private String isDisable;
	//备用1
	private String flag1;
	//备用2
	private String flag2;
	//作业ID
	private BigDecimal idJob;
	//作业名称
	private String jobName;
	//开始时间
	private String startDate;
	//结束时间
	private String endDate;
	//运行结果
	private String result;
	//日志文件
	private String logFile;

	/**
	 * 设置：对象主键
	 */
	public void setOid(String oid) {
		this.oid = oid;
	}
	/**
	 * 获取：对象主键
	 */
	public String getOid() {
		return oid;
	}
	/**
	 * 设置：对象代码
	 */
	public void setOcode(String ocode) {
		this.ocode = ocode;
	}
	/**
	 * 获取：对象代码
	 */
	public String getOcode() {
		return ocode;
	}
	/**
	 * 设置：对象名称
	 */
	public void setOname(String oname) {
		this.oname = oname;
	}
	/**
	 * 获取：对象名称
	 */
	public String getOname() {
		return oname;
	}
	/**
	 * 设置：对象描述
	 */
	public void setOdescribe(String odescribe) {
		this.odescribe = odescribe;
	}
	/**
	 * 获取：对象描述
	 */
	public String getOdescribe() {
		return odescribe;
	}
	/**
	 * 设置：对象排序
	 */
	public void setOorder(BigDecimal oorder) {
		this.oorder = oorder;
	}
	/**
	 * 获取：对象排序
	 */
	public BigDecimal getOorder() {
		return oorder;
	}
	/**
	 * 设置：对象简拼
	 */
	public void setSimpleSpell(String simpleSpell) {
		this.simpleSpell = simpleSpell;
	}
	/**
	 * 获取：对象简拼
	 */
	public String getSimpleSpell() {
		return simpleSpell;
	}
	/**
	 * 设置：对象全拼
	 */
	public void setFullSpell(String fullSpell) {
		this.fullSpell = fullSpell;
	}
	/**
	 * 获取：对象全拼
	 */
	public String getFullSpell() {
		return fullSpell;
	}
	/**
	 * 设置：创建时间
	 */
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	/**
	 * 获取：创建时间
	 */
	public String getCreateDate() {
		return createDate;
	}
	/**
	 * 设置：更新时间
	 */
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	/**
	 * 获取：更新时间
	 */
	public String getUpdateDate() {
		return updateDate;
	}
	/**
	 * 设置：创建人
	 */
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	/**
	 * 获取：创建人
	 */
	public String getCreateUser() {
		return createUser;
	}
	/**
	 * 设置：更新人
	 */
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	/**
	 * 获取：更新人
	 */
	public String getUpdateUser() {
		return updateUser;
	}
	/**
	 * 设置：扩展信息
	 */
	public void setExpand(String expand) {
		this.expand = expand;
	}
	/**
	 * 获取：扩展信息
	 */
	public String getExpand() {
		return expand;
	}
	/**
	 * 设置：是否禁用
	 */
	public void setIsDisable(String isDisable) {
		this.isDisable = isDisable;
	}
	/**
	 * 获取：是否禁用
	 */
	public String getIsDisable() {
		return isDisable;
	}
	/**
	 * 设置：备用1
	 */
	public void setFlag1(String flag1) {
		this.flag1 = flag1;
	}
	/**
	 * 获取：备用1
	 */
	public String getFlag1() {
		return flag1;
	}
	/**
	 * 设置：备用2
	 */
	public void setFlag2(String flag2) {
		this.flag2 = flag2;
	}
	/**
	 * 获取：备用2
	 */
	public String getFlag2() {
		return flag2;
	}
	/**
	 * 设置：作业ID
	 */
	public void setIdJob(BigDecimal idJob) {
		this.idJob = idJob;
	}
	/**
	 * 获取：作业ID
	 */
	public BigDecimal getIdJob() {
		return idJob;
	}
	/**
	 * 设置：作业名称
	 */
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	/**
	 * 获取：作业名称
	 */
	public String getJobName() {
		return jobName;
	}
	/**
	 * 设置：开始时间
	 */
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	/**
	 * 获取：开始时间
	 */
	public String getStartDate() {
		return startDate;
	}
	/**
	 * 设置：结束时间
	 */
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	/**
	 * 获取：结束时间
	 */
	public String getEndDate() {
		return endDate;
	}
	/**
	 * 设置：运行结果
	 */
	public void setResult(String result) {
		this.result = result;
	}
	/**
	 * 获取：运行结果
	 */
	public String getResult() {
		return result;
	}
	/**
	 * 设置：日志文件
	 */
	public void setLogFile(String logFile) {
		this.logFile = logFile;
	}
	/**
	 * 获取：日志文件
	 */
	public String getLogFile() {
		return logFile;
	}
}
