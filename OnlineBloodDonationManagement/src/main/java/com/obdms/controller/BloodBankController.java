package com.obdms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obdms.entity.BloodBank;
import com.obdms.entity.BloodGroup;
import com.obdms.entity.Hospital;
import com.obdms.service.BloodBankService;
import com.obdms.service.BloodGroupService;
import com.obdms.service.HospitalService;

@Controller
public class BloodBankController {

	@Autowired
	HospitalService hospitalService;

	@Autowired
	BloodGroupService bloodGroupService;

	@Autowired
	BloodBankService bloodBankService;

	@PostMapping("/add_blood_bank")
	public String add_blood_bank(@RequestParam(value = "hospitalId") long hospitalId,
			@RequestParam(value = "bloodGroupId") long bloodGroupId, BloodBank bloodBank, Model model) {

		Hospital hospital = hospitalService.findHospitalById(hospitalId);
		BloodGroup bloodGroup = bloodGroupService.findByBloodGroupId(bloodGroupId);
		BloodBank existingBloodBank = bloodBankService.findBloodBank(hospital, bloodGroup);

		if (existingBloodBank == null) {
			bloodBank.setHospital(hospital);
			bloodBank.setBloodGroup(bloodGroup);
			bloodBankService.addBloodBank(bloodBank);
			model.addAttribute("addBloodBank", true);
		} else {
			model.addAttribute("existBloodBank", true);
		}
		model.addAttribute("hospitalList", hospitalService.getHospitalListSortedById());
		model.addAttribute("bloodGroupList", bloodGroupService.getBloodGroupListSortedById());
		model.addAttribute("bloodBankList", bloodBankService.getBloodBankList());
		return "AddBloodBank";
	}

}
