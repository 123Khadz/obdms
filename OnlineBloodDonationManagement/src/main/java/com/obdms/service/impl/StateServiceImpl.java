package com.obdms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.State;
import com.obdms.repository.StateRepository;
import com.obdms.service.StateService;

@Service
public class StateServiceImpl implements StateService {
	
	@Autowired
	StateRepository stateRepository;
	
	@Override
	public State findByIdAndName(Long stateId, String stateName) {
		State state = null;
		if (stateId != null && stateName != null) {
			state = stateRepository.findByIdAndName(stateId,stateName);
		}
		return state;
	}
	
	@Override
	public State findByStateId(Long stateId) {
		State state = null;
		if (stateId != null) {
			state = stateRepository.findByStateId(stateId);
		}
		return state;
	}

	@Override
	public State findByStateName(String stateName) {
		State state = null;
		if (stateName != null) {
			state = stateRepository.findByStateName(stateName);
		}
		return state;
	}

	@Override
	public void addState(State state) {
		if(state != null)
			stateRepository.addState(state);
	}

	@Override
	public void editState(State state) {
		if (state != null)
			stateRepository.editState(state);
		
	}

	@Override
	public void deleteState(State state) {
		if (state != null)
			stateRepository.deleteState(state);;
		
	}

	@Override
	public List<State> getStateList() {
		return stateRepository.getStateList();
	}

	@Override
	public List<State> getStateListSortedById() {
		return stateRepository.getStateListSortedById();
	}

}
