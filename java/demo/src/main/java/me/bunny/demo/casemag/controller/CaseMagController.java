package me.bunny.demo.casemag.controller;

import me.bunny.kernel._c.model.InvokeResult;
import me.bunny.kernel._c.model.JPage;
import me.bunny.demo.casemag.service.CaseMagService;
import me.bunny.demo.casemag.vo.CaseAddVO;
import me.bunny.demo.casemag.vo.CaseCriteriaVO;
import me.bunny.demo.casemag.vo.CaseRecordVO;
import me.bunny.web.model.SimplePageRequestVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.kernel.mock.Mock;
import me.bunny.demo.casemag.vo.CaseUpdateVO;

@Controller
@RequestMapping("/casemag")
public class CaseMagController {
	
	@Autowired
	private CaseMagService caseMagService;
	
	
	
	@RequestMapping(path = "/getCasesPage", method = RequestMethod.GET)
	@ResponseBody
	@Mock(type=CaseRecordVO[].class,pageable=true)
	public InvokeResult getCasesPage(CaseCriteriaVO caseCriteriaVO , SimplePageRequestVO simplePageRequest) {
		JPage<CaseRecordVO> page = caseMagService.getCases(caseCriteriaVO,
				new SimplePageRequest(simplePageRequest.getPage(), simplePageRequest.getSize())
				);
		return InvokeResult.success(page);
	}
	
	@RequestMapping(path = "/getCaseById", method = RequestMethod.GET)
	@ResponseBody
	@Mock(type=CaseRecordVO.class)
	public InvokeResult getCaseById(String id) {
		CaseRecordVO caseRecordVO=caseMagService.getCaseById(id);
		return InvokeResult.success(caseRecordVO);
	}
	
	
	@RequestMapping(path = "/saveCase", method = RequestMethod.POST)
	@ResponseBody
	@Mock(type=String.class)
	public InvokeResult saveCase(CaseAddVO caseAddVO ) {
		String caseId=caseMagService.saveCase(caseAddVO);
		return InvokeResult.success(caseId);
	}
	
	@RequestMapping(path = "/updateCase", method = RequestMethod.POST)
	@ResponseBody
	@Mock(type=Boolean.class)
	public InvokeResult updateCase(CaseUpdateVO caseUpdateVO ) {
		caseMagService.updateCase(caseUpdateVO);
		return InvokeResult.success(true);
	}
	
	@RequestMapping(path = "/deleteCase", method = RequestMethod.POST)
	@ResponseBody
	@Mock(type=Boolean.class)
	public InvokeResult deleteCase(String ids ) {
		String[] arr = ids.split(",");
		for(String id : arr){
			caseMagService.deleteCaseById(id);
		}
		return InvokeResult.success(true);
	}
	
	

	@RequestMapping(path = "/upCase", method = RequestMethod.POST)
	@ResponseBody
	@Mock(type=Boolean.class)
	public InvokeResult upCase(String id ) {
		caseMagService.upCase(id);
		return InvokeResult.success(true);
	}
	
	@RequestMapping(path = "/downCase", method = RequestMethod.POST)
	@ResponseBody
	@Mock(type=Boolean.class)
	public InvokeResult downCase(String id ) {
		caseMagService.downCase(id);
		return InvokeResult.success(true);
	}
	
}
