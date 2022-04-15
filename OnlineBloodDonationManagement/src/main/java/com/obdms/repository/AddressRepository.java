package com.obdms.repository;

import com.obdms.entity.Address;

public interface AddressRepository {
	
	void addAddress(Address address);

	void editAddress(Address address);

	void deleteAddress(Address address);
	
	Address findAddress(String location, Long pincode);

}
