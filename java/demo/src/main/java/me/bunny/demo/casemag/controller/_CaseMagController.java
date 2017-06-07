package me.bunny.demo.casemag.controller;

import java.util.List;

import me.bunny.demo.casemag.vo.CaseAddVO;
import me.bunny.web.model.SimplePageRequestVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import me.bunny._b._core.APP;
import me.bunny.kernel._c.model.InvokeResult;
import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.kernel.mock.Mock;
import me.bunny.demo.casemag.service.CaseMagService;
import me.bunny.demo.casemag.vo.CaseCriteriaVO;
import me.bunny.demo.casemag.vo.CaseRecordVO;
import me.bunny.demo.casemag.vo.CaseUpdateVO;
import me.bunny.demo.casemag.vo.UserCategoryRecordVO;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import springfox.documentation.annotations.ApiIgnore;

@Controller
@RequestMapping("/m/casemag")
@APP
public class _CaseMagController {
	
	
	@Autowired
	private CaseMagService caseMagService;
	
	
	@RequestMapping(path = "/getMyCasesPage", method = RequestMethod.GET)
	@ResponseBody
	@APP
	@Mock(type=CaseRecordVO[].class,pageable=true)
	@ApiImplicitParams({
         @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "String")
	})
	public InvokeResult getMyCasesPage(@ApiIgnore CaseCriteriaVO caseCriteriaVO , SimplePageRequestVO simplePageRequest) {
		JPage<CaseRecordVO> page=caseMagService.getCases(caseCriteriaVO, 
				new SimplePageRequest(simplePageRequest.getPage(), simplePageRequest.getSize())
				);
		return InvokeResult.success(page);
	}
	
	@RequestMapping(path = "/getCasesPage", method = RequestMethod.GET)
	@ResponseBody
	@APP
	@Mock(type=CaseRecordVO[].class,pageable=true)
	public InvokeResult getCasesPage(CaseCriteriaVO caseCriteriaVO , SimplePageRequestVO simplePageRequest) {
		JPage<CaseRecordVO> page=caseMagService.getCases(caseCriteriaVO, 
				new SimplePageRequest(simplePageRequest.getPage(), simplePageRequest.getSize())
				);
		return InvokeResult.success(page);
	}
	
	@RequestMapping(path = "/getCaseById", method = RequestMethod.GET)
	@ResponseBody
	@APP
	@Mock(type=CaseRecordVO.class)
	public InvokeResult getCaseById(String caseId) {
		CaseRecordVO caseRecordVO=caseMagService.getCaseById(caseId);
		return InvokeResult.success(caseRecordVO);
	}
	
	
	@RequestMapping(path = "/saveCase", method = RequestMethod.POST)
	@ResponseBody
	@APP
	@Mock(type=Boolean.class)
	public InvokeResult saveCase(CaseAddVO caseAddVO ) {
		String caseId=caseMagService.saveCase(caseAddVO);
		return InvokeResult.success(caseId);
	}
	
	@RequestMapping(path = "/updateCase", method = RequestMethod.POST)
	@ResponseBody
	@APP
	@Mock(type=Boolean.class)
	public InvokeResult updateCase(CaseUpdateVO caseUpdateVO ) {
		caseMagService.updateCase(caseUpdateVO);
		return InvokeResult.success(true);
	}
	
	@RequestMapping(path = "/deleteCase", method = RequestMethod.POST)
	@ResponseBody
	@APP
	@Mock(type=Boolean.class)
	public InvokeResult deleteCase(String caseId ) {
		caseMagService.deleteCaseById(caseId);
		return InvokeResult.success(true);
	}
	
	@RequestMapping(path = "/getCategoryOnUser", method = RequestMethod.GET)
	@ResponseBody
	@Mock(type=UserCategoryRecordVO[].class)
	public InvokeResult getCategoryOnUser(String userId) {
		List<UserCategoryRecordVO> userCategoryRecordVOs=caseMagService.getCategoryOnUser(userId);
		return InvokeResult.success(userCategoryRecordVOs);
	}
	
	@RequestMapping(path = "/getNoCategoryOnUser", method = RequestMethod.GET)
	@ResponseBody
	@Mock(type=UserCategoryRecordVO[].class)
	public InvokeResult getNoCategoryOnUser(String userId) {
		List<UserCategoryRecordVO> userCategoryRecordVOs=caseMagService.getNoCategoryOnUser(userId);
		return InvokeResult.success(userCategoryRecordVOs);
	}
	
	
	@RequestMapping(path = "/subsribeCategory", method = RequestMethod.POST)
	@ResponseBody
	@Mock(type=Boolean.class)
	public InvokeResult subsribeCategory(String userId,
			String categoryIds) {
		caseMagService.subsribeCategory(userId,categoryIds.split(","));
		return InvokeResult.success(true);
	}
	
	@RequestMapping(path = "/subsribeCategoryView", method = RequestMethod.POST)
	@ResponseBody
	@Mock(type=Boolean.class)
	public InvokeResult subsribeCategoryView(String userId,
			String categoryIds) {
		caseMagService.subsribeCategoryView(userId,categoryIds.split(","));
		return InvokeResult.success(true);
	}
	
	@RequestMapping(path = "/unsubsribeCategory", method = RequestMethod.POST)
	@ResponseBody
	@Mock(type=Boolean.class)
	public InvokeResult unsubsribeCategory(String userId,
			String categoryIds) {
		caseMagService.unsubsribeCategory(userId,categoryIds.split(","));
		return InvokeResult.success(true);
	}
	
}
