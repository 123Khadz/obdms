package com.obdms.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "BloodBank")
public class BloodBank {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long bloodBankId;

	@ManyToOne
	@JoinColumn(name = "bloodGroup")
	private BloodGroup bloodGroup;

	@ManyToOne
	@JoinColumn(name = "hospital")
	private Hospital hospital;

	@Column(nullable = false)
	private int stock;

	@Column(nullable = false)
	private double price;

	@OneToMany(mappedBy = "bloodBank", cascade = CascadeType.ALL)
	private List<BloodBankDonor> bloodBankDonorsList;

	public BloodBank() {
	}

	public long getBloodBankId() {
		return bloodBankId;
	}

	public void setBloodBankId(long bloodBankId) {
		this.bloodBankId = bloodBankId;
	}

	public BloodGroup getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(BloodGroup bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public Hospital getHospital() {
		return hospital;
	}

	public void setHospital(Hospital hospital) {
		this.hospital = hospital;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public List<BloodBankDonor> getBloodBankDonorsList() {
		return bloodBankDonorsList;
	}

	public void setBloodBankDonorsList(List<BloodBankDonor> bloodBankDonorsList) {
		this.bloodBankDonorsList = bloodBankDonorsList;
	}

}