package com.obdms.entity;

import javax.persistence.*;

@Entity
@Table(name = "BloodBankDonor")
public class BloodBankDonor {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long bloodBankDonorId;

	@ManyToOne
	@JoinColumn(name = "bloodBank")
	private BloodBank bloodBank;

	@ManyToOne
	@JoinColumn(name = "donor")
	private Donor donor;

	@Column(nullable = false)
	private int quantity;

	public long getBloodBankDonorId() {
		return bloodBankDonorId;
	}

	public void setBloodBankDonorId(long bloodBankDonorId) {
		this.bloodBankDonorId = bloodBankDonorId;
	}

	public BloodBank getBloodBank() {
		return bloodBank;
	}

	public void setBloodBank(BloodBank bloodBank) {
		this.bloodBank = bloodBank;
	}

	public Donor getDonor() {
		return donor;
	}

	public void setDonor(Donor donor) {
		this.donor = donor;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
