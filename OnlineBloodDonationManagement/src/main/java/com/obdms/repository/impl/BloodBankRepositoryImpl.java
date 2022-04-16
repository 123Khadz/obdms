package com.obdms.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.BloodBank;
import com.obdms.entity.BloodGroup;
import com.obdms.entity.Hospital;
import com.obdms.repository.BloodBankRepository;

@Repository
@Transactional
public class BloodBankRepositoryImpl implements BloodBankRepository {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public void addBloodBank(BloodBank bloodBank) {
		entityManager.persist(bloodBank);

	}

	@Override
	public void editBloodBank(BloodBank bloodBank) {
		entityManager.merge(bloodBank);

	}

	@Override
	public void deleteBloodBank(BloodBank bloodBank) {
		if (entityManager.contains(bloodBank))
			entityManager.remove(bloodBank);

	}

	@Override
	public BloodBank findBloodBank(Hospital hospital, BloodGroup bloodGroup) {
		try {
			return (BloodBank) entityManager
					.createQuery("from BloodBank where hospital = :hospital and bloodGroup = :bloodGroup")
					.setParameter("hospital", hospital).setParameter("bloodGroup", bloodGroup).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public BloodBank findBloodBankById(Long bloodBankId) {
		try {
			return (BloodBank) entityManager.createQuery("from BloodBank where bloodBankId = :bloodBankId")
					.setParameter("bloodBankId", bloodBankId).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BloodBank> getBloodBankListByBloodGroup(BloodGroup bloodGroup) {
		try {
			return entityManager.createQuery("from BloodBank where bloodGroup = :bloodGroup")
					.setParameter("bloodGroup", bloodGroup).getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public BloodBank findBloodBankByHospitalId(Hospital hospital) {
		try {
			return (BloodBank) entityManager.createQuery("from BloodBank where hospital = :hospital")
					.setParameter("hospital", hospital).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BloodBank> getBloodBankList() {
		try {
			return entityManager.createQuery("from BloodBank order by bloodBankId").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

}
