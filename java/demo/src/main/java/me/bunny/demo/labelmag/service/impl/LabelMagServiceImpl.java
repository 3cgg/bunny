package me.bunny.demo.labelmag.service.impl;

import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.kernel._c.service.ServiceSupport;
import me.bunny.kernel._c.service.SingleEntityManager;
import me.bunny.kernel._c.service.SingleEntityManagerGetter;
import me.bunny.demo.labelmag.model.Label;
import me.bunny.demo.labelmag.service.LabelMagService;
import me.bunny.demo.labelmag.vo.LabelInfo;
import me.bunny.demo.labelmag.vo.LabelRecordVO;
import me.bunny.util.Copy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.bunny.kernel.BusinessException;


@Service
@Transactional
public class LabelMagServiceImpl extends ServiceSupport implements LabelMagService {

	private SingleEntityManager<Label> internalLmServiceImpl = SingleEntityManagerGetter.get()
			.getInstance(Label.class);

	
	/**
	 * 获取后台管理系统 - 标签管理 - 所有标签的记录并分页显示
	 * 
	 * @param labelInfo
	 * @param simplePageRequest
	 * @return JPage<LabelRecordVO>
	 */
	@Override
	public JPage<LabelRecordVO> getLabels(LabelInfo labelInfo,
								  SimplePageRequest simplePageRequest) {
		return internalLmServiceImpl.singleEntityQuery2().conditionDefault().likes("code", labelInfo.getCode())
				.likes("name", labelInfo.getName()).likes("desc", labelInfo.getDesc())
				.likes("enable", labelInfo.getEnable()).ready().modelPage(simplePageRequest,LabelRecordVO.class);
	}



	private Label forLabel(LabelInfo labelInfo){
		Label label= Copy.simpleCopy(labelInfo,Label.class);
		return label;
	}

	/**
	 * 新增标签记录
	 * 
	 * @param labelInfo
	 */
	@Override
	public String saveLable(LabelInfo labelInfo) {
		String code = labelInfo.getCode();
		if (exists(code)) {
			throw new BusinessException("参数 code [" + code + "] 已存在");
		}
		Label label=forLabel(labelInfo);
		internalLmServiceImpl.saveOnly(label);
		return label.getId();
	}

	/**
	 * 查询该标签是否存在
	 * 
	 * @param code
	 * @return
	 */
	@Override
	public boolean exists(String code) {
		return internalLmServiceImpl.singleEntityQuery2().conditionDefault().equals("code", code)
				.ready().count()>0;
	}

	/**
	 * 通过标签的ID获取该标签记录的详细信息
	 * 
	 * @param id
	 * @return LabelRecordVO
	 */
	@Override
	public LabelRecordVO getLabelById(String id) {
		return internalLmServiceImpl.singleEntityQuery2().active(id).ready()
				.model(LabelRecordVO.class);
	}

	/**
	 * 更新标签的详细信息
	 * 
	 * @param labelInfo
	 */
	@Override
	public void updateLabel(LabelInfo labelInfo) {
		Label dbLabel = getLabelById(labelInfo.getId());
		dbLabel.setName(labelInfo.getName());
		dbLabel.setDesc(labelInfo.getDesc());
		dbLabel.setEnable(labelInfo.getEnable());
		internalLmServiceImpl.updateOnly(dbLabel);
	}

	/**
	 * 根据标签的ID删除该标签记录
	 * 
	 * @param id
	 */
	@Override
	public void deleteLabelById(String id) {
		internalLmServiceImpl.delete(id);
	}

	/**
	 * 根据标签的ID数组批量删除标签记录
	 * 
	 * @param ids
	 */
	@Override
	public void deleteLabels(String[] ids) {
		for (String id : ids) {
			deleteLabelById(id);
		}
	}
	

}
