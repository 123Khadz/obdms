package com.obdms.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.Hospital;
import com.obdms.repository.HospitalRepository;

@Repository
@Transactional
public class HospitalRepositoryImpl implements HospitalRepository {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public void addHospital(Hospital hospital) {
		entityManager.persist(hospital);

	}

	@Override
	public void editHospital(Hospital hospital) {
		entityManager.merge(hospital);

	}

	@Override
	public void deleteHospital(Hospital hospital) {
		if (entityManager.contains(hospital))
			entityManager.remove(hospital);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Hospital> getHospitalListSortedById() {
		try {
			return entityManager.createQuery("from Hospital order by hospitalId").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Hospital> getHospitalListSortedByName() {
		try {
			return entityManager.createQuery("from Hospital order by hospitalName").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Hospital> getHospitalList(long stateId, long cityId) {
		try {
			return entityManager.createQuery("from Hospital where stateId = :stateId and cityId = :cityId")
					.getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public Hospital findHospitalByName(String hospitalName) {
		try {
			return (Hospital) entityManager.createQuery("from Hospital where hospitalName = :hospitalName")
					.setParameter("hospitalName", hospitalName).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public Hospital findHospitalById(Long hospitalId) {
		try {
			return (Hospital) entityManager.createQuery("from Hospital where hospitalId = :hospitalId")
					.setParameter("hospitalId", hospitalId).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

}
