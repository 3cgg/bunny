package me.bunny.demo.casemag.vo;

import java.util.List;

import me.bunny._b._core.attachment.vo.AttachmentInfo;
import me.bunny.kernel._c.model.JModel;
import me.bunny.demo.casemag.model.Case;

import io.swagger.annotations.ApiModelProperty;

public class CaseInfo extends Case implements JModel {
	
	/**
	 * 案例分类列表
	 */
	@ApiModelProperty(value="案例分类列表")
	private List<CaseCategoryInfo> caseCategoryInfos;
	
	
	/**
	 * 案例标签列表
	 */
	@ApiModelProperty(value="案例标签列表")
	private List<CaseLabelInfo> caseLabelInfos;
	
	
	/**
	 * 标题
	 */
	@ApiModelProperty(value="标题")
	public String getTitle() {
		return super.getTitle();
	}
	
	/**
	 * 内容
	 */
	@Override
	@ApiModelProperty(value="内容")
	public String getContent() {
		return super.getContent();
	}
	
	/**
	 * 图片IDs
	 */
	@ApiModelProperty(value="图片Urls")
	private String imageUrls;


	@ApiModelProperty(value="图片")
	private List<AttachmentInfo> images;
	
	/**
	 * 政策分类
	 */
	@ApiModelProperty(value="分类ID" , example="A,B,C...")
	private String categoryIds;
	
	/**
	 * 政策分类名
	 */
	@ApiModelProperty(value="分类名",example="A,B,C...")
	private String categoryNames;
	
	/**
	 * 标签IDs
	 */
	@ApiModelProperty(value="标签IDs",example="A,B,C...")
	private String labelIds;
	
	/**
	 * 标签名
	 */
	@ApiModelProperty(value="标签名",example="A,B,C...")
	private String labelNames;
	
	/**
	 * 上架下架名称
	 */
	@ApiModelProperty(value="上架下架名称")
	private String upDownName;
	
	/**
	 * 上架下架Code
	 */
	@ApiModelProperty(value="上架下架Code")
	@Override
	public String getUpDown() {
		return super.getUpDown();
	}
	/**
	 * 审核CODE
	 */
	@ApiModelProperty(value="审核CODE")
	@Override
	public String getAuthCode() {
		return super.getAuthCode();
	}
	
	/**
	 * 审核NAME
	 */
	@ApiModelProperty(value="审核NAME")
	private String authCodeName;
	
	/**
	 * 读CODE
	 */
	@ApiModelProperty(value=" 读CODE")
	@Override
	public String getReadCode() {
		return super.getReadCode();
	}
	
	/**
	 * 读NAME
	 */
	@ApiModelProperty(value="读NAME")
	private String readName;
	
	/**
	 * 是否推至置顶
	 */
	@ApiModelProperty(value="是否推至置顶")
	private String push;
	
	public String getPush() {
		return push;
	}

	public void setPush(String push) {
		this.push = push;
	}

	/**
	 * 顺序
	 */
	@ApiModelProperty(value="顺序")
	@Override
	public long getOrder() {
		return super.getOrder();
	}
	
	/**
	 * 发布案例的用户ID
	 */
	@ApiModelProperty(value="发布案例的用户ID")
	@Override
	public String getUserId() {
		return super.getUserId();
	}
	
	/**
	 * 发布案例的用户NAME
	 */
	@ApiModelProperty(value="发布案例的用户NAME")
	private String userName;
	
	/**
	 * 是否置顶
	 */
	@ApiModelProperty(value="是否置顶")
	@Override
	public String getTop() {
		return super.getTop();
	}
	
	/**
	 * 是否精华
	 */
	@ApiModelProperty(value="是否精华")
	@Override
	public String getEssence() {
		return super.getEssence();
	}
	

	/**
	 * 图片IDs
	 */
	@ApiModelProperty(value="图片IDs")
	public String getImageIds() {
		return super.getImageIds();
	}


	public String getImageUrls() {
		return imageUrls;
	}

	public void setImageUrls(String imageUrls) {
		this.imageUrls = imageUrls;
	}

	public String getCategoryIds() {
		return categoryIds;
	}

	public void setCategoryIds(String categoryIds) {
		this.categoryIds = categoryIds;
	}

	public String getCategoryNames() {
		return categoryNames;
	}

	public void setCategoryNames(String categoryNames) {
		this.categoryNames = categoryNames;
	}

	public String getLabelIds() {
		return labelIds;
	}

	public void setLabelIds(String labelIds) {
		this.labelIds = labelIds;
	}

	public String getLabelNames() {
		return labelNames;
	}

	public void setLabelNames(String labelNames) {
		this.labelNames = labelNames;
	}

	public String getUpDownName() {
		return upDownName;
	}

	public void setUpDownName(String upDownName) {
		this.upDownName = upDownName;
	}

	public String getAuthCodeName() {
		return authCodeName;
	}

	public void setAuthCodeName(String authCodeName) {
		this.authCodeName = authCodeName;
	}

	public String getReadName() {
		return readName;
	}

	public void setReadName(String readName) {
		this.readName = readName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public List<CaseCategoryInfo> getCaseCategoryInfos() {
		return caseCategoryInfos;
	}

	public void setCaseCategoryInfos(List<CaseCategoryInfo> caseCategoryInfos) {
		this.caseCategoryInfos = caseCategoryInfos;
	}

	public List<CaseLabelInfo> getCaseLabelInfos() {
		return caseLabelInfos;
	}

	public void setCaseLabelInfos(List<CaseLabelInfo> caseLabelInfos) {
		this.caseLabelInfos = caseLabelInfos;
	}

//	/**
//	 * 是否关注Code
//	 */
//	@ApiModelProperty(value="是否关注Code，第一期没有")
//	private String focusCode;
//
//	/**
//	 * 是否关注Name
//	 */
//	@ApiModelProperty(value="是否关注Name")
//	private String focusName;


	public List<AttachmentInfo> getImages() {
		return images;
	}

	public void setImages(List<AttachmentInfo> images) {
		this.images = images;
	}
}
