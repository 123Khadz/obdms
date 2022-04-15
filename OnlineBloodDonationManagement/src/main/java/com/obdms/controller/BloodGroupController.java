package com.obdms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obdms.entity.BloodGroup;
import com.obdms.service.BloodGroupService;

@Controller
public class BloodGroupController {
	
	@Autowired
	private BloodGroupService bloodGroupService;
	
	@PostMapping("/add_blood_group")
	public String add_blood_group(@RequestParam(value = "bloodGroup") String bloodGroup, Model model) {
		
		BloodGroup existingBloodGroup = bloodGroupService.findByBloodGroup(bloodGroup);
		
		if (existingBloodGroup == null) {
			BloodGroup group = new BloodGroup();
			group.setBloodGroup(bloodGroup);
			bloodGroupService.addBloodGroup(group);
			model.addAttribute("addBloodGroup", true);
		}
		else {
			model.addAttribute("existBloodGroup", true);
		}
		model.addAttribute("bloodGroupList",bloodGroupService.getBloodGroupListSortedById());
		return "AddBloodGroup";
	}

}
