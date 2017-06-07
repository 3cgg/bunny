package me.bunny.demo.casemag.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import me.bunny._b._core.attachment.service.AttachmentService;
import me.bunny._b._core.attachment.vo.AttachmentInfo;
import me.bunny.kernel.BusinessException;
import me.bunny.demo.casemag.vo.*;
import me.bunny.demo.labelmag.model.Label;
import me.bunny._b._core.sysuser.model.SysUser;
import me.bunny._b._core.sysuser.service.SysUserService;
import me.bunny.kernel._c.cache.RedisCacheService;
import me.bunny.kernel._c.model.JPage;
import me.bunny.kernel._c.service.ServiceSupport;
import me.bunny.kernel._c.service.SingleEntityManager;
import me.bunny.demo.casemag.model.Case;
import me.bunny.demo.casemag.model.CaseCategory;
import me.bunny.demo.casemag.model.UserCategoryRef;
import me.bunny.demo.casemag.service.CaseMagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.bunny._b._core.cache.DictionaryCache;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.kernel._c.service.SingleEntityManagerGetter;
import me.bunny.kernel.springjpa.query2.JSingleEntityQueryMeta.SqlType;
import me.bunny.demo.casemag.CaseCodesTable.CaseAuth;
import me.bunny.demo.casemag.CaseCodesTable.CaseEssence;
import me.bunny.demo.casemag.CaseCodesTable.CaseRead;
import me.bunny.demo.casemag.CaseCodesTable.CaseTop;
import me.bunny.demo.casemag.CaseCodesTable.CaseUpDown;
import me.bunny.demo.casemag.model.CaseCategoryRef;
import me.bunny.demo.casemag.model.CaseLabelRef;
import me.bunny.util.JDateUtils;
import me.bunny.util.JStringUtils;

@Service
@Transactional
public class CaseMagServiceImpl extends ServiceSupport implements CaseMagService {

	private SingleEntityManager<Case> caseEntityManager = SingleEntityManagerGetter.get()
			.getInstance(Case.class);
	
	private SingleEntityManager<CaseCategoryRef> caseCategoryRefEntityManager = SingleEntityManagerGetter.get()
			.getInstance(CaseCategoryRef.class);
	
	private SingleEntityManager<CaseCategory> caseCategoryEntityManager = SingleEntityManagerGetter.get()
			.getInstance(CaseCategory.class);
	
	private SingleEntityManager<CaseLabelRef> caseLabelRefEntityManager = SingleEntityManagerGetter.get()
			.getInstance(CaseLabelRef.class);
	
	private SingleEntityManager<UserCategoryRef> userCategoryRefEntityManager = SingleEntityManagerGetter.get()
			.getInstance(UserCategoryRef.class);

	private SingleEntityManager<Label> labelEntityManager = SingleEntityManagerGetter.get()
			.getInstance(Label.class);


	@Autowired
	private AttachmentService attachmentService;

	@Autowired
	private DictionaryCache dictionaryCache;
	
	@Autowired
	private SysUserService sysUserService;
	
	@Autowired
	private RedisCacheService<String,Long> redisCacheService;

	private Case forCase(CaseInfo caseInfo){
		Case cas=new Case();
		cas.setTitle(caseInfo.getTitle());
		cas.setReleaseTime(caseInfo.getReleaseTime());
		cas.setUserId(caseInfo.getUserId());
		cas.setOrder(caseInfo.getOrder());
		cas.setContent(caseInfo.getContent());
		cas.setEssence(caseInfo.getEssence());
		cas.setImageIds(caseInfo.getImageIds());
		return cas;
	}
	
	private List<CaseCategoryRef> forCaseCategoryRef(CaseInfo caseInfo){
		String categoryIds=caseInfo.getCategoryIds();
		List<CaseCategoryRef> caseCategoryRefs=new ArrayList<>();
		Arrays.asList(Optional.ofNullable(categoryIds)
		.map(categoryId->{
			return categoryId.split(",");
		}).orElse(new String[]{})).stream().filter(categoryId->{
			return JStringUtils.isNotNullOrEmpty(categoryId);
		}).forEach(categoryId->{
			CaseCategoryRef caseCategoryRef=new CaseCategoryRef();
			caseCategoryRef.setCaseCategoryId(categoryId);
			caseCategoryRefs.add(caseCategoryRef);
		});
		return caseCategoryRefs;
	}
	
	
	private List<CaseLabelRef> forCaseLabelRef(CaseInfo caseInfo){
		String labels=caseInfo.getLabelIds();
		List<CaseLabelRef> caseLabelRefs=new ArrayList<>();
		Arrays.asList(Optional.ofNullable(labels)
		.map(label->{
			return label.split(",");
		}).orElse(new String[]{})).stream().filter(label->{
			return JStringUtils.isNotNullOrEmpty(label);
		}).forEach(label->{
			CaseLabelRef caseLabelRef=new CaseLabelRef();
			caseLabelRef.setCaseLabelId(label);
			caseLabelRefs.add(caseLabelRef);
		});
		return caseLabelRefs;
	}
	
	@Override
	public String saveCase(CaseAddVO caseAddVO) {

		if(JStringUtils.isNullOrEmpty(caseAddVO.getUserId())){
			throw new BusinessException("案例发布者不能为空");
		}


		Case cas=forCase(caseAddVO);
		cas.setUpDown(CaseUpDown.UP);
		cas.setAuthCode(CaseAuth.PASS);
		cas.setReadCode(CaseRead.UNREAD);
		cas.setReleaseTime(new Date());
		if("true".equals(caseAddVO.getPush())
			||"on".equals(caseAddVO.getPush())
				){
			cas.setTop(CaseTop.YES);
		}else{
			cas.setTop(CaseTop.NO);
		}
		cas.setEssence(CaseEssence.YES);
		
		caseEntityManager.saveOnly(cas);
		List<CaseCategoryRef> caseCategoryRefs= forCaseCategoryRef(caseAddVO);
		caseCategoryRefs.forEach(caseCategoryRef->{
			caseCategoryRef.setCaseId(cas.getId());
			caseCategoryRefEntityManager.saveOnly(caseCategoryRef);
		});
		
		List<CaseLabelRef> caseLabelRefs=forCaseLabelRef(caseAddVO);
		caseLabelRefs.forEach(caseLabelRef->{
			caseLabelRef.setCaseId(cas.getId());
			caseLabelRefEntityManager.saveOnly(caseLabelRef);
		});
		return cas.getId();
	}
	
	@Override
	public void updateCase(CaseUpdateVO caseUpdateVO) {
		if(JStringUtils.isNullOrEmpty(caseUpdateVO.getUserId())){
			throw new BusinessException("案例发布者不能为空");
		}


		//delete all categories
		deleteCaseCategoryRef(caseUpdateVO.getId());
		//delete all labels
		deleteCaseLabelRef(caseUpdateVO.getId());
		
		Case cas=caseEntityManager.getById(caseUpdateVO.getId());
		cas.setTitle(caseUpdateVO.getTitle());
		cas.setReleaseTime(caseUpdateVO.getReleaseTime());
		cas.setUserId(caseUpdateVO.getUserId());
		cas.setImageIds(caseUpdateVO.getImageIds());
		cas.setContent(caseUpdateVO.getContent());
		cas.setOrder(caseUpdateVO.getOrder());
		if("true".equals(caseUpdateVO.getPush())
				||"on".equals(caseUpdateVO.getPush())
					){
				cas.setTop(CaseTop.YES);
			}else{
				cas.setTop(CaseTop.NO);
			}
		
		List<CaseCategoryRef> caseCategoryRefs= forCaseCategoryRef(caseUpdateVO);
		caseCategoryRefs.forEach(caseCategoryRef->{
			caseCategoryRef.setCaseId(cas.getId());
			caseCategoryRefEntityManager.saveOnly(caseCategoryRef);
		});
		
		List<CaseLabelRef> caseLabelRefs=forCaseLabelRef(caseUpdateVO);
		caseLabelRefs.forEach(caseLabelRef->{
			caseLabelRef.setCaseId(cas.getId());
			caseLabelRefEntityManager.saveOnly(caseLabelRef);
		});
	}

	@Override
	public void deleteCaseById(String id) {
		caseEntityManager.delete(id);
	}
	
	/**
	 * the return one is same as the parameter
	 * @param caseRecordVO
	 * @return
	 */
	private CaseRecordVO then(CaseRecordVO caseRecordVO){
		List<CaseCategoryInfo> caseCategoryInfos=getAllCaseCategorys(caseRecordVO.getId());
		caseCategoryInfos.forEach(caseCategoty->{
			caseRecordVO.setCategoryIds(
					String.join(",",
							JStringUtils.isNullOrEmpty(caseRecordVO.getCategoryIds())?""
									:caseRecordVO.getCategoryIds()
							,caseCategoty.getId()));
			caseRecordVO.setCategoryNames(
					String.join(",",
							JStringUtils.isNullOrEmpty(caseRecordVO.getCategoryNames())?""
									:caseRecordVO.getCategoryNames()
							,caseCategoty.getName()));
		});
		caseRecordVO.setCaseCategoryInfos(caseCategoryInfos);

		System.out.println("000");

		List<CaseLabelInfo> caseLabelInfos=getAllCaseLabels(caseRecordVO.getId());
		caseLabelInfos.forEach(caseLabelInfo->{
			caseRecordVO.setLabelIds(String.join(",",
					JStringUtils.isNullOrEmpty(caseRecordVO.getLabelIds())?""
							:caseRecordVO.getLabelIds()
					,caseLabelInfo.getId()));
			caseRecordVO.setLabelNames(
					String.join(",",
							JStringUtils.isNullOrEmpty(caseRecordVO.getLabelNames())?""
									:caseRecordVO.getLabelNames()
							,caseLabelInfo.getName()));
		});
		caseRecordVO.setCaseLabelInfos(caseLabelInfos);

		
		caseRecordVO.setUpDownName(dictionaryCache.getDictDataName(CaseUpDown.CODE,
				caseRecordVO.getUpDown()));
		caseRecordVO.setReleaseTimeStr(JDateUtils.format(caseRecordVO.getReleaseTime()));
		SysUser sysUser= sysUserService.getSysUserById(caseRecordVO.getUserId());
		caseRecordVO.setUserName(Optional.ofNullable(sysUser)
				.map(su->{
					return su.getUserAccount();
				}).orElse(null));

		List<AttachmentInfo>  attachmentInfos=new ArrayList<>();
		Optional.ofNullable(caseRecordVO.getImageIds()).ifPresent(iamgeIds->{
			for(String id : iamgeIds.split(",")){
				if(JStringUtils.isNotNullOrEmpty(id)){
					AttachmentInfo attachmentInfo=
							attachmentService.getAttachment(id);
					attachmentInfos.add(attachmentInfo);
				}
			}
		});


		caseRecordVO.setImages(attachmentInfos);


		return caseRecordVO;
	}
	
	@Override
	public CaseRecordVO getCaseById(String id) {
		CaseRecordVO caseRecordVO=caseEntityManager.singleEntityQuery2().active(id)
				.ready().model(CaseRecordVO.class);
		return then(caseRecordVO);
		
	}

	@Override
	public JPage<CaseRecordVO> getCases(CaseCriteriaVO caseCriteriaVO, SimplePageRequest simplePageRequest) {
		
		String jpql= caseEntityManager.selectCause("a")+ " from Case a "
				+ " where a.isAvailable=1 " ;
		Map<String, Object> params=new HashMap<>();
		if(JStringUtils.isNotNullOrEmpty(caseCriteriaVO.getTitle())){
			params.put("title", "%"+caseCriteriaVO.getTitle()+"%");
			jpql= jpql+" and a.title like :title ";
		}
		
		if(JStringUtils.isNotNullOrEmpty(caseCriteriaVO.getUserId())){
			params.put("userId", caseCriteriaVO.getUserId());
			jpql= jpql+" and a.userId = :userId ";
		}
		jpql=jpql+" order by a.order desc , a.modifyDate desc  ";
		
		JPage<CaseRecordVO> page= jpqlQuery().setSql(jpql).setParams(params).modelPage(simplePageRequest, CaseRecordVO.class);
		page.getContent().forEach(caseRecordVO->{
			then(caseRecordVO);
		});
		
		return page;
	}

	@Override
	public List<CaseCategoryInfo> getAllCaseCategorys(String caseId) {
		String sql=caseCategoryEntityManager.selectCause(SqlType.NATIVE, "a")
				+ " from t_case_category a "
				+ " inner join t_case_category_ref b on a.id=b.case_category_id and a.is_available=1"
				+ " inner join t_case c on b.case_id=c.id and c.is_available=1 and c.id= :caseId";
		Map<String, Object> params=new HashMap<>();
		params.put("caseId", caseId);
		return nativeQuery().setSql(sql).setParams(params).models(CaseCategoryInfo.class);
	}

	@Override
	public List<CaseLabelInfo> getAllCaseLabels(String caseId) {
		String sql=labelEntityManager.selectCause(SqlType.NATIVE, "a")
				+ " from t_label a "
				+ " inner join t_case_label_ref b on a.id=b.case_label_id and a.is_available=1"
				+ " inner join t_case c on b.case_id=c.id and c.is_available=1 and c.id= :caseId";
		Map<String, Object> params=new HashMap<>();
		params.put("caseId", caseId);
		return nativeQuery().setSql(sql).setParams(params).models(CaseLabelInfo.class);

	}

	/**
	 * delete case category
	 * @param caseId
	 */
	private void deleteCaseCategoryRef(String caseId){
		String jpql="delete from CaseCategoryRef where caseId = :caseId ";
		Map<String, Object> params=new HashMap<>();
		params.put("caseId", caseId);
		jpqlQuery().setSql(jpql).setParams(params).setUpdate(true).model();
	}
	
	/**
	 * delete case label
	 * @param caseId
	 */
	private void deleteCaseLabelRef(String caseId){
		String jpql="delete from CaseLabelRef where caseId = :caseId ";
		Map<String, Object> params=new HashMap<>();
		params.put("caseId", caseId);
		jpqlQuery().setSql(jpql).setParams(params).setUpdate(true).model();
	}
	
//	private long orderMax(){
//		Long order= redisCacheService.get(CacheKeyNames.CASE_TOP)+1;
//		redisCacheService.put(CacheKeyNames.CASE_TOP, order);
//		return order;
//	}
	
	
	@Override
	public void upCase(String caseId) {
		Case cas=getCaseById(caseId);
		cas.setUpDown(CaseUpDown.UP);
		caseEntityManager.updateOnly(cas);
	}
	
	
	@Override
	public void downCase(String caseId) {
		Case cas=getCaseById(caseId);
		cas.setUpDown(CaseUpDown.DOWN);
		caseEntityManager.updateOnly(cas);
	}

	@Override
	public void pushCase(String caseId) {
		Case cas=getCaseById(caseId);
		cas.setTop(CaseTop.YES);
		caseEntityManager.updateOnly(cas);
	}
	
	
	@Override
	public long maxOrder() { 
		Object max= jpqlQuery().setSql("select max(a.order) from Case a ")
				.model();
		return (long) Optional.ofNullable(max).orElseGet( ()->{return 0l;});
	}
	
	private void deleteCategoryOnUser(String userId,String categoryId){
		String sql= "delete from UserCategoryRef a where a.userId = :userId";
		Map<String, Object> params=new HashMap<>();
		params.put("userId", userId);
		if(JStringUtils.isNotNullOrEmpty(categoryId)){
			sql=sql+" and a.caseCategoryId = :caseCategoryId";
			params.put("caseCategoryId", categoryId);
		}
		jpqlQuery().setSql(sql).setParams(params).setUpdate(true).model();
	}
	
	
	@Override
	public void subsribeCategory(String userId, String[] categoryIds) {
		//link user and case category
		Arrays.asList(categoryIds)
				.stream().filter(categoryId->{
					return JStringUtils.isNotNullOrEmpty(categoryId);
				})
				.forEach(categoryId->{
					UserCategoryRef userCategoryRef=new UserCategoryRef();
					userCategoryRef.setCaseCategoryId(categoryId);
					userCategoryRef.setUserId(userId);
					userCategoryRefEntityManager.saveOnly(userCategoryRef);
				});
	}
	
	
	@Override
	public void subsribeCategoryView(String userId, String[] categoryIds) {
		//delete all existing reference
		deleteCategoryOnUser(userId, null);
		subsribeCategory(userId, categoryIds);
	}
	
	
	
	@Override
	public void unsubsribeCategory(String userId, String[] categoryIds) {
		//remove link user and case category
		Arrays.asList(categoryIds)
				.stream().filter(categoryId->{
					return JStringUtils.isNotNullOrEmpty(categoryId);
				})
				.forEach(categoryId->{
					deleteCategoryOnUser(userId, categoryId);
				});
	}
	
	
	private String categoryOnUserSql(String userId){
		String sql=
				caseCategoryEntityManager.selectCause(SqlType.NATIVE,"c")
				+ " from t_user_casecategory  a "
				+ " inner join t_sys_user b on a.user_id=b.id and a.is_available=1 and b.is_available=1 "
				+ " and b.id =:userId "
				+ " inner join t_case_category c on a.case_category_id=c.id and c.is_available=1 " ; 
		return sql;
	}
	
	@Override
	public List<UserCategoryRecordVO> getCategoryOnUser(String userId) {
		String sql=categoryOnUserSql(userId);
		Map<String, Object> params=new HashMap<>();
		params.put("userId", userId);
		return nativeQuery().setSql(sql).setParams(params)
				.models(UserCategoryRecordVO.class);
	}
	
	@Override
	public List<UserCategoryRecordVO> getNoCategoryOnUser(String userId) {
		
		String _sql=categoryOnUserSql(userId);
		String sql= caseCategoryEntityManager.selectCause(SqlType.NATIVE,"s")
				+" from t_case_category s where  s.is_available=1 and  s.id not in ("
				+ " select  ss.id from ("+_sql+") ss "
				+ ")";
		Map<String, Object> params=new HashMap<>();
		params.put("userId", userId);
		return nativeQuery().setSql(sql).setParams(params)
				.models(UserCategoryRecordVO.class);
	}
	
	
	
	
	
	
}
