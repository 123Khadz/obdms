package com.obdms.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.State;
import com.obdms.repository.StateRepository;

@Repository
@Transactional
public class StateRepositoryImpl implements StateRepository {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public State findByIdAndName(Long stateId, String stateName) {
		try {
			return (State) entityManager.createQuery("from State s where s.stateId = :stateId and s.stateName = :stateName")
					.setParameter("stateId", stateId).setParameter("stateName", stateName).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}
	
	@Override
	public State findByStateId(Long stateId) {
		try {
			return (State) entityManager.createQuery("from State where stateId = :stateId")
					.setParameter("stateId", stateId).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}
	
	@Override
	public State findByStateName(String stateName) {
		try {
			return (State) entityManager.createQuery("from State where stateName = :stateName")
					.setParameter("stateName", stateName).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public void addState(State state) {
		entityManager.persist(state);
		
	}

	@Override
	public void editState(State state) {
		entityManager.merge(state);
		
	}

	@Override
	public void deleteState(State state) {
		if (entityManager.contains(state))
			entityManager.remove(state);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<State> getStateList() {
		try {
			return entityManager.createQuery("from State order by stateName").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<State> getStateListSortedById() {
		try {
			return entityManager.createQuery("from State order by stateId").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

}
