package com.obdms.service;

import java.util.List;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Donor;

public interface DonorService {

	void createDonor(Donor donor);

	void editDonor(Donor donor);

	void deleteDonor(Donor donor);

	Donor findDonorByEmail(String email);

	List<Donor> getDonorList();

	List<Donor> getDonorListSortedById();

	List<Donor> getDonorListSortedByName();

	List<Donor> getDonorListByBloodGroup(BloodGroup group);

}
