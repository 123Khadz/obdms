package com.obdms.repository;

import java.util.List;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Donor;

public interface DonorRepository {

	void createDonor(Donor donor);

	void editDonor(Donor donor);

	void deleteDonor(Donor donor);

	Donor findDonorByEmail(String email);

	Donor findDonorByEmailAndPassword(String email, String password);

	List<Donor> getDonorList();

	List<Donor> getDonorListSortedById();

	List<Donor> getDonorListSortedByName();

	List<Donor> getDonorListByBloodGroup(BloodGroup group);

}
