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
@Table(name = "t_case_label_ref")
public class CaseLabelRef extends AbstractEntity {

	/**
	 *  CASE ID
	 */
	@Column(name = "case_id")
	private String caseId;

	
	/**
	 * CASE LABEL ID
	 */
	@Column(name = "case_label_id")
	private String caseLabelId;


	public String getCaseId() {
		return caseId;
	}


	public void setCaseId(String caseId) {
		this.caseId = caseId;
	}


	public String getCaseLabelId() {
		return caseLabelId;
	}


	public void setCaseLabelId(String caseLabelId) {
		this.caseLabelId = caseLabelId;
	}
	
}
