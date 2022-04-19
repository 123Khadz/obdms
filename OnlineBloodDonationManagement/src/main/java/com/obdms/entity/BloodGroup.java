package com.obdms.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "BloodGroup")
public class BloodGroup {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long bloodGroupId;

	@Column(nullable = false, length = 10)
	private String bloodGroup;

	@OneToMany(mappedBy = "bloodGroup", cascade = CascadeType.ALL)
	private List<BloodBank> bloodBanksList;

	@OneToMany(mappedBy = "bloodGroup", cascade = CascadeType.ALL)
	private List<Donor> donorsList;

	@OneToMany(mappedBy = "bloodGroup", cascade = CascadeType.ALL)
	private List<Recipient> recipientsList;

	public long getBloodGroupId() {
		return bloodGroupId;
	}

	public void setBloodGroupId(long bloodGroupId) {
		this.bloodGroupId = bloodGroupId;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public List<BloodBank> getBloodBanksList() {
		return bloodBanksList;
	}

	public void setBloodBanksList(List<BloodBank> bloodBanksList) {
		this.bloodBanksList = bloodBanksList;
	}

	public List<Donor> getDonorsList() {
		return donorsList;
	}

	public void setDonorsList(List<Donor> donorsList) {
		this.donorsList = donorsList;
	}

	public List<Recipient> getRecipientsList() {
		return recipientsList;
	}

	public void setRecipientsList(List<Recipient> recipientsList) {
		this.recipientsList = recipientsList;
	}

}
