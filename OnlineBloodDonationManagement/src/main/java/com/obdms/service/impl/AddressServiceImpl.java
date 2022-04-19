package com.obdms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.Address;
import com.obdms.repository.AddressRepository;
import com.obdms.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {
	
	@Autowired
	AddressRepository addressRepository;

	@Override
	public void addAddress(Address address) {
		if(address != null)
			addressRepository.addAddress(address);
	}

	@Override
	public void editAddress(Address address) {
		if(address != null)
			addressRepository.editAddress(address);
		
	}

	@Override
	public void deleteAddress(Address address) {
		if(address != null)
			addressRepository.deleteAddress(address);
		
	}

	@Override
	public Address findAddress(String location, Long pincode) {
		Address address = null;
		if (location != null && pincode != null)
			address = addressRepository.findAddress(location, pincode);
		return address;
	}

	@Override
	public Address findAddress(String location) {
		Address address = null;
		if (location != null)
			address = addressRepository.findAddress(location);
		return address;
	}

}
