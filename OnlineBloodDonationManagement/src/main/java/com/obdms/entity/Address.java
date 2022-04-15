package com.obdms.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "Address")
public class Address {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long addressId;

	@ManyToOne
	@JoinColumn(name = "state")
	private State state;

	@ManyToOne
	@JoinColumn(name = "city")
	private City city;

	@Column(nullable = false, length = 100)
	private String location;

	@Column(nullable = false, length = 8)
	private long pincode;

	@OneToMany(mappedBy = "address", cascade = CascadeType.ALL)
	private List<Donor> donorsList;

	@OneToMany(mappedBy = "address", cascade = CascadeType.ALL)
	private List<Hospital> hospitalsList;

	public Address() {
	}

	public long getAddressId() {
		return addressId;
	}

	public void setAddressId(long addressId) {
		this.addressId = addressId;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public long getPincode() {
		return pincode;
	}

	public void setPincode(long pincode) {
		this.pincode = pincode;
	}

	public List<Donor> getDonorsList() {
		return donorsList;
	}

	public void setDonorsList(List<Donor> donorsList) {
		this.donorsList = donorsList;
	}

	public List<Hospital> getHospitalsList() {
		return hospitalsList;
	}

	public void setHospitalsList(List<Hospital> hospitalsList) {
		this.hospitalsList = hospitalsList;
	}

}
