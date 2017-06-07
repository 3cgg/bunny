package me.bunny.demo.casemag.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import me.bunny.kernel._c.model.AbstractEntity;

/**
 * 
 * @author JIAZJ
 *
 */
@Entity
@Table(name = "t_case_category")
public class CaseCategory extends AbstractEntity {

	/**
	 *  分类名
	 */
	@Column(name = "name")
	private String name;

	/**
	 *  描述
	 */
	@Column(name = "_desc")
	private String desc;
	
	/**
	 *  顺序
	 */
	@Column(name = "_order")
	private long order;
	
	/**
	 *  是否激活
	 */
	@Column(name = "enable")
	private String enable;
	
	/**
	 *  是否默认
	 */
	@Column(name = "defaut")
	private String defaut;

	public String getDefaut() {
		return defaut;
	}

	public void setDefaut(String defaut) {
		this.defaut = defaut;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getOrder() {
		return order;
	}

	public void setOrder(long order) {
		this.order = order;
	}

	public String getEnable() {
		return enable;
	}

	public void setEnable(String enable) {
		this.enable = enable;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	
}
