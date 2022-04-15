package com.obdms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.City;
import com.obdms.entity.State;
import com.obdms.repository.CityRepository;
import com.obdms.service.CityService;

@Service
public class CityServiceImpl implements CityService {

	@Autowired
	CityRepository cityRepository;

	@Override
	public void addCity(City city) {
		if (city != null)
			cityRepository.addCity(city);

	}

	@Override
	public void editCity(City city) {
		if (city != null)
			cityRepository.editCity(city);

	}

	@Override
	public void deleteCity(City city) {
		if (city != null)
			cityRepository.deleteCity(city);

	}

	@Override
	public City findByIdAndName(Long cityId, String cityName) {
		City city = null;
		if (cityId != null && cityName != null) {
			city = cityRepository.findByIdAndName(cityId, cityName);
		}
		return city;
	}

	@Override
	public City findByCityName(String cityName) {
		City city = null;
		if (cityName != null) {
			city = cityRepository.findByCityName(cityName);
		}
		return city;
	}

	@Override
	public List<City> getCityList(State StateId) {
		return cityRepository.getCityList(StateId);
	}

	@Override
	public List<City> getCityListSortedById() {
		return cityRepository.getCityListSortedById();
	}

	@Override
	public City findByCityId(long cityId) {
		City city = null;
		if (cityId != 0) {
			city = cityRepository.findByCityId(cityId);
		}
		return city;
	}

}
