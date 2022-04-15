package com.obdms.entity;

import java.util.Date;

import javax.persistence.*;

@Entity
public class Appointment {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long appointmentId;

	@ManyToOne
	@JoinColumn(name = "hospital")
	private Hospital hospital;

	@ManyToOne
	@JoinColumn(name = "donor")
	private Donor donor;

	@Column(nullable = false)
	private Date appointmentDate;

	public Appointment() {
	}

	public long getAppointmentId() {
		return appointmentId;
	}

	public void setAppointmentId(long appointmentId) {
		this.appointmentId = appointmentId;
	}

	public Hospital getHospital() {
		return hospital;
	}

	public void setHospital(Hospital hospital) {
		this.hospital = hospital;
	}

	public Donor getDonor() {
		return donor;
	}

	public void setDonor(Donor donor) {
		this.donor = donor;
	}

	public Date getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(Date appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

}
