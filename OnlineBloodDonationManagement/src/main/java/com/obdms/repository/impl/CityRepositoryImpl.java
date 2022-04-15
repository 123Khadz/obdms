package com.obdms.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.obdms.entity.City;
import com.obdms.entity.State;
import com.obdms.repository.CityRepository;

@Repository
@Transactional
public class CityRepositoryImpl implements CityRepository {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public void addCity(City city) {
		entityManager.persist(city);

	}

	@Override
	public void editCity(City city) {
		entityManager.merge(city);

	}

	@Override
	public void deleteCity(City city) {
		if (entityManager.contains(city))
			entityManager.remove(city);

	}

	@Override
	public City findByIdAndName(Long cityId, String cityName) {
		try {
			return (City) entityManager.createQuery("from City where cityId = :cityId and cityName = :cityName")
					.setParameter("cityId", cityId).setParameter("cityName", cityName).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public City findByCityName(String cityName) {
		try {
			return (City) entityManager.createQuery("from City where cityName = :cityName")
					.setParameter("cityName", cityName).getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<City> getCityList(State state) {
		try {
			return entityManager.createQuery("from City where state = :stateId order by cityName")
					.setParameter("stateId", state).getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<City> getCityListSortedById() {
		try {
			return entityManager.createQuery("from City").getResultList();
		} catch (NoResultException e) {
		}
		return null;
	}

	@Override
	public City findByCityId(long cityId) {
		try {
			return (City) entityManager.createQuery("from City where cityId = :cityId").setParameter("cityId", cityId)
					.getSingleResult();
		} catch (NoResultException e) {
		}
		return null;
	}

}
