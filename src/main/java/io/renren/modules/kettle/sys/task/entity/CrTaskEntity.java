package io.renren.modules.kettle.sys.task.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * km作业定时任务表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-01-20 13:51:19
 */
public class CrTaskEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//
	private Integer id;
	//状态：0=停止，1=启动
	private Integer state;
	//名称
	private String name;
	//表达式
	private String exp;
	//实现类
	private String javaClass;
	//说明
	private String info;
	//对象主键
	private String oid;
	//对象代码
	private String ocode;
	//对象名称
	private String oname;
	//对象描述
	private String odescribe;
	//对象排序
	private Integer oorder;
	//对象简拼
	private String simpleSpell;
	//对象全拼
	private String fullSpell;
	//创建时间
	private String createDate;
	//更新时间
	private String updateDate;
	//扩展信息
	private String expand;
	//是否禁用
	private String isDisable;
	//JSON格式配置
	private String configInfo;

	/**
	 * 设置：
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：状态：0=停止，1=启动
	 */
	public void setState(Integer state) {
		this.state = state;
	}
	/**
	 * 获取：状态：0=停止，1=启动
	 */
	public Integer getState() {
		return state;
	}
	/**
	 * 设置：名称
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：名称
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：表达式
	 */
	public void setExp(String exp) {
		this.exp = exp;
	}
	/**
	 * 获取：表达式
	 */
	public String getExp() {
		return exp;
	}
	/**
	 * 设置：实现类
	 */
	public void setJavaClass(String javaClass) {
		this.javaClass = javaClass;
	}
	/**
	 * 获取：实现类
	 */
	public String getJavaClass() {
		return javaClass;
	}
	/**
	 * 设置：说明
	 */
	public void setInfo(String info) {
		this.info = info;
	}
	/**
	 * 获取：说明
	 */
	public String getInfo() {
		return info;
	}
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
	public void setOorder(Integer oorder) {
		this.oorder = oorder;
	}
	/**
	 * 获取：对象排序
	 */
	public Integer getOorder() {
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
	 * 设置：JSON格式配置
	 */
	public void setConfigInfo(String configInfo) {
		this.configInfo = configInfo;
	}
	/**
	 * 获取：JSON格式配置
	 */
	public String getConfigInfo() {
		return configInfo;
	}
}
