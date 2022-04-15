package com.obdms.repository;

import com.obdms.entity.Donor;

public interface DonorRepository {
	
	void createDonor(Donor donor);
	
	void editDonor(Donor donor);
	
	void deleteDonor(Donor donor);
	
	Donor findDonorByEmail(String email);

}
