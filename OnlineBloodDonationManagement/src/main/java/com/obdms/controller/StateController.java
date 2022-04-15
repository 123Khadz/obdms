package com.obdms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obdms.entity.State;
import com.obdms.service.StateService;

@Controller
public class StateController {
	
	@Autowired
	private StateService stateService;
	
	@PostMapping("/add_state")
	public String add_state(@RequestParam(value = "stateName") String stateName, Model model) {
		
		State existingState = stateService.findByStateName(stateName);
		
		if (existingState == null) {
			State state = new State();
			state.setStateName(stateName);
			stateService.addState(state);
			model.addAttribute("addState", true);
		}
		else {
			model.addAttribute("existState", true);
		}
		model.addAttribute("stateList",stateService.getStateListSortedById());
		return "AddState";
	}

}
