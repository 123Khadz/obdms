package com.obdms.service;

import java.util.List;

import com.obdms.entity.BloodBank;
import com.obdms.entity.BloodGroup;
import com.obdms.entity.Hospital;

public interface BloodBankService {

	void addBloodBank(BloodBank bloodBank);

	void editBloodBank(BloodBank bloodBank);

	void deleteBloodBank(BloodBank bloodBank);

	BloodBank findBloodBank(Hospital hospital, BloodGroup bloodGroup);

	BloodBank findBloodBankById(Long bloodBankId);

	BloodBank findBloodBankByBloodGroupId(BloodGroup bloodGroup);

	BloodBank findBloodBankByHospitalId(Hospital hospital);
	
	List<BloodBank> getBloodBankList();

}
