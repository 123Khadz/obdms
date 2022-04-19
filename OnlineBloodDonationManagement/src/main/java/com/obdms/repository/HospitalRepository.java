package com.obdms.repository;

import java.util.List;

import com.obdms.entity.Address;
import com.obdms.entity.Hospital;

public interface HospitalRepository {
	
	void addHospital(Hospital hospital);

	void editHospital(Hospital hospital);

	void deleteHospital(Hospital hospital);
	
	List<Hospital> getHospitalListSortedById();
	
	List<Hospital> getHospitalListSortedByName();
	
	Hospital findHospitalByName(String hospitalName);
	
	Hospital findHospitalById(Long hospitalId);
	
	List<Hospital> findHospitalsByAddress(Address address);

}
