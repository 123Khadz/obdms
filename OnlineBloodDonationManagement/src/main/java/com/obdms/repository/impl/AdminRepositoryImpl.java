package com.obdms.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.Admin;
import com.obdms.repository.AdminRepository;

@Repository
@Transactional
public class AdminRepositoryImpl implements AdminRepository {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public Admin findByEmailAndPassword(String email, String password) {
		try {
			return (Admin) entityManager.createQuery("from Admin where email = :email and password = :password")
					.setParameter("email", email).setParameter("password", password).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public Admin findByEmail(String email) {
		try {
			return (Admin) entityManager.createQuery("from Admin where email = :email").setParameter("email", email)
					.getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

}
