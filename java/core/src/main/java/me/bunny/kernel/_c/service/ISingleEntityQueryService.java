package me.bunny.kernel._c.service;

import javax.persistence.EntityManager;

public interface ISingleEntityQueryService {

	public abstract void setEm(EntityManager em);

}