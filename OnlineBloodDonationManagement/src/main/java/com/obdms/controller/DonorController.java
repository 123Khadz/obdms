package com.obdms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obdms.entity.Address;
import com.obdms.entity.Admin;
import com.obdms.entity.BloodGroup;
import com.obdms.entity.City;
import com.obdms.entity.Donor;
import com.obdms.entity.Recipient;
import com.obdms.entity.State;
import com.obdms.service.AddressService;
import com.obdms.service.AdminService;
import com.obdms.service.BloodGroupService;
import com.obdms.service.CityService;
import com.obdms.service.DonorService;
import com.obdms.service.RecipientService;
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
	RecipientService recipientService;

	@Autowired
	AddressService addressService;

	@Autowired
	BloodGroupService bloodGroupService;

	@PostMapping("/add_donor")
	public String add_donor(@RequestParam(value = "stateId") long stateId, @RequestParam(value = "cityId") long cityId,
			@RequestParam(value = "bloodGroupId") long bloodGroupId, Donor donor, Address address, Model model,
			HttpServletRequest request) {

		Admin admin = adminService.findByEmail(donor.getEmail());
		Donor existingDonor = donorService.findDonorByEmail(donor.getEmail());
		Recipient existingRecipient = recipientService.findRecipientByEmail(donor.getEmail());

		if (admin == null && existingDonor == null && existingRecipient == null) {
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
			donor.setDpURL("images/clients.png");
			donorService.createDonor(donor);

			HttpSession session = request.getSession();
			session.setAttribute("donorUser", donor);

			return "redirect:/donorhome";
		} else {
			model.addAttribute("existDonor", true);
			return "SignUp";
		}

	}

	@RequestMapping("/donorhome")
	public String donorhome(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		if (session.getAttribute("donorUser") != null) {
			return "DonorHome";
		}

		model.addAttribute("loginError", true);
		return "Home";
	}
}
