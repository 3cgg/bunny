package me.bunny.demo.casemag.vo;

import me.bunny.demo.casemag.model.CaseCategory;

import io.swagger.annotations.ApiModelProperty;

public class CaseCategoryInfo extends CaseCategory{

	@ApiModelProperty(value="状态名")
	private String enableName;
	
	@ApiModelProperty(value="是否默认名称")
	private String defautName;

	public String getEnableName() {
		return enableName;
	}

	public void setEnableName(String enableName) {
		this.enableName = enableName;
	}

	public String getDefautName() {
		return defautName;
	}

	public void setDefautName(String defautName) {
		this.defautName = defautName;
	}
	
	@ApiModelProperty(value="是否默认CODE（Y/N）")
	@Override
	public String getDefaut() {
		return super.getDefaut();
	}
	
}
