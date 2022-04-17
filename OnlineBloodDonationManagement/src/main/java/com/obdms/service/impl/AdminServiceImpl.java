package com.obdms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.Admin;
import com.obdms.repository.AdminRepository;
import com.obdms.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminRepository adminRepository;

	@Override
	public Admin findByEmailAndPassword(String email, String password) {
		Admin admin = null;
		if (email != null && password != null) {
			admin = adminRepository.findByEmailAndPassword(email, password);
		}
		return admin;
	}

	@Override
	public Admin findByEmail(String email) {
		Admin admin = null;
		if (email != null) {
			admin = adminRepository.findByEmail(email);
		}
		return admin;
	}

}
