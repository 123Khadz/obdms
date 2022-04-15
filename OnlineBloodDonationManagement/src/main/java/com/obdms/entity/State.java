package com.obdms.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "State")
public class State {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long stateId;

	@Column(nullable = false, length = 50, unique = true)
	private String stateName;

	@OneToMany(mappedBy = "state", cascade = CascadeType.ALL)
	private List<City> cities;

	@OneToMany(mappedBy = "state", cascade = CascadeType.ALL)
	private List<Address> addressList;

	public State() {
	}

	public long getStateId() {
		return stateId;
	}

	public void setStateId(long stateId) {
		this.stateId = stateId;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public List<City> getCities() {
		return cities;
	}

	public void setCities(List<City> cities) {
		this.cities = cities;
	}

	public List<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}

}
