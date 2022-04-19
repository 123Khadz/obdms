package com.obdms.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
import com.obdms.entity.BloodBank;
import com.obdms.entity.BloodGroup;
import com.obdms.entity.Donor;
import com.obdms.entity.Recipient;
import com.obdms.service.AddressService;
import com.obdms.service.AdminService;
import com.obdms.service.BloodBankService;
import com.obdms.service.BloodGroupService;
import com.obdms.service.DonorService;
import com.obdms.service.HospitalService;
import com.obdms.service.RecipientService;
import com.obdms.service.SearchService;
import com.obdms.service.StateService;

@Controller
public class HomeController {

	@Autowired
	AdminService adminService;

	@Autowired
	DonorService donorService;

	@Autowired
	RecipientService recipientService;

	@Autowired
	StateService stateService;

	@Autowired
	BloodGroupService bloodGroupService;
	
	@Autowired
	BloodBankService bloodBankService;
	
	@Autowired
	AddressService addressService;
	
	@Autowired
	HospitalService hospitalService;
	
	@Autowired
	SearchService searchService;

	@RequestMapping("/home")
	public String home() {
		return "Home";
	}

	@RequestMapping("/signup")
	public String signup(Model model) {
		model.addAttribute("stateList", stateService.getStateList());
		model.addAttribute("bloodGroupList", bloodGroupService.getBloodGroupListSortedByBloodGroup());
		return "SignUpDonor";
	}

	@RequestMapping("/signup_recipient")
	public String signup_recipient(Model model) {
		model.addAttribute("stateList", stateService.getStateList());
		model.addAttribute("bloodGroupList", bloodGroupService.getBloodGroupListSortedByBloodGroup());
		return "SignUpRecipient";
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
				Recipient recipient = recipientService.findRecipientByEmailAndPassword(email, password);
				if (recipient != null) {
					session.setAttribute("recipientUser", donor);
					page = "redirect:/recipienthome";
				} else {
					model.addAttribute("invalidLogin", true);
					model.addAttribute("loginValue", email);
					page = "home";
				}
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
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ArrayList getStockByBloodGroup(List<BloodGroup> bloodGroups) {
		ArrayList arrayList = new ArrayList();

		for (BloodGroup bloodGroup : bloodGroups) {
			HashMap<String, String> hashMap = new HashMap<String, String>();
			hashMap.put("bloodGroup", bloodGroup.getBloodGroup() + "");

			Integer stockOfBlood = 0;
			List<BloodBank> bloodBanks = bloodBankService.getBloodBankListByBloodGroup(bloodGroup);

			for (BloodBank bloodBank : bloodBanks) {
				stockOfBlood += bloodBank.getStock();
			}

			hashMap.put("stockOfBlood", stockOfBlood.toString());
			arrayList.add(hashMap);
		}
		return arrayList;

	}

	@PostMapping("/search")
	public String search(@RequestParam("searchText") String searchText, HttpServletRequest request, Model model) {
		List<BloodGroup> bloodGroups = searchService.bloodGroupList(searchText);
		model.addAttribute("bloodGroupList", getStockByBloodGroup(bloodGroups));
		model.addAttribute("hospitalListByName", searchService.hospitalsList(searchText));
		/*
		 * Address address = addressService.findAddress(searchText);
		 * model.addAttribute("hospitalListByAddress",
		 * hospitalService.findHospitalsByAddress(address));
		 */
		return "SearchResult";
	}

}
