package com.obdms.service;

import com.obdms.entity.Address;

public interface AddressService {
	
	void addAddress(Address address);

	void editAddress(Address address);

	void deleteAddress(Address address);
	
	Address findAddress(String location, Long pincode);
	
	Address findAddress(String location);

}
