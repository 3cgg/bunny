/**
 * 
 */
package me.bunny._b._core.element.service;

import java.util.List;

import me.bunny._b._core.element.model.PageElement;
import me.bunny._b._core.element.model.SysRoleElement;
import me.bunny._b._core.element.vo.ElementPageInVO;
import me.bunny._b._core.element.vo.ElementPageOutVO;
import me.bunny._b._core.element.vo.SysRoleElementOutVo;
import me.bunny._b._core.element.vo.SysUserElementOutVO;
import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.model.SimplePageRequest;

/**
 * @author zhengzw
 *
 */
public interface PageElementService {
	public PageElement saveElement(PageElement pageElement);

	public JPage<ElementPageOutVO> getElementPage(ElementPageInVO vo, SimplePageRequest page);

	public ElementPageOutVO getElementById(String id);

	public void editElement(PageElement pageElement);

	public void deleteElement(String id);

	public void deleteElement(String[] ids);

	public List<SysRoleElementOutVo> getRoleGrantElements(String roleId);

	public List<SysRoleElementOutVo> getRoleNotGrantElements(String roleId);

	public void deleteRoleElement(String id);

	public SysRoleElement saveSysRoleElement(String roleId, String elementId);

	public List<SysUserElementOutVO> getElementByUser(String userId);
}
