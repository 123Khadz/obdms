package com.obdms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.Address;
import com.obdms.entity.Hospital;
import com.obdms.repository.HospitalRepository;
import com.obdms.service.HospitalService;

@Service
public class HospitalServiceImpl implements HospitalService {

	@Autowired
	HospitalRepository hospitalRepository;

	@Override
	public void addHospital(Hospital hospital) {
		if (hospital != null)
			hospitalRepository.addHospital(hospital);

	}

	@Override
	public void editHospital(Hospital hospital) {
		if (hospital != null)
			hospitalRepository.editHospital(hospital);

	}

	@Override
	public void deleteHospital(Hospital hospital) {
		if (hospital != null)
			hospitalRepository.deleteHospital(hospital);

	}

	@Override
	public List<Hospital> getHospitalListSortedById() {
		return hospitalRepository.getHospitalListSortedById();
	}

	@Override
	public List<Hospital> getHospitalListSortedByName() {
		return hospitalRepository.getHospitalListSortedByName();
	}

	@Override
	public Hospital findHospitalByName(String hospitalName) {
		Hospital hospital = null;
		if (hospitalName != null)
			hospital= hospitalRepository.findHospitalByName(hospitalName);
		return hospital;
	}

	@Override
	public Hospital findHospitalById(Long hospitalId) {
		Hospital hospital = null;
		if (hospitalId != null)
			hospital= hospitalRepository.findHospitalById(hospitalId);
		return hospital;
	}

	@Override
	public List<Hospital> findHospitalsByAddress(Address address) {
		return hospitalRepository.findHospitalsByAddress(address);
	}

}
