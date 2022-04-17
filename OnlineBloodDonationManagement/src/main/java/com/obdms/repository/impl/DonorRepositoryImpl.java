package com.obdms.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Donor;
import com.obdms.repository.DonorRepository;

@Repository
@Transactional
public class DonorRepositoryImpl implements DonorRepository {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public void createDonor(Donor donor) {
		entityManager.persist(donor);

	}

	@Override
	public void editDonor(Donor donor) {
		entityManager.merge(donor);

	}

	@Override
	public void deleteDonor(Donor donor) {
		if (entityManager.contains(donor))
			entityManager.remove(donor);
	}

	@Override
	public Donor findDonorByEmail(String email) {
		try {
			return (Donor) entityManager.createQuery("from Donor where email = :email").setParameter("email", email)
					.getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public Donor findDonorByEmailAndPassword(String email, String password) {
		try {
			return (Donor) entityManager.createQuery("from Donor where email = :email and password = :password")
					.setParameter("email", email).setParameter("password", password).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Donor> getDonorList() {
		try {
			return entityManager.createQuery("from Donor").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Donor> getDonorListSortedById() {
		try {
			return entityManager.createQuery("from Donor order by donorId").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Donor> getDonorListSortedByName() {
		try {
			return entityManager.createQuery("from Donor order by firstName").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Donor> getDonorListByBloodGroup(BloodGroup group) {
		try {
			return entityManager.createQuery("from Donor where bloodGroup = :bloodGroup")
					.setParameter("bloodGroup", group).getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

}
