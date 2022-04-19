package com.obdms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Recipient;
import com.obdms.repository.RecipientRepository;

import com.obdms.service.RecipientService;

@Service
public class RecipientServiceImpl implements RecipientService {

	@Autowired
	private RecipientRepository recipientRepository;

	@Override
	public void createRecipient(Recipient recipient) {
		if (recipient != null)
			recipientRepository.createRecipient(recipient);

	}

	@Override
	public void editRecipient(Recipient recipient) {
		if (recipient != null)
			recipientRepository.editRecipient(recipient);

	}

	@Override
	public void deleteRecipient(Recipient recipient) {
		if (recipient != null)
			recipientRepository.deleteRecipient(recipient);

	}

	@Override
	public Recipient findRecipientByEmail(String email) {
		Recipient recipient = null;
		if (email != null)
			recipient = recipientRepository.findRecipientByEmail(email);
		return recipient;
	}

	@Override
	public Recipient findRecipientByEmailAndPassword(String email, String password) {
		Recipient recipient = null;
		if (email != null && password != null)
			recipient = recipientRepository.findRecipientByEmailAndPassword(email, password);
		return recipient;
	}

	@Override
	public List<Recipient> getRecipientList() {
		return recipientRepository.getRecipientList();
	}

	@Override
	public List<Recipient> getRecipientListSortedById() {
		return recipientRepository.getRecipientListSortedById();
	}

	@Override
	public List<Recipient> getRecipientListSortedByName() {
		return recipientRepository.getRecipientListSortedByName();
	}

	@Override
	public List<Recipient> getRecipientListByBloodGroup(BloodGroup group) {
		return recipientRepository.getRecipientListByBloodGroup(group);
	}

}
