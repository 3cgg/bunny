package me.bunny.demo.casemag.controller;

import me.bunny.kernel._c.model.InvokeResult;
import me.bunny.kernel._c.model.JPage;
import me.bunny.demo.casemag.service.CaseCategoryService;
import me.bunny.demo.casemag.vo.CaseCategoryInfo;
import me.bunny.web.model.SimplePageRequestVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.demo.casemag.vo.CaseCategoryRecordVO;

/**
 * @author JIAZJ
 */
@Controller
@RequestMapping("/casecategory")
public class CaseCategoryController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());

	@Autowired
	private CaseCategoryService caseCategoryService;
	
	@ResponseBody
	@RequestMapping(path="/saveCaseCategory",method=RequestMethod.POST)
	public InvokeResult saveCaseCategory(CaseCategoryInfo caseCategoryInfo) throws Exception {
		String id=caseCategoryService.saveCaseCategory(caseCategoryInfo);
		return InvokeResult.success(id);
	}

	@ResponseBody
	@RequestMapping(path="/updateCaseCategory",method=RequestMethod.POST)
	public InvokeResult updateCaseCategory(CaseCategoryInfo caseCategoryInfo) throws Exception {
		caseCategoryService.updateCaseCategory(caseCategoryInfo);
		return InvokeResult.success(true);
	}

	@ResponseBody
	@RequestMapping(path="/getCaseCategoryById",method=RequestMethod.GET)
	public InvokeResult getCaseCategoryById(String id) throws Exception {
		return InvokeResult.success(caseCategoryService.getCaseCategoryById(id));
	}

	@ResponseBody
	@RequestMapping(path="/deleteCaseCategoryById",method=RequestMethod.POST)
	public InvokeResult deleteCaseCategoryById(String ids) throws Exception {
		String[] arr = ids.split(",");
		caseCategoryService.deleteCaseCategorys(arr);
		return InvokeResult.success(true);
	}

	@ResponseBody
	@RequestMapping(path="/getCaseCategorysByPage",method=RequestMethod.GET)
	public InvokeResult getCaseCategorysByPage(CaseCategoryInfo caseCategoryInfo,
			SimplePageRequestVO simplePageRequestVO) throws Exception {
		JPage<CaseCategoryRecordVO> page = caseCategoryService.getCaseCategorys(caseCategoryInfo,
				new SimplePageRequest(simplePageRequestVO.getPage(), simplePageRequestVO.getSize())
				);
		return InvokeResult.success(page);
	}

}
