package com.obdms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.BloodBank;
import com.obdms.entity.BloodGroup;
import com.obdms.entity.Hospital;
import com.obdms.repository.BloodBankRepository;
import com.obdms.service.BloodBankService;

@Service
public class BloodBankServiceImpl implements BloodBankService {

	@Autowired
	BloodBankRepository bloodBankRepository;
	
	@Override
	public void addBloodBank(BloodBank bloodBank) {
		if (bloodBank != null)
			bloodBankRepository.addBloodBank(bloodBank);
		
	}

	@Override
	public void editBloodBank(BloodBank bloodBank) {
		if (bloodBank != null)
			bloodBankRepository.editBloodBank(bloodBank);
		
	}

	@Override
	public void deleteBloodBank(BloodBank bloodBank) {
		if (bloodBank != null)
			bloodBankRepository.deleteBloodBank(bloodBank);
		
	}

	@Override
	public BloodBank findBloodBank(Hospital hospital, BloodGroup bloodGroup) {
		BloodBank bloodBank = null;
		if (hospital != null && bloodGroup != null)
			bloodBank = bloodBankRepository.findBloodBank(hospital, bloodGroup);
		return bloodBank;
	}

	@Override
	public BloodBank findBloodBankById(Long bloodBankId) {
		BloodBank bloodBank = null;
		if (bloodBankId != null)
			bloodBank = bloodBankRepository.findBloodBankById(bloodBankId);
		return bloodBank;
	}

	@Override
	public List<BloodBank> getBloodBankListByBloodGroup(BloodGroup bloodGroup) {
		return bloodBankRepository.getBloodBankListByBloodGroup(bloodGroup);
	}

	@Override
	public BloodBank findBloodBankByHospitalId(Hospital hospital) {
		BloodBank bloodBank = null;
		if (hospital != null)
			bloodBank = bloodBankRepository.findBloodBankByHospitalId(hospital);
		return bloodBank;
	}

	@Override
	public List<BloodBank> getBloodBankList() {
		return bloodBankRepository.getBloodBankList();
	}

}
