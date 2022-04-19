package com.obdms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Hospital;
import com.obdms.repository.SearchRepository;
import com.obdms.service.SearchService;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	SearchRepository searchRepository;
	
	@Override
	public List<Hospital> hospitalsList(String searchText) {
		return searchRepository.hospitalsList(searchText);
	}

	@Override
	public List<BloodGroup> bloodGroupList(String searchText) {
		return searchRepository.bloodGroupList(searchText);
	}

}
