/**
 * 
 */
package me.bunny._b._core.urlresources.service;

import java.util.List;

import me.bunny._b._core.urlresources.model.SysRoleResource;
import me.bunny._b._core.urlresources.model.URLResources;
import me.bunny._b._core.urlresources.vo.SysRoleResourcesOutVo;
import me.bunny._b._core.urlresources.vo.URLResourcesPageInVO;
import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.model.SimplePageRequest;

/**
 * @author zhengzw
 *
 */
public interface URLResourcesService {
	
	public JPage<URLResources> getUrlResourcesPage(URLResourcesPageInVO vo, SimplePageRequest page);
	
	public URLResources getUrlResourcesById(String id);
	
	public URLResources saveUrlResources( URLResources res);
	
	public void editUrlResources( URLResources res);
	
	public void deleteUrlResources( String id);
	
	public void deleteUrlResources( String[] ids);
	
	public List<SysRoleResourcesOutVo> getRoleGrantResources(String roleId);
	
	public List<SysRoleResourcesOutVo> getRoleNotGrantResources( String roleId);
	
	public void deleteRoleResources( String id);
	
	public SysRoleResource saveSysRoleResource(String roleId, String resourcesId);
}
