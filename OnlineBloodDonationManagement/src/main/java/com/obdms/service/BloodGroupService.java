package com.obdms.service;

import java.util.List;

import com.obdms.entity.BloodGroup;

public interface BloodGroupService {

	void addBloodGroup(BloodGroup bloodGroup);

	void editBloodGroup(BloodGroup bloodGroup);

	void deleteBloodGroup(BloodGroup bloodGroup);

	BloodGroup findByBloodGroupId(Long bloodGroupId);

	BloodGroup findByIdAndBloodGroup(Long bloodGroupId, String bloodGroup);

	BloodGroup findByBloodGroup(String bloodGroup);

	List<BloodGroup> getBloodGroupListSortedByBloodGroup();

	List<BloodGroup> getBloodGroupListSortedById();

}
