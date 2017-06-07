package me.bunny.demo.casemag.controller;

import java.util.List;

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

import me.bunny._b._core.APP;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.kernel.mock.Mock;
import me.bunny.demo.casemag.vo.CaseCategoryRecordVO;

/**
 * @author JIAZJ
 */
@Controller
@RequestMapping("/m/casecategory")
@APP
public class _CaseCategoryController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());

	@Autowired
	private CaseCategoryService caseCategoryService;
	
	@ResponseBody
	@RequestMapping(path="/getCaseCategoryById",method=RequestMethod.GET)
	@Mock(type=CaseCategoryRecordVO.class)
	public InvokeResult getCaseCategoryById(String id) throws Exception {
		return InvokeResult.success(caseCategoryService.getCaseCategoryById(id));
	}

	@ResponseBody
	@RequestMapping(path="/getCaseCategorysByPage",method=RequestMethod.GET)
	@Mock(type=CaseCategoryRecordVO[].class)
	public InvokeResult getCaseCategorysByPage(CaseCategoryInfo caseCategoryInfo,
			SimplePageRequestVO simplePageRequestVO) throws Exception {
		JPage<CaseCategoryRecordVO> page = caseCategoryService.getCaseCategorys(caseCategoryInfo,
				new SimplePageRequest(simplePageRequestVO.getPage(), simplePageRequestVO.getSize())
				);
		return InvokeResult.success(page);
	}

	
	@ResponseBody
	@RequestMapping(path="/getCaseCategorys",method=RequestMethod.GET)
	@Mock(type=CaseCategoryRecordVO[].class)
	public InvokeResult getCaseCategorys(CaseCategoryInfo caseCategoryInfo) throws Exception {
		List<CaseCategoryRecordVO> caseCategoryRecordVOs = 
				caseCategoryService.getCaseCategorys(caseCategoryInfo);
		return InvokeResult.success(caseCategoryRecordVOs);
	}
	
	
}
