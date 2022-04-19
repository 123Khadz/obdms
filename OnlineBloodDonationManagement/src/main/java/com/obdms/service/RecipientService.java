package com.obdms.service;

import java.util.List;

import com.obdms.entity.BloodGroup;
import com.obdms.entity.Recipient;

public interface RecipientService {

	void createRecipient(Recipient recipient);

	void editRecipient(Recipient recipient);

	void deleteRecipient(Recipient recipient);

	Recipient findRecipientByEmail(String email);

	Recipient findRecipientByEmailAndPassword(String email, String password);

	List<Recipient> getRecipientList();

	List<Recipient> getRecipientListSortedById();

	List<Recipient> getRecipientListSortedByName();

	List<Recipient> getRecipientListByBloodGroup(BloodGroup group);

}
