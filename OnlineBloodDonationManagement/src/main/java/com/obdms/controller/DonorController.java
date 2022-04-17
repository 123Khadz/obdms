package com.obdms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obdms.entity.Address;
import com.obdms.entity.Admin;
import com.obdms.entity.BloodGroup;
import com.obdms.entity.City;
import com.obdms.entity.Donor;
import com.obdms.entity.State;
import com.obdms.service.AddressService;
import com.obdms.service.AdminService;
import com.obdms.service.BloodGroupService;
import com.obdms.service.CityService;
import com.obdms.service.DonorService;
import com.obdms.service.StateService;

@Controller
public class DonorController {

	@Autowired
	AdminService adminService;
	
	@Autowired
	CityService cityService;

	@Autowired
	StateService stateService;

	@Autowired
	DonorService donorService;

	@Autowired
	AddressService addressService;

	@Autowired
	BloodGroupService bloodGroupService;

	@PostMapping("/add_donor")
	public String add_donor(@RequestParam(value = "stateId") long stateId,
			@RequestParam(value = "cityId") long cityId, @RequestParam(value = "bloodGroupId") long bloodGroupId,
			Donor donor, Address address, Model model, HttpServletRequest request) {

		Admin admin = adminService.findByEmail(donor.getEmail()); 
		Donor existingDonor = donorService.findDonorByEmail(donor.getEmail());

		if (admin == null && existingDonor == null) {
			Address existingAddress = addressService.findAddress(address.getLocation(), address.getPincode());
			BloodGroup group = bloodGroupService.findByBloodGroupId(bloodGroupId);
			if (existingAddress == null) {
				City city = cityService.findByCityId(cityId);
				State state = stateService.findByStateId(stateId);
				address.setCity(city);
				address.setState(state);
				addressService.addAddress(address);
				donor.setAddress(address);
			} else {
				donor.setAddress(existingAddress);
			}
			donor.setBloodGroup(group);
			donor.setDpURL("images/body.png");
			donorService.createDonor(donor);
			
			HttpSession session = request.getSession();
			session.setAttribute("donorUser", donor);
			model.addAttribute("donor", donor);
			return "redirect:/DonorHome";
		} else {
			model.addAttribute("existDonor", true);
			return "SignUp";
		}

	}

}
