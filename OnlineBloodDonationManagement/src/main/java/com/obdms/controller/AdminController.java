package com.obdms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.obdms.service.BloodBankService;
import com.obdms.service.BloodGroupService;
import com.obdms.service.CityService;
import com.obdms.service.HospitalService;
import com.obdms.service.StateService;

@Controller
public class AdminController {

	@Autowired
	private StateService stateService;
	
	@Autowired
	private CityService cityService;
	
	@Autowired
	private HospitalService hospitalService;
	
	@Autowired
	private BloodGroupService bloodGroupService;
	
	@Autowired
	BloodBankService bloodBankService;

	@RequestMapping("/adminhome")
	public String home(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		if (session.getAttribute("adminUser") != null)
			return "AdminHome";
		
		model.addAttribute("loginError", true);
		return "Home";
	}

	@RequestMapping("/add_state")
	public String add_state(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("adminUser") != null) {
			model.addAttribute("stateList", stateService.getStateListSortedById());
			return "AddState";
		}
		model.addAttribute("loginError", true);
		return "Home";
	}

	@RequestMapping("/add_city")
	public String add_city(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("adminUser") != null) {
			model.addAttribute("stateList", stateService.getStateList());
			model.addAttribute("cityList", cityService.getCityListSortedById());
			return "AddCity";
		}
		model.addAttribute("loginError", true);
		return "Home";
	}

	@RequestMapping("/add_hospital")
	public String add_hospital(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("adminUser") != null) {
			model.addAttribute("hospitalList", hospitalService.getHospitalListSortedById());
			model.addAttribute("stateList", stateService.getStateList());
			return "AddHospital";
		}
		model.addAttribute("loginError", true);
		return "Home";
	}

	@RequestMapping("/add_blood_group")
	public String add_blood_group(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("adminUser") != null) {
			model.addAttribute("bloodGroupList",bloodGroupService.getBloodGroupListSortedById());
			return "AddBloodGroup";
		}
		model.addAttribute("loginError", true);
		return "Home";
	}
	
	@RequestMapping("/add_blood_bank")
	public String add_blood_bank(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("adminUser") != null) {
			model.addAttribute("hospitalList", hospitalService.getHospitalListSortedById());
			model.addAttribute("bloodGroupList",bloodGroupService.getBloodGroupListSortedById());
			model.addAttribute("bloodBankList", bloodBankService.getBloodBankList());
			return "AddBloodBank";
		}
		model.addAttribute("loginError", true);
		return "Home";
	}

}
