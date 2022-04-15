package com.obdms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obdms.entity.City;
import com.obdms.entity.State;
import com.obdms.service.CityService;
import com.obdms.service.StateService;

@Controller
public class CityController {

	@Autowired
	CityService cityService;

	@Autowired
	StateService stateService;

	@PostMapping("/add_city")
	public String add_city(@RequestParam(value = "stateId") long stateId,
			@RequestParam(value = "cityName") String cityName, Model model) {

		City existingCity = cityService.findByCityName(cityName);

		if (existingCity == null) {
			State state = stateService.findByStateId(stateId);
			City city = new City();
			city.setState(state);
			city.setCityName(cityName);
			cityService.addCity(city);
			model.addAttribute("addCity", true);
		} else {
			model.addAttribute("existCity", true);
		}
		model.addAttribute("stateList", stateService.getStateList());
		model.addAttribute("cityList", cityService.getCityListSortedById());
		return "AddCity";
	}

}
