package com.obdms.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "City")
public class City {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long cityId;

	@ManyToOne
	@JoinColumn(name = "state")
	private State state;

	@Column(nullable = false, length = 50, unique = true)
	private String cityName;

	@OneToMany(mappedBy = "city", cascade = CascadeType.ALL)
	private List<Address> addressList;

	public City() {
	}

	public long getCityId() {
		return cityId;
	}

	public void setCityId(long cityId) {
		this.cityId = cityId;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public List<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}

}
