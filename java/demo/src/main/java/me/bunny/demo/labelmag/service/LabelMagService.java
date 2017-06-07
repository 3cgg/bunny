package me.bunny.demo.labelmag.service;

import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.demo.labelmag.vo.LabelInfo;
import me.bunny.demo.labelmag.vo.LabelRecordVO;


public interface LabelMagService {

	/**
	 * 获取后台管理系统 - 标签管理 - 所有标签的记录并分页显示
	 * 
	 * @param labelInfo
	 * @param simplePageRequest
	 * @return JPage<LabelRecordVO>
	 */
	JPage<LabelRecordVO> getLabels(LabelInfo labelInfo, SimplePageRequest simplePageRequest);

	/**
	 * 新增标签记录
	 * 
	 * @param label
	 */
	String saveLable(LabelInfo label);

	/**
	 * 查询该标签是否存在
	 * 
	 * @param code
	 * @return
	 */
	boolean exists(String code);

	/**
	 * 通过标签的ID获取该标签记录的详细信息
	 * 
	 * @param id
	 * @return LabelRecordVO
	 */
	LabelRecordVO getLabelById(String id);

	/**
	 * 更新标签的详细信息
	 * 
	 * @param label
	 */
	void updateLabel(LabelInfo label);

	/**
	 * 根据标签的ID删除该标签记录
	 * 
	 * @param id
	 */
	void deleteLabelById(String id);

	/**
	 * 根据标签的ID数组批量删除标签记录
	 * 
	 * @param ids
	 */
	void deleteLabels(String[] ids);

	
}
