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
@Table(name = "t_user_casecategory")
public class UserCategoryRef extends AbstractEntity {

	/**
	 *  USER ID
	 */
	@Column(name = "user_id")
	private String userId;

	
	/**
	 * CASE CATEGORY ID
	 */
	@Column(name = "case_category_id")
	private String caseCategoryId;


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getCaseCategoryId() {
		return caseCategoryId;
	}


	public void setCaseCategoryId(String caseCategoryId) {
		this.caseCategoryId = caseCategoryId;
	}
	
	
	
	
}
