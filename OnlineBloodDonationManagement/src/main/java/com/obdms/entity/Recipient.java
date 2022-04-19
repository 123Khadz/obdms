package com.obdms.entity;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "Recipient")
public class Recipient {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long recipientId;

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

	@Column(length = 100, unique = true, nullable = false)
	@Pattern(regexp = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$", message = "Invalid Email")
	private String email;

	@Column(nullable = false, length = 50)
	private String password;

	@Column(length = 200)
	private String dpURL;

	@Column(nullable = false)
	private int status=1;

	@OneToMany(mappedBy = "recipient", cascade = CascadeType.ALL)
	private List<Receipt> receiptsList;

	public Recipient() {
	}

	public long getRecipientId() {
		return recipientId;
	}

	public void setRecipientId(long recipientId) {
		this.recipientId = recipientId;
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

	public List<Receipt> getReceiptsList() {
		return receiptsList;
	}

	public void setReceiptsList(List<Receipt> receiptsList) {
		this.receiptsList = receiptsList;
	}

}
