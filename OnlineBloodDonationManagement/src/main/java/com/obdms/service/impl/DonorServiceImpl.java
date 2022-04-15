package com.obdms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.Donor;
import com.obdms.repository.DonorRepository;
import com.obdms.service.DonorService;

@Service
public class DonorServiceImpl implements DonorService {

	@Autowired
	private DonorRepository donorRepository;
	
	@Override
	public void createDonor(Donor donor) {
		if(donor != null)
			donorRepository.createDonor(donor);
		
	}

	@Override
	public void editDonor(Donor donor) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteDonor(Donor donor) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Donor findDonorByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}
