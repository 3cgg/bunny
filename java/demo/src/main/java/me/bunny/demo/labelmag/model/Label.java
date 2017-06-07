package me.bunny.demo.labelmag.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import me.bunny.kernel._c.model.AbstractEntity;


@Entity
@Table(name = "t_label")
public class Label extends AbstractEntity {

	// 用于记录标签的code
	@Column(name = "_code")
	private String code;

	// 用于记录标签的名字
	@Column(name = "_name")
	private String name;

	// 用于记录标签的描述
	@Column(name = "_desc")
	private String desc;

	// 用于记录标签的状态
	@Column(name = "_enable")
	private String enable;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getEnable() {
		return enable;
	}

	public void setEnable(String enable) {
		this.enable = enable;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
