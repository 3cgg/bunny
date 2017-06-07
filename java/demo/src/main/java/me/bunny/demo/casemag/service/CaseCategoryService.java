package me.bunny.demo.casemag.service;

import java.util.List;

import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.demo.casemag.vo.CaseCategoryInfo;
import me.bunny.demo.casemag.vo.CaseCategoryRecordVO;

public interface CaseCategoryService {

	String saveCaseCategory(CaseCategoryInfo caseCategoryInfo);
	
	void updateCaseCategory(CaseCategoryInfo caseCategoryInfo);
	
	void deleteCaseCategory(CaseCategoryInfo caseCategoryInfo);
	
	void deleteCaseCategoryById(String id);
	
	void deleteCaseCategorys(String [] ids);
	
	CaseCategoryRecordVO getCaseCategoryById(String id);
	
	JPage<CaseCategoryRecordVO> getCaseCategorys(CaseCategoryInfo caseCategoryInfo,
                                                 SimplePageRequest simplePageRequest);
	
	boolean exists(String name);
	
	List<CaseCategoryRecordVO> getCaseCategorys(CaseCategoryInfo caseCategoryInfo);
	
}
