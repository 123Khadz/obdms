package com.obdms.service;

import com.obdms.entity.Donor;

public interface DonorService {

	void createDonor(Donor donor);

	void editDonor(Donor donor);

	void deleteDonor(Donor donor);

	Donor findDonorByEmail(String email);

}
