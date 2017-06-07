package me.bunny.kernel._c.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import me.bunny.kernel.springjpa.query2.JSingleEntityQuery;
import org.springframework.stereotype.Service;

@Service
public class SingleEntityQueryService extends ServiceSupport implements ISingleEntityQueryService{

	
	private static EntityManager em;
	
	@Override
	@PersistenceContext
	public void setEm(EntityManager em) {
		SingleEntityQueryService.em = em;
	}
	
	static EntityManager getEm(){
		return em;
	}
	
	/**
	 * 不推荐
	 * 
	 * @param entityClass
	 * @return
	 */
	@Deprecated 
	public static JSingleEntityQuery getSingleEntityQuery(Class<?> entityClass){
		return new JSingleEntityQuery(entityClass, em);
	}
	
	
}
