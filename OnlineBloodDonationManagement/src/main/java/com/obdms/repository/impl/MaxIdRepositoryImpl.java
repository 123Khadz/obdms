package com.obdms.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.State;
import com.obdms.repository.MaxIdRepository;

@Repository
@Transactional
public class MaxIdRepositoryImpl implements MaxIdRepository {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public long getMaxId() {
		
		return 0;
	}

}
