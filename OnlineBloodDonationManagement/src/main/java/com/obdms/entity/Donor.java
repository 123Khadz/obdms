package com.obdms.entity;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "Donor")
public class Donor {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long donorId;

	@Column(nullable = false, length = 50)
	private String firstName;

	@Column(nullable = false, length = 50)
	private String lastName;

	@Column(nullable = false, length = 10)
	private String gender;

	@Column(nullable = false)
	private int age;

	@ManyToOne
	@JoinColumn(name = "bloodGroup")
	private BloodGroup bloodGroup;

	@ManyToOne
	@JoinColumn(name = "address")
	private Address address;

	@Column(nullable = false, length = 10)
	private long phoneNumber;

	@Column(nullable = false, length = 100, unique = true)
	@Pattern(regexp = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$", message = "Invalid Email")
	private String email;

	@Column(nullable = false, length = 50)
	private String password;

	@Column(length = 200)
	private String dpURL;

	@Column(nullable = false)
	private int status=1;

	@OneToMany(mappedBy = "donor", cascade = CascadeType.ALL)
	private List<Appointment> appointmentsList;

	@OneToMany(mappedBy = "donor", cascade = CascadeType.ALL)
	private List<BloodBankDonor> bloodBankDonorsList;

	public Donor() {
	}

	public long getDonorId() {
		return donorId;
	}

	public void setDonorId(long donorId) {
		this.donorId = donorId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public BloodGroup getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(BloodGroup bloodGroup) {
		this.bloodGroup = bloodGroup;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDpURL() {
		return dpURL;
	}

	public void setDpURL(String dpURL) {
		this.dpURL = dpURL;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public List<Appointment> getAppointmentsList() {
		return appointmentsList;
	}

	public void setAppointmentsList(List<Appointment> appointmentsList) {
		this.appointmentsList = appointmentsList;
	}

	public List<BloodBankDonor> getBloodBankDonorsList() {
		return bloodBankDonorsList;
	}

	public void setBloodBankDonorsList(List<BloodBankDonor> bloodBankDonorsList) {
		this.bloodBankDonorsList = bloodBankDonorsList;
	}

}
