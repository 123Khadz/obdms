package com.obdms.entity;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "Hospital")
public class Hospital {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long hospitalId;

	@Column(nullable = false, length = 100)
	private String hospitalName;

	@Column(nullable = false, length = 50)
	private String category;

	@ManyToOne
	@JoinColumn(name = "address")
	private Address address;

	@Column(nullable = false, length = 10)
	private long phoneNumber;

	@Column(length = 100, unique = true)
	@Pattern(regexp = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$", message = "Invalid Email")
	private String email;

	@Column(nullable = false)
	private int status=1;

	@OneToMany(mappedBy = "hospital", cascade = CascadeType.ALL)
	private List<BloodBank> bloodBanksList;

	@OneToMany( mappedBy = "hospital", cascade = CascadeType.ALL)
	private List<Appointment> appointmentsList;

	public Hospital() {
	}

	public long getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(long hospitalId) {
		this.hospitalId = hospitalId;
	}

	public String getHospitalName() {
		return hospitalName;
	}

	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public List<BloodBank> getBloodBanksList() {
		return bloodBanksList;
	}

	public void setBloodBanksList(List<BloodBank> bloodBanksList) {
		this.bloodBanksList = bloodBanksList;
	}

	public List<Appointment> getAppointmentsList() {
		return appointmentsList;
	}

	public void setAppointmentsList(List<Appointment> appointmentsList) {
		this.appointmentsList = appointmentsList;
	}

}
