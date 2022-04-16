package com.obdms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Donor;
import com.obdms.repository.DonorRepository;
import com.obdms.service.DonorService;

@Service
public class DonorServiceImpl implements DonorService {

	@Autowired
	private DonorRepository donorRepository;

	@Override
	public void createDonor(Donor donor) {
		if (donor != null)
			donorRepository.createDonor(donor);

	}

	@Override
	public void editDonor(Donor donor) {
		if (donor != null)
			donorRepository.editDonor(donor);

	}

	@Override
	public void deleteDonor(Donor donor) {
		if (donor != null)
			donorRepository.deleteDonor(donor);

	}

	@Override
	public Donor findDonorByEmail(String email) {
		Donor donor = null;
		if (email != null)
			donor = donorRepository.findDonorByEmail(email);
		return donor;
	}

	@Override
	public List<Donor> getDonorList() {
		return donorRepository.getDonorList();
	}

	@Override
	public List<Donor> getDonorListSortedById() {
		return donorRepository.getDonorListSortedById();
	}

	@Override
	public List<Donor> getDonorListSortedByName() {
		return donorRepository.getDonorListSortedByName();
	}

	@Override
	public List<Donor> getDonorListByBloodGroup(BloodGroup group) {
		return donorRepository.getDonorListByBloodGroup(group);
	}

}
