package com.obdms.repository;

import java.util.List;

import com.obdms.entity.City;
import com.obdms.entity.State;

public interface CityRepository {
	
	void addCity(City city);

	void editCity(City city);

	void deleteCity(City city);

	City findByIdAndName(Long cityId, String cityName);
	
	City findByCityId(long cityId);

	City findByCityName(String cityName);
	
	List<City> getCityList(State StateId);
	
	List<City> getCityListSortedById();

}
