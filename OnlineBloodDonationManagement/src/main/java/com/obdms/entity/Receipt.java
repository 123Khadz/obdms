package com.obdms.entity;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "Receipt")
public class Receipt {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long receiptId;

	@ManyToOne
	@JoinColumn(name = "hospital")
	private Hospital hospital;

	@ManyToOne
	@JoinColumn(name = "recipient")
	private Recipient recipient;

	@Column(nullable = false)
	private Date receivingDate;

	@Column(nullable = false)
	private boolean isPatient;

	@Column(length = 50)
	private String relationWithPatient;

	@Column(nullable = false)
	private int quantity;

	@Column(nullable = false)
	private double amount;

	@Column(nullable = false)
	private String paymentMode;

	@Column(nullable = false)
	private String paymentStatus;

	public Receipt() {
	}

	public long getReceiptId() {
		return receiptId;
	}

	public void setReceiptId(long receiptId) {
		this.receiptId = receiptId;
	}

	public Hospital getHospital() {
		return hospital;
	}

	public void setHospital(Hospital hospital) {
		this.hospital = hospital;
	}

	public Recipient getRecipient() {
		return recipient;
	}

	public void setRecipient(Recipient recipient) {
		this.recipient = recipient;
	}

	public Date getReceivingDate() {
		return receivingDate;
	}

	public void setReceivingDate(Date receivingDate) {
		this.receivingDate = receivingDate;
	}

	public boolean isPatient() {
		return isPatient;
	}

	public void setPatient(boolean isPatient) {
		this.isPatient = isPatient;
	}

	public String getRelationWithPatient() {
		return relationWithPatient;
	}

	public void setRelationWithPatient(String relationWithPatient) {
		this.relationWithPatient = relationWithPatient;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

}
