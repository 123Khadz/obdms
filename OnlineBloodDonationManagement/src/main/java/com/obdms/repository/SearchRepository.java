package com.obdms.repository;

import java.util.List;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Hospital;

public interface SearchRepository {
	
	List<Hospital> hospitalsList(String searchText);
	
	List<BloodGroup> bloodGroupList(String searchText);

}
