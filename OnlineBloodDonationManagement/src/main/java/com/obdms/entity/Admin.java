package com.obdms.entity;

import javax.persistence.*;

@Entity
@Table(name = "Admin")
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int adminId;

	@Column(nullable = false, length = 100, unique = true)
	private String email;
	
	@Column(nullable = false, length = 50)
	private String password;

	public Admin() {
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
