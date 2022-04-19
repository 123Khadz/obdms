package com.obdms.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Recipient;
import com.obdms.repository.RecipientRepository;

@Repository
@Transactional
public class RecipientRepositoryImpl implements RecipientRepository {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public void createRecipient(Recipient recipient) {
		entityManager.persist(recipient);

	}

	@Override
	public void editRecipient(Recipient recipient) {
		entityManager.merge(recipient);

	}

	@Override
	public void deleteRecipient(Recipient recipient) {
		if (entityManager.contains(recipient))
			entityManager.remove(recipient);

	}

	@Override
	public Recipient findRecipientByEmail(String email) {
		try {
			return (Recipient) entityManager.createQuery("from Recipient where email = :email")
					.setParameter("email", email).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public Recipient findRecipientByEmailAndPassword(String email, String password) {
		try {
			return (Recipient) entityManager.createQuery("from Recipient where email = :email and password = :password and status=1")
					.setParameter("email", email).setParameter("password", password).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Recipient> getRecipientList() {
		try {
			return entityManager.createQuery("from Recipient").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Recipient> getRecipientListSortedById() {
		try {
			return entityManager.createQuery("from Recipient order by recipientId desc").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Recipient> getRecipientListSortedByName() {
		try {
			return entityManager.createQuery("from Recipient order by firstName").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Recipient> getRecipientListByBloodGroup(BloodGroup group) {
		try {
			return entityManager.createQuery("from Recipient where bloodGroup = :bloodGroup")
					.setParameter("bloodGroup", group).getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

}
