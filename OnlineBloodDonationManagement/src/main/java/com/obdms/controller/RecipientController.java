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
public class RecipientController {

	@Autowired
	CityService cityService;

	@Autowired
	StateService stateService;

	@Autowired
	AdminService adminService;

	@Autowired
	DonorService donorService;

	@Autowired
	RecipientService recipientService;

	@Autowired
	AddressService addressService;

	@Autowired
	BloodGroupService bloodGroupService;

	@PostMapping("/add_recipient")
	public String add_recipient(@RequestParam(value = "stateId") long stateId,
			@RequestParam(value = "cityId") long cityId, @RequestParam(value = "bloodGroupId") long bloodGroupId,
			Recipient recipient, Address address, Model model, HttpServletRequest request) {

		Admin admin = adminService.findByEmail(recipient.getEmail());
		Donor existingDonor = donorService.findDonorByEmail(recipient.getEmail());
		Recipient existingRecipient = recipientService.findRecipientByEmail(recipient.getEmail());

		if (admin == null && existingDonor == null && existingRecipient == null) {
			Address existingAddress = addressService.findAddress(address.getLocation(), address.getPincode());
			BloodGroup group = bloodGroupService.findByBloodGroupId(bloodGroupId);
			if (existingAddress == null) {
				City city = cityService.findByCityId(cityId);
				State state = stateService.findByStateId(stateId);
				address.setCity(city);
				address.setState(state);
				addressService.addAddress(address);
				recipient.setAddress(address);
			} else {
				recipient.setAddress(existingAddress);
			}
			recipient.setBloodGroup(group);
			recipient.setDpURL("images/clients.png");
			recipientService.createRecipient(recipient);

			HttpSession session = request.getSession();
			session.setAttribute("recipientUser", recipient);

			return "redirect:/recipienthome";
		} else {
			model.addAttribute("existRecipient", true);
			return "SignUpRecipient";
		}
	}

	@RequestMapping("/recipienthome")
	public String recipienthome(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		if (session.getAttribute("recipientUser") != null) {
			return "RecipientHome";
		}

		model.addAttribute("loginError", true);
		return "Home";
	}

}
