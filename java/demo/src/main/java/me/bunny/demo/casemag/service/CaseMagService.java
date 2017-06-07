package me.bunny.demo.casemag.service;

import java.util.List;

import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.demo.casemag.vo.*;

public interface CaseMagService {

	String saveCase(CaseAddVO caseAddVO);
	
	void updateCase(CaseUpdateVO caseUpdateVO);
	
	void deleteCaseById(String id);
	
	CaseRecordVO getCaseById(String id);
	
	JPage<CaseRecordVO> getCases(CaseCriteriaVO caseCriteriaVO, SimplePageRequest simplePageRequest);
	
	List<CaseCategoryInfo> getAllCaseCategorys(String caseId);

	List<CaseLabelInfo> getAllCaseLabels(String caseId);

	void upCase(String caseId);
	
	void downCase(String caseId);
	
	/**
	 * push the case to the top 
	 * @param caseId
	 */
	void pushCase(String caseId);
	
	
	long maxOrder();
	
	/**
	 * who subscribe the case category
	 * @param userId
	 * @param categoryIds
	 */
	void subsribeCategory(String userId,String[] categoryIds);
	
	/**
	 * who unsubscribe the case category
	 * @param userId
	 * @param categoryIds
	 */
	void unsubsribeCategory(String userId,String[] categoryIds);
	
	/**
	 * who subscribe the case category , the first the method delete all existing reference
	 * , then construct the reference again
	 * @param userId
	 * @param categoryIds
	 */
	void subsribeCategoryView(String userId,String[] categoryIds);
	
	List<UserCategoryRecordVO> getCategoryOnUser(String userId);
	
	List<UserCategoryRecordVO> getNoCategoryOnUser(String userId);
	
}
