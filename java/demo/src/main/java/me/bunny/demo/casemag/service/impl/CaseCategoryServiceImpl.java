package me.bunny.demo.casemag.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.bunny._b._core.cache.DictionaryCache;
import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.kernel._c.service.SingleEntityManager;
import me.bunny.kernel._c.service.SingleEntityManagerGetter;
import me.bunny.demo.casemag.CaseCodesTable.CaseCategoryDefault;
import me.bunny.demo.casemag.CaseCodesTable.CaseCategoryEnable;
import me.bunny.demo.casemag.model.CaseCategory;
import me.bunny.demo.casemag.service.CaseCategoryService;
import me.bunny.demo.casemag.vo.CaseCategoryInfo;
import me.bunny.demo.casemag.vo.CaseCategoryRecordVO;
import me.bunny.util.Copy;
import me.bunny.util.JStringUtils;

@Service
@Transactional
public class CaseCategoryServiceImpl implements CaseCategoryService {

	private SingleEntityManager<CaseCategory> caseCategoryEntityManager = SingleEntityManagerGetter.get()
			.getInstance(CaseCategory.class);
	

	@Autowired
	private DictionaryCache dictionaryCache;
	
	private CaseCategory forCaseCategory(CaseCategoryInfo caseCategoryInfo){
		CaseCategory caseCategory=Copy.simpleCopy(caseCategoryInfo, CaseCategory.class);
		return caseCategory;
	}
	
	
	@Override
	public String saveCaseCategory(CaseCategoryInfo caseCategoryInfo) {
		CaseCategory caseCategory=forCaseCategory(caseCategoryInfo);
		caseCategory.setEnable(CaseCategoryEnable.ENABLE);
		caseCategoryEntityManager.saveOnly(caseCategory);
		return caseCategory.getId();
	}

	@Override
	public void updateCaseCategory(CaseCategoryInfo caseCategoryInfo) {
		CaseCategory caseCategory=caseCategoryEntityManager.getById(caseCategoryInfo.getId());
		caseCategory.setName(caseCategoryInfo.getName());
		caseCategory.setOrder(caseCategoryInfo.getOrder());
		caseCategory.setEnable(caseCategoryInfo.getEnable());
		caseCategory.setDefaut(caseCategoryInfo.getDefaut());
		caseCategoryEntityManager.updateOnly(caseCategory);
	}

	@Override
	public void deleteCaseCategory(CaseCategoryInfo caseCategoryInfo) {
		deleteCaseCategoryById(caseCategoryInfo.getId());
	}

	@Override
	public void deleteCaseCategoryById(String id) {
		caseCategoryEntityManager.delete(id);
	}

	@Override
	public void deleteCaseCategorys(String[] ids) {
		for(String id : ids){
			deleteCaseCategoryById(id);
		}
	}
	
	private CaseCategoryRecordVO then(CaseCategoryRecordVO caseCategoryRecordVO){
		caseCategoryRecordVO.setEnableName(
				dictionaryCache.getDictDataName(CaseCategoryEnable.CODE,
						caseCategoryRecordVO.getEnable()));;
		caseCategoryRecordVO.setDefautName(
								dictionaryCache.getDictDataName(CaseCategoryDefault.CODE,
										caseCategoryRecordVO.getDefaut()));;
		return caseCategoryRecordVO;
	}

	@Override
	public CaseCategoryRecordVO getCaseCategoryById(String id) {
		CaseCategoryRecordVO caseCategoryRecordVO= Copy.simpleCopy(caseCategoryEntityManager.getById(id), 
				CaseCategoryRecordVO.class);
		return then(caseCategoryRecordVO);
	}

	@Override
	public JPage<CaseCategoryRecordVO> getCaseCategorys(CaseCategoryInfo caseCategoryInfo,
			SimplePageRequest simplePageRequest) {
		JPage<CaseCategoryRecordVO> page= caseCategoryEntityManager.singleEntityQuery2()
		.conditionDefault().likes("name", caseCategoryInfo.getName())
		.equals("enable", JStringUtils.isNullOrEmpty(caseCategoryInfo.getEnable())?
				null:caseCategoryInfo.getEnable())
		.ready()
		.order().asc("order").desc("modifyDate")
		.ready()
		.modelPage(simplePageRequest, CaseCategoryRecordVO.class);
		page.getContent().forEach(caseCategory->{
			then(caseCategory);
		});
		return page;
	}

	
	@Override
	public List<CaseCategoryRecordVO> getCaseCategorys(CaseCategoryInfo caseCategoryInfo) {
		List<CaseCategoryRecordVO> caseCategories=  caseCategoryEntityManager.singleEntityQuery2()
		.conditionDefault().likes("name", caseCategoryInfo.getName())
		.equals("enable", JStringUtils.isNullOrEmpty(caseCategoryInfo.getEnable())?
				null:caseCategoryInfo.getEnable())
		.equals("defaut", caseCategoryInfo.getDefaut())
		.ready()
		.order().asc("order").desc("modifyDate")
		.ready()
		.models(CaseCategoryRecordVO.class);
		caseCategories.forEach(caseCategory->{
			then(caseCategory);
		});
		return caseCategories;
	}
	
	@Override
	public boolean exists(String name) {
		return caseCategoryEntityManager.singleEntityQuery2().conditionDefault()
				.equals("name", name).ready().count()>0;
	}

}
