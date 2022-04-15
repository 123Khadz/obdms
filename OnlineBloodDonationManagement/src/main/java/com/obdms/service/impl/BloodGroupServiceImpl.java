package com.obdms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obdms.entity.BloodGroup;
import com.obdms.repository.BloodGroupRepository;
import com.obdms.service.BloodGroupService;

@Service
public class BloodGroupServiceImpl implements BloodGroupService {

	@Autowired
	BloodGroupRepository bloodGroupRepository;
	
	@Override
	public void addBloodGroup(BloodGroup bloodGroup) {
		if (bloodGroup != null)
			bloodGroupRepository.addBloodGroup(bloodGroup);
		
	}

	@Override
	public void editBloodGroup(BloodGroup bloodGroup) {
		if (bloodGroup != null)
			bloodGroupRepository.editBloodGroup(bloodGroup);
		
	}

	@Override
	public void deleteBloodGroup(BloodGroup bloodGroup) {
		if (bloodGroup != null)
			bloodGroupRepository.deleteBloodGroup(bloodGroup);
		
	}

	@Override
	public BloodGroup findByBloodGroupId(Long bloodGroupId) {
		BloodGroup group = null;
		if(bloodGroupId != null)
			group = bloodGroupRepository.findByBloodGroupId(bloodGroupId);
		return group;
			
	}

	@Override
	public BloodGroup findByIdAndBloodGroup(Long bloodGroupId, String bloodGroup) {
		BloodGroup group = null;
		if(bloodGroupId != null &&  bloodGroup != null)
			group = bloodGroupRepository.findByIdAndBloodGroup(bloodGroupId,bloodGroup);
		return group;
	}

	@Override
	public BloodGroup findByBloodGroup(String bloodGroup) {
		BloodGroup group = null;
		if(bloodGroup != null)
			group = bloodGroupRepository.findByBloodGroup(bloodGroup);
		return group;
	}

	@Override
	public List<BloodGroup> getBloodGroupListSortedByBloodGroup() {
		return bloodGroupRepository.getBloodGroupListSortedByBloodGroup();
	}

	@Override
	public List<BloodGroup> getBloodGroupListSortedById() {
		return bloodGroupRepository.getBloodGroupListSortedById();
	}

}
