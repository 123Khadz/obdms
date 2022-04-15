package com.obdms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.obdms.entity.Donor;

@Controller
public class DonorController {
	
	@GetMapping("/signup")
	public String getCreateContactPage(Model model) {
		Donor donor = new Donor();
		model.addAttribute("registerDonor", donor);
		model.addAttribute("adding", true);
		return "SignUp";
	}
	
	@PostMapping("/signup")
	public String donorRegister(@ModelAttribute("registerDonor") @Valid Donor donor, BindingResult result,
			HttpServletRequest request, Model model) {

		if (result.hasErrors()) {
			model.addAttribute("adding", true);
			return "SignUp";
		}
		
		/*
		 * HttpSession session = request.getSession(); Donor user = (Donor)
		 * session.getAttribute("currentUser"); if (donor != null) {
		 * donor.setDonorId(user); contactDao.createContact(contact); }
		 */
		
		return "redirect:/home";
	}

}
