package com.obdms.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Hospital;
import com.obdms.repository.SearchRepository;

@Repository
@Transactional
public class SearchRepositoryImpl implements SearchRepository {

	@PersistenceContext
	private EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<BloodGroup> bloodGroupList(String searchText) {
		searchText = "%" + searchText.trim().toLowerCase() + "%";
		return entityManager
				.createQuery("from BloodGroup where lower(bloodGroup) like :searchText").setParameter("searchText", searchText).getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Hospital> hospitalsList(String searchText) {
		searchText = "%" + searchText.trim().toLowerCase() + "%";
		return entityManager
				.createQuery("from Hospital where lower(hospitalName) like :searchText").setParameter("searchText", searchText).getResultList();
	}

}
