package com.obdms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obdms.entity.Admin;
import com.obdms.entity.Donor;
import com.obdms.service.AdminService;
import com.obdms.service.BloodGroupService;
import com.obdms.service.DonorService;
import com.obdms.service.StateService;

@Controller
public class HomeController {

	@Autowired
	AdminService adminService;

	@Autowired
	DonorService donorService;

	@Autowired
	StateService stateService;

	@Autowired
	BloodGroupService bloodGroupService;

	@RequestMapping("/home")
	public String home() {
		return "Home";
	}

	@RequestMapping("/signup")
	public String signup(Model model) {
		model.addAttribute("stateList", stateService.getStateList());
		model.addAttribute("bloodGroupList", bloodGroupService.getBloodGroupListSortedByBloodGroup());
		return "SignUp";
	}

	@RequestMapping("/about")
	public String about() {
		return "AboutUs";
	}

	@RequestMapping("/contact")
	public String contact() {
		return "ContactUs";
	}

	@RequestMapping("/forgotPassword")
	public String forgotPassword() {
		return "ForgotPassword";
	}

	@PostMapping("/login")
	public String loginUser(@RequestParam(value = "email") String email, @RequestParam("password") String password,
			HttpServletRequest request, Model model) {
		String page = null;
		HttpSession session = request.getSession();
		Admin admin = adminService.findByEmailAndPassword(email, password);

		if (admin != null) {
			session.setAttribute("adminUser", admin);
			page = "redirect:/adminhome";
		} else {
			Donor donor = donorService.findDonorByEmailAndPassword(email, password);
			if (donor != null) {
				session.setAttribute("donorUser", donor);
				page = "redirect:/donorhome";
			} else {
				model.addAttribute("invalidLogin", true);
				model.addAttribute("loginValue", email);
				page = "home";
			}
		}
		return page;
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/home";
	}

}
