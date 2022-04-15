package com.obdms.service;

import com.obdms.entity.Admin;

public interface AdminService {
	
	Admin findByEmailAndPassword(String email, String password);

}
