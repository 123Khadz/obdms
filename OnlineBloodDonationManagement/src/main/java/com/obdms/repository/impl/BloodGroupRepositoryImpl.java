package com.obdms.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.BloodGroup;
import com.obdms.repository.BloodGroupRepository;

@Repository
@Transactional
public class BloodGroupRepositoryImpl implements BloodGroupRepository {
	
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public void addBloodGroup(BloodGroup bloodGroup) {
		entityManager.persist(bloodGroup);
		
	}

	@Override
	public void editBloodGroup(BloodGroup bloodGroup) {
		entityManager.merge(bloodGroup);
		
	}

	@Override
	public void deleteBloodGroup(BloodGroup bloodGroup) {
		if (entityManager.contains(bloodGroup))
			entityManager.remove(bloodGroup);
		
	}

	@Override
	public BloodGroup findByBloodGroupId(Long bloodGroupId) {
		try {
			return (BloodGroup) entityManager.createQuery("from BloodGroup where bloodGroupId = :bloodGroupId")
					.setParameter("bloodGroupId", bloodGroupId).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public BloodGroup findByIdAndBloodGroup(Long bloodGroupId, String bloodGroup) {
		try {
			return (BloodGroup) entityManager.createQuery("from BloodGroup where bloodGroupId = :bloodGroupId and bloodGroup = :bloodGroup")
					.setParameter("bloodGroupId", bloodGroupId).setParameter("bloodGroup", bloodGroup).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public BloodGroup findByBloodGroup(String bloodGroup) {
		try {
			return (BloodGroup) entityManager.createQuery("from BloodGroup where bloodGroup = :bloodGroup")
					.setParameter("bloodGroup", bloodGroup).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BloodGroup> getBloodGroupListSortedByBloodGroup() {
		try {
			return entityManager.createQuery("from BloodGroup order by bloodGroup").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BloodGroup> getBloodGroupListSortedById() {
		try {
			return entityManager.createQuery("from BloodGroup order by bloodGroupId").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

}
