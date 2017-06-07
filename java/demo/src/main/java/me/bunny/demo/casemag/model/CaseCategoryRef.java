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
@Table(name = "t_case_category_ref")
public class CaseCategoryRef extends AbstractEntity {

	/**
	 *  CASE ID
	 */
	@Column(name = "case_id")
	private String caseId;

	
	/**
	 * CASE CATEGORY ID
	 */
	@Column(name = "case_category_id")
	private String caseCategoryId;


	public String getCaseId() {
		return caseId;
	}


	public void setCaseId(String caseId) {
		this.caseId = caseId;
	}


	public String getCaseCategoryId() {
		return caseCategoryId;
	}


	public void setCaseCategoryId(String caseCategoryId) {
		this.caseCategoryId = caseCategoryId;
	}
	
}
