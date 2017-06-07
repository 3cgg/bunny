package me.bunny.demo.labelmag.controller;

import me.bunny.kernel._c.model.JPage;
import me.bunny.demo.labelmag.vo.LabelInfo;
import me.bunny.demo.labelmag.vo.LabelRecordVO;
import me.bunny.web.model.SimplePageRequestVO;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import me.bunny.kernel._c.model.InvokeResult;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.demo.labelmag.service.LabelMagService;


@Controller
@RequestMapping("/labelmag")
public class LabelMagController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());

	@Autowired
	private LabelMagService labelMagService;

	/**
	 * 获取后台管理系统 - 标签管理 - 所有标签的记录并分页显示
	 * 
	 * @param labelInfo
	 * @param simplePageRequestVO
	 * @return JPage<LabelManagement>
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(path = "/getLabelsByPage", method = RequestMethod.GET)
	public InvokeResult getLabelsByPage(LabelInfo labelInfo,
			SimplePageRequestVO simplePageRequestVO) throws Exception {
		JPage<LabelRecordVO> page = labelMagService.getLabels(labelInfo,
				new SimplePageRequest(simplePageRequestVO.getPage(), simplePageRequestVO.getSize()));
		return InvokeResult.success(page);
	}

	/**
	 * 新增标签记录
	 * 
	 * @param labelInfo
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(path = "/saveLabel", method = RequestMethod.POST)
	public InvokeResult saveLabel(LabelInfo labelInfo) throws Exception {
		String id=labelMagService.saveLable(labelInfo);
		return InvokeResult.success(id);
	}

	/**
	 * 通过标签的ID获取该标签记录的详细信息
	 * 
	 * @param id
	 * @return LabelManagementDetailOutVO
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(path = "/getLabelById", method = RequestMethod.GET)
	public InvokeResult getLabelById(String id) throws Exception {
		LabelRecordVO labelRecordVO = labelMagService.getLabelById(id);
		return InvokeResult.success(labelRecordVO);
	}

	/**
	 * 更新标签的详细信息
	 * 
	 * @param labelInfo
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(path = "/updateLabel", method = RequestMethod.POST)
	public InvokeResult updateLabel(LabelInfo labelInfo) throws Exception {
		labelMagService.updateLabel(labelInfo);
		return InvokeResult.success(true);
	}

	/**
	 * 根据标签的ID删除该标签记录
	 * 
	 * @param ids
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(path = "/deleteLabelById", method = RequestMethod.POST)
	public InvokeResult deleteLabelById(String ids) throws Exception {
		if (StringUtils.isBlank(ids)) {
			return InvokeResult.bys("id [,,] missing");
		}
		String[] arr = ids.split(",");
		labelMagService.deleteLabels(arr);
		return InvokeResult.success(true);
	}
}
