package com.obdms.service;

import java.util.List;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Hospital;

public interface SearchService {

	List<Hospital> hospitalsList(String searchText);

	List<BloodGroup> bloodGroupList(String searchText);

}
