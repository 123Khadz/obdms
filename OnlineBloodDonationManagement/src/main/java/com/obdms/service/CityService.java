package com.obdms.service;

import java.util.List;

import com.obdms.entity.City;
import com.obdms.entity.State;

public interface CityService {
	
	void addCity(City city);

	void editCity(City city);

	void deleteCity(City city);

	City findByIdAndName(Long cityId, String cityName);

	City findByCityName(String cityName);
	
	City findByCityId(long cityId);

	List<City> getCityList(State StateId);
	
	List<City> getCityListSortedById();
}
