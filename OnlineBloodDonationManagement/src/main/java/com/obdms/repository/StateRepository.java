package com.obdms.repository;

import java.util.List;

import com.obdms.entity.State;

public interface StateRepository {
	
	void addState(State state);
	
	void editState(State state);
	
	void deleteState(State state);
	
	State findByStateId(Long stateId);
	
	State findByIdAndName(Long stateId, String stateName);
	
	State findByStateName(String stateName);
	
	List<State> getStateList();
	
	List<State> getStateListSortedById();
}
