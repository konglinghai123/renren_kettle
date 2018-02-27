package io.renren.modules.kettle.sys.job.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * VIEW
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:52:22
 */
public class VJobEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//
	private Long idJob;
	//
	private Integer idDirectory;
	//
	private Long timing;
	//
	private String name;
	//
	private String description;
	//
	private String extendedDescription;
	//
	private String jobVersion;
	//
	private Integer jobStatus;
	//
	private Integer idDatabaseLog;
	//
	private String tableNameLog;
	//
	private String createdUser;
	//
	private Date createdDate;
	//
	private String modifiedUser;
	//
	private Date modifiedDate;
	//
	private String useBatchId;
	//
	private String passBatchId;
	//
	private String useLogfield;
	//
	private String sharedFile;
	//运行状态
	private String runStatus;
	//最后更新时间
	private String lastUpdate;
	//自动重启次数
	private String autoRestartNum;
	//资源库代码
	private String repositoryCode;
	//运行在
	private String projectCode;

	private String directoryStr;

	/**
	 * 设置：
	 */
	public void setIdJob(Long idJob) {
		this.idJob = idJob;
	}
	/**
	 * 获取：
	 */
	public Long getIdJob() {
		return idJob;
	}
	/**
	 * 设置：
	 */
	public void setIdDirectory(Integer idDirectory) {
		this.idDirectory = idDirectory;
	}
	/**
	 * 获取：
	 */
	public Integer getIdDirectory() {
		return idDirectory;
	}
	/**
	 * 设置：
	 */
	public void setTiming(Long timing) {
		this.timing = timing;
	}
	/**
	 * 获取：
	 */
	public Long getTiming() {
		return timing;
	}
	/**
	 * 设置：
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * 获取：
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * 设置：
	 */
	public void setExtendedDescription(String extendedDescription) {
		this.extendedDescription = extendedDescription;
	}
	/**
	 * 获取：
	 */
	public String getExtendedDescription() {
		return extendedDescription;
	}
	/**
	 * 设置：
	 */
	public void setJobVersion(String jobVersion) {
		this.jobVersion = jobVersion;
	}
	/**
	 * 获取：
	 */
	public String getJobVersion() {
		return jobVersion;
	}
	/**
	 * 设置：
	 */
	public void setJobStatus(Integer jobStatus) {
		this.jobStatus = jobStatus;
	}
	/**
	 * 获取：
	 */
	public Integer getJobStatus() {
		return jobStatus;
	}
	/**
	 * 设置：
	 */
	public void setIdDatabaseLog(Integer idDatabaseLog) {
		this.idDatabaseLog = idDatabaseLog;
	}
	/**
	 * 获取：
	 */
	public Integer getIdDatabaseLog() {
		return idDatabaseLog;
	}
	/**
	 * 设置：
	 */
	public void setTableNameLog(String tableNameLog) {
		this.tableNameLog = tableNameLog;
	}
	/**
	 * 获取：
	 */
	public String getTableNameLog() {
		return tableNameLog;
	}
	/**
	 * 设置：
	 */
	public void setCreatedUser(String createdUser) {
		this.createdUser = createdUser;
	}
	/**
	 * 获取：
	 */
	public String getCreatedUser() {
		return createdUser;
	}
	/**
	 * 设置：
	 */
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	/**
	 * 获取：
	 */
	public Date getCreatedDate() {
		return createdDate;
	}
	/**
	 * 设置：
	 */
	public void setModifiedUser(String modifiedUser) {
		this.modifiedUser = modifiedUser;
	}
	/**
	 * 获取：
	 */
	public String getModifiedUser() {
		return modifiedUser;
	}
	/**
	 * 设置：
	 */
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	/**
	 * 获取：
	 */
	public Date getModifiedDate() {
		return modifiedDate;
	}
	/**
	 * 设置：
	 */
	public void setUseBatchId(String useBatchId) {
		this.useBatchId = useBatchId;
	}
	/**
	 * 获取：
	 */
	public String getUseBatchId() {
		return useBatchId;
	}
	/**
	 * 设置：
	 */
	public void setPassBatchId(String passBatchId) {
		this.passBatchId = passBatchId;
	}
	/**
	 * 获取：
	 */
	public String getPassBatchId() {
		return passBatchId;
	}
	/**
	 * 设置：
	 */
	public void setUseLogfield(String useLogfield) {
		this.useLogfield = useLogfield;
	}
	/**
	 * 获取：
	 */
	public String getUseLogfield() {
		return useLogfield;
	}
	/**
	 * 设置：
	 */
	public void setSharedFile(String sharedFile) {
		this.sharedFile = sharedFile;
	}
	/**
	 * 获取：
	 */
	public String getSharedFile() {
		return sharedFile;
	}
	/**
	 * 设置：运行状态
	 */
	public void setRunStatus(String runStatus) {
		this.runStatus = runStatus;
	}
	/**
	 * 获取：运行状态
	 */
	public String getRunStatus() {
		return runStatus;
	}
	/**
	 * 设置：最后更新时间
	 */
	public void setLastUpdate(String lastUpdate) {
		this.lastUpdate = lastUpdate;
	}
	/**
	 * 获取：最后更新时间
	 */
	public String getLastUpdate() {
		return lastUpdate;
	}
	/**
	 * 设置：自动重启次数
	 */
	public void setAutoRestartNum(String autoRestartNum) {
		this.autoRestartNum = autoRestartNum;
	}
	/**
	 * 获取：自动重启次数
	 */
	public String getAutoRestartNum() {
		return autoRestartNum;
	}
	/**
	 * 设置：资源库代码
	 */
	public void setRepositoryCode(String repositoryCode) {
		this.repositoryCode = repositoryCode;
	}
	/**
	 * 获取：资源库代码
	 */
	public String getRepositoryCode() {
		return repositoryCode;
	}
	/**
	 * 设置：运行在
	 */
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}
	/**
	 * 获取：运行在
	 */
	public String getProjectCode() {
		return projectCode;
	}

	public String getDirectoryStr() {
		return directoryStr;
	}

	public void setDirectoryStr(String directoryStr) {
		this.directoryStr = directoryStr;
	}
}
