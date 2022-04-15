package com.obdms.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

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
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteDonor(Donor donor) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Donor findDonorByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}
