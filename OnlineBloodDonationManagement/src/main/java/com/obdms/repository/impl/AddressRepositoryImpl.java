package com.obdms.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.Address;
import com.obdms.repository.AddressRepository;

@Repository
@Transactional
public class AddressRepositoryImpl implements AddressRepository {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public void addAddress(Address address) {
		entityManager.persist(address);
		
	}

	@Override
	public void editAddress(Address address) {
		entityManager.merge(address);
		
	}

	@Override
	public void deleteAddress(Address address) {
		if(entityManager.contains(address))
			entityManager.remove(address);
		
	}

	@Override
	public Address findAddress(String location, Long pincode) {
		try {
			return (Address) entityManager.createQuery("from Address where location = :location and pincode = :pincode")
					.setParameter("location", location).setParameter("pincode", pincode).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

}
