/**
 * 
 */
package me.bunny._b._core.sysuser.service.impl;

import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

import me.bunny.AppConfig;
import me.bunny._b._core.Constants;
import me.bunny._b._core.sysrole.service.SysRoleService;
import me.bunny._b._core.sysrole.vo.SysUserRoleOutVO;
import me.bunny._b._core.sysuser.model.SysUser;
import me.bunny._b._core.sysuser.model.SysUserRole;
import me.bunny._b._core.sysuser.service.SysUserService;
import me.bunny._b._core.sysuser.vo.RetrievePassowrd;
import me.bunny._b._core.sysuser.vo.SysUserPageInVO;
import me.bunny._b._core.sysuser.vo.SysUserPageOutVO;
import me.bunny._b._core.sysuser.vo.UpdatePasswordInVo;
import me.bunny.kernel.BusinessException;
import me.bunny.kernel._c.ServerSessionHolder;
import me.bunny.kernel._c.model.Availability;
import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.kernel._c.security.SecurityService;
import me.bunny.kernel._c.service.ServiceSupport;
import me.bunny.kernel._c.service.SingleEntityManager;
import me.bunny.kernel._c.service.SingleEntityManagerGetter;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author zhengzw
 *
 */
@Service
@Transactional
public class SysUserServiceImpl extends ServiceSupport implements SysUserService {

	private SingleEntityManager<SysUser> internalSysUserServiceImpl = SingleEntityManagerGetter.get()
			.getInstance(SysUser.class);

	private SingleEntityManager<SysUserRole> internalSysUserRoleServiceImpl = SingleEntityManagerGetter.get()
			.getInstance(SysUserRole.class);

	@Autowired
	private SecurityService securityService;

	@Autowired
	private SysRoleService sysRoleService;
	
	@Autowired
	private AppConfig._Config config;

	@Override
	public SysUser saveSysUser(SysUser sysUser) {
		String user_account = sysUser.getUserAccount();
		if (exists(user_account)) {
			throw new BusinessException("用户账号 [ " + user_account + " ] 已经存在!");
		}
		sysUser.setPassword(securityService.encriptyByMD5(config.getUser().getDefaultPassword()));
		internalSysUserServiceImpl.saveOnly(sysUser);
		
		return sysUser;
	}

	@Override
	public boolean exists(String user_account) {
		SysUser sysUser = internalSysUserServiceImpl.singleEntityQuery2().conditionDefault()
				.equals("userAccount", user_account).ready().model();
		return sysUser != null;
	}

	@Override
	public void disableSysUser(String[] userIds) {
		SysUser sysUser = null;
		for (String userId : userIds) {
			if (StringUtils.isNotBlank(userId)) {
				sysUser = internalSysUserServiceImpl.getById(userId);
				sysUser.setDisabled(Constants.isEnable.disable);
				internalSysUserServiceImpl.updateOnly(sysUser);
			}
		}
	}

	@Override
	public void enableSysUser(String[] userIds) {
		SysUser sysUser = null;
		for (String userId : userIds) {
			if (StringUtils.isNotBlank(userId)) {
				sysUser = internalSysUserServiceImpl.getById(userId);
				sysUser.setDisabled(Constants.isEnable.enable);
				internalSysUserServiceImpl.updateOnly(sysUser);
			}
		}
	}

	@Override
	public JPage<SysUserPageOutVO> getSysUserPage(SysUserPageInVO inVO, SimplePageRequest page) {
		StringBuilder jpql = new StringBuilder("SELECT");
		jpql.append(
				" t.id as id,t.USER_ACCOUNT as userAccount,t.NAME as name,t.DESCRIPTION as description,t.DISABLED as disabled");
		jpql.append(" FROM T_SYS_USER t");
		jpql.append(" WHERE t.is_available = :isAvailable");
		Map<String, Object> params = new WeakHashMap<String, Object>();
		params.put("isAvailable", Availability.available.ordinal());
		if (StringUtils.isNotBlank(inVO.getUserAccount())) {
			jpql.append(" AND t.USER_ACCOUNT like :userAccount");
			params.put("userAccount", "%"+inVO.getUserAccount()+"%");
		}
		if (StringUtils.isNotBlank(inVO.getName())) {
			jpql.append(" AND t.name like :name");
			params.put("name", "%" + inVO.getName() + "%");
		}
		if (StringUtils.isNotBlank(inVO.getDescription())) {
			jpql.append(" AND t.description like :description");
			params.put("description", "%" + inVO.getDescription() + "%");
		}
		if (StringUtils.isNotBlank(inVO.getDisabled())) {
			jpql.append(" AND t.disabled = :disabled");
			params.put("disabled", inVO.getDisabled());
		}
		return nativeQuery().setSql(jpql.toString()).setParams(params).modelPage(page, SysUserPageOutVO.class);
	}

	@Override
	public SysUser getSysUserByAccount(String user_account) {
		return internalSysUserServiceImpl.singleEntityQuery2().conditionDefault().equals("userAccount", user_account)
				.ready().model();
	}

	@Override
	public void removeSysUser(String[] userIds) {
		SysUser sysUser = null;
		for (String userId : userIds) {
			if (StringUtils.isNotBlank(userId)) {
				sysUser = internalSysUserServiceImpl.getById(userId);
				internalSysUserServiceImpl.delete(sysUser);
			}
		}
	}

	@Override
	public SysUser getSysUserById(String id) {
		return internalSysUserServiceImpl.getById(id, SysUser.class);
	}

	public void editSysUser(SysUser su) {
		SysUser sysUser = getSysUserById(su.getId());
		sysUser.setName(su.getName());
		sysUser.setEmail(su.getEmail());
		sysUser.setDisabled(su.getDisabled());
		sysUser.setDescription(su.getDescription());
		internalSysUserServiceImpl.updateOnly(sysUser);
	}

	@Override
	public List<SysUserRoleOutVO> getSysUserGrantRoles(String id) {
		List<SysUserRoleOutVO> list = sysRoleService.getUserRoles(id);
		return list;
	}

	@Override
	public List<SysUserRoleOutVO> getSysUserNotGrantRoles(String id) {
		return sysRoleService.getUserNotRoles(id);

	}

	@Override
	public void deleteUserRoleById(String userRoleId) {
		if (StringUtils.isNoneBlank(userRoleId)) {
			SysUserRole model = internalSysUserRoleServiceImpl.getById(userRoleId);
			internalSysUserRoleServiceImpl.delete(model);
		}
	}

	public void deleteUserRoleByIds(String[] userRoleIds) {
		for (String userRoleId : userRoleIds) {
			deleteUserRoleById(userRoleId);
		}
	}

	@Override
	public void addUserRole(String userId, String roleId) {
		SysUserRole model = new SysUserRole();
		model.setUserId(userId);
		model.setRoleId(roleId);
		internalSysUserRoleServiceImpl.saveOnly(model);
	}

	public void addUserRoles(String userId, String[] roleIds) {
		for (String roleId : roleIds) {
			addUserRole(userId, roleId);
		}
	}

	public void resetPasswordById(String userId) {
		SysUser sysUser = internalSysUserServiceImpl.getById(userId);
		sysUser.setPassword(securityService.encriptyByMD5(config.getUser().getDefaultPassword()));
		internalSysUserServiceImpl.updateOnly(sysUser);
	}

	public void resetPasswrodByIds(String[] userIds) {
		for (String userId : userIds) {
			resetPasswordById(userId);
		}
	}

	@Override
	public void updatePassword(UpdatePasswordInVo invo) {
		String userId= ServerSessionHolder.getSessionUser().getId();
		SysUser sysUser = internalSysUserServiceImpl.getById(userId);
		if (securityService.encriptyByMD5(invo.getOldPassword()).equals(sysUser.getPassword())) {
			sysUser.setPassword(securityService.encriptyByMD5(invo.getNewPassword()));
		}else{
			throw new BusinessException("原密码错误!");
		}
	}

	@Override
	public void retrievePassword(String userAccount) throws Exception {
//		SysUser user=this.getSysUserByAccount(userAccount);
//		if(user!=null){
//			if(StringUtils.isNoneBlank(user.getEmail())){
//				String key=userAccount+";"+new Date().getTime();
//				String sendMessage="<a href='"+mail.getMessage()+"?account="+securityService.encrypt(key.getBytes())+"' >修改密码</a>";
//				mail.setReceiver(user.getEmail());
//				mail.setSendMessage(sendMessage);
//				MailUtil util=new MailUtil();
//				util.send(mail);
//			}else{
//				throw new BusinessException("该用户没有有效邮箱!");
//			}
//		}else{
//			throw new BusinessException("用户不存在!");
//		}
		throw new RuntimeException("uncompletely");
	}

	@Override
	public void updatePasswordByAccount(RetrievePassowrd vo) throws Exception {
//		String  account=vo.getUserAccount();
//		String dec=securityService.decrypt(account.getBytes());
//		String[] key=dec.split(";");
//		if(key.length!=2){
//			throw new BusinessException("密钥无效!");
//		}
//		long keyDate=Long.parseLong(key[1]);
//		if(DateTime.now().minusHours(mail.getTimeOut()).isBefore(new DateTime().withMillis(keyDate))){
//			SysUser user=this.getSysUserByAccount(key[0]);
//			if(user!=null){
//				user.setPassword(securityService.encriptyByMD5(vo.getNewPassword()));
//			}else{
//				throw new BusinessException("密钥无效!");
//			}
//		}else{
//			throw new BusinessException("密钥超时!");
//		}
		throw new RuntimeException("uncompletely");
	}
	
	
}
