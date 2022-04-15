package com.obdms.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.obdms.entity.Address;
import com.obdms.entity.City;
import com.obdms.entity.Hospital;
import com.obdms.entity.State;
import com.obdms.service.AddressService;
import com.obdms.service.CityService;
import com.obdms.service.HospitalService;
import com.obdms.service.StateService;

@Controller
public class HospitalController {

	@Autowired
	CityService cityService;

	@Autowired
	StateService stateService;

	@Autowired
	HospitalService hospitalService;

	@Autowired
	AddressService addressService;

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@GetMapping("/fetchCity")
	@ResponseBody
	public ArrayList fetchCity(@RequestParam(value = "stateId") long stateId, Model model) {
		State state = stateService.findByStateId(stateId);
		List<City> cityList = cityService.getCityList(state);
		model.addAttribute("cityList", cityList);
		ArrayList arrayList = new ArrayList();
		for (City city : cityList) {
			HashMap<String, String> hashMap = new HashMap<String, String>();
			hashMap.put("cityId", city.getCityId() + "");
			hashMap.put("cityName", city.getCityName());
			arrayList.add(hashMap);
		}
		return arrayList;
	}

	@PostMapping("/add_hospital")
	public String add_hospital(@RequestParam(value = "stateId") long stateId,
			@RequestParam(value = "cityId") long cityId, Hospital hospital, Address address, Model model) {

		Hospital existingHospital = hospitalService.findHospitalByName(hospital.getHospitalName());

		if (existingHospital == null) {
			Address existingAddress = addressService.findAddress(address.getLocation(), address.getPincode());
			if (existingAddress == null) {
				City city = cityService.findByCityId(cityId);
				State state = stateService.findByStateId(stateId);
				address.setCity(city);
				address.setState(state);
				addressService.addAddress(address);
				hospital.setAddress(address);
			} else {
				hospital.setAddress(existingAddress);
			}
			hospitalService.addHospital(hospital);
			model.addAttribute("addHospital", true);
		} else {
			model.addAttribute("existHospital", true);
		}
		model.addAttribute("stateList", stateService.getStateList());
		model.addAttribute("hospitalList", hospitalService.getHospitalListSortedById());
		return "AddHospital";
	}

}
