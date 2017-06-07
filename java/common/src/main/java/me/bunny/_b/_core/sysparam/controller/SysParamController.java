package me.bunny._b._core.sysparam.controller;

import java.util.ArrayList;
import java.util.List;

import me.bunny._b._core.sysparam.model.SysParam;
import me.bunny._b._core.sysparam.service.SysParamService;
import me.bunny._b._core.sysparam.vo.SysParamAddInVO;
import me.bunny._b._core.sysparam.vo.SysParamCriteriaInVO;
import me.bunny._b._core.sysparam.vo.SysParamDetailOutVO;
import me.bunny._b._core.sysparam.vo.SysParamRecordOutVO;
import me.bunny.kernel._c.model.InvokeResult;
import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.model.JPageUtil;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.util.Copy;
import me.bunny.web.model.SimplePageRequestVO;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import me.bunny._b._core.sysparam.vo.SysParamEditInVO;

/**
 * @author JIAZJ
 */
@Controller
@RequestMapping("/sysparam")
public class SysParamController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());

	@Autowired
	private SysParamService sysParamService;
	
	@ResponseBody
	@RequestMapping(path="/saveSysParam",method=RequestMethod.POST)
	public InvokeResult saveSysParam(SysParamAddInVO sysParamAddInVO) throws Exception {
		SysParam sysParam = Copy.simpleCopy(sysParamAddInVO, SysParam.class);
		sysParamService.saveSysParam(sysParam);
		return InvokeResult.success(sysParam.getId());
	}

	@ResponseBody
	@RequestMapping(path="/updateSysParam",method=RequestMethod.POST)
	public InvokeResult updateSysParam(SysParamEditInVO sysParamEditInVO) throws Exception {
		SysParam sysParam = Copy.simpleCopy(sysParamEditInVO, SysParam.class);
		sysParamService.updateSysParam(sysParam);
		return InvokeResult.success(sysParam.getId());
	}

	@ResponseBody
	@RequestMapping(path="/getSysParamById",method=RequestMethod.GET)
	public InvokeResult getSysParamById(String id) throws Exception {
		SysParam sysParam = sysParamService.getSysParamById(id);
		SysParamDetailOutVO sysParamDetailOutVO = null;
		if (sysParam != null) {
			sysParamDetailOutVO = Copy.simpleCopy(sysParam, SysParamDetailOutVO.class);
		}
		return InvokeResult.success(sysParamDetailOutVO);
	}

	@ResponseBody
	@RequestMapping(path="/deleteSysParamById",method=RequestMethod.POST)
	public InvokeResult deleteSysParamById(String ids) throws Exception {
		if (StringUtils.isBlank(ids)) {
			return InvokeResult.bys("未获取系统参数信息");
		}
		String[] arr = ids.split(",");
		sysParamService.deleteSysParams(arr);
		return InvokeResult.success(true);
	}

	@ResponseBody
	@RequestMapping(path="/getSysParamsByPage",method=RequestMethod.GET)
	public InvokeResult getSysParamsByPage(SysParamCriteriaInVO carCriteriaInVO,
			SimplePageRequestVO simplePageRequestVO) throws Exception {
		JPage<SysParam> page = sysParamService.getSysParams(carCriteriaInVO,
				new SimplePageRequest(simplePageRequestVO.getPage(), simplePageRequestVO.getSize()));
		List<SysParam> content = page.getContent();
		List<SysParamRecordOutVO> outContent = new ArrayList<SysParamRecordOutVO>();
		for (SysParam sysParam : content) {
			SysParamRecordOutVO sysParamRecordOutVO = Copy.simpleCopy(sysParam, SysParamRecordOutVO.class);
			outContent.add(sysParamRecordOutVO);
		}
		JPageUtil.replaceConent(page, outContent);
		return InvokeResult.success(page);
	}

}
