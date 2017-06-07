package me.bunny.demo.casemag.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import me.bunny.kernel._c.model.AbstractEntity;

import io.swagger.annotations.ApiModelProperty;

/**
 * 
 * @author JIAZJ
 *
 */
@Entity
@Table(name = "t_case")
public class Case extends AbstractEntity {

	/**
	 *  案例标题
	 */
	@Column(name = "title")
	private String title;

	/**
	 *  案例内容
	 */
	@Column(name = "content")
	private String content;

	/**
	 *  案例作者
	 */
	@Column(name = "user_id")
	private String userId;

	/**
	 *  案例排序
	 */
	@ApiModelProperty(value="顺序")
	@Column(name = "_order")
	private long order;

	/**
	 * 发布时间
	 */
	@Column(name = "release_time")
	@Temporal(value=TemporalType.TIMESTAMP)
	private Date releaseTime;

	/**
	 * 上架下架
	 */
	@Column(name = "up_down")
	private String upDown;
	
	/**
	 * 审核CODE
	 */
	@Column(name = "auth_code")
	private String authCode;
	
	/**
	 * 读CODE
	 */
	@Column(name = "read_code")
	private String readCode;
	
	/**
	 * 是否置顶
	 */
	@Column(name = "_top")
	private String top;
	
	/**
	 * 是否精华 （现在还没有这个功能）
	 */
	@Column(name = "essence")
	private String essence;
	
	/**
	 * 案例图片
	 */
	@Column(name = "image_ids")
	private String imageIds;

	public String getImageIds() {
		return imageIds;
	}

	public void setImageIds(String imageIds) {
		this.imageIds = imageIds;
	}

	public String getTop() {
		return top;
	}

	public void setTop(String top) {
		this.top = top;
	}

	public String getEssence() {
		return essence;
	}

	public void setEssence(String essence) {
		this.essence = essence;
	}

	public String getAuthCode() {
		return authCode;
	}

	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}

	public String getReadCode() {
		return readCode;
	}

	public void setReadCode(String readCode) {
		this.readCode = readCode;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public long getOrder() {
		return order;
	}

	public void setOrder(long order) {
		this.order = order;
	}

	public Date getReleaseTime() {
		return releaseTime;
	}

	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}

	public String getUpDown() {
		return upDown;
	}

	public void setUpDown(String upDown) {
		this.upDown = upDown;
	}

}
