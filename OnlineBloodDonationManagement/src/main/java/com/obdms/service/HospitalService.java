package com.obdms.service;

import java.util.List;

import com.obdms.entity.Hospital;

public interface HospitalService {
	
	void addHospital(Hospital hospital);

	void editHospital(Hospital hospital);

	void deleteHospital(Hospital hospital);
	
	List<Hospital> getHospitalListSortedById();
	
	List<Hospital> getHospitalListSortedByName();
	
	List<Hospital> getHospitalList(long stateId, long cityId);
	
	Hospital findHospitalByName(String hospitalName);
	
	Hospital findHospitalById(Long hospitalId);

}
