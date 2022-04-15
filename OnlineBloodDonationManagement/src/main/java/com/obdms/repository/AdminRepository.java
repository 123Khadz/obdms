package com.obdms.repository;

import com.obdms.entity.Admin;

public interface AdminRepository {
	
	Admin findByEmailAndPassword(String email, String password);

}
