package org.fkit.service.impl;

import org.fkit.domain.Manage;
import org.fkit.mapper.ManageMapper;
import org.fkit.service.ManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("manageService")
public class ManageServiceImpl implements ManageService{
	@Autowired ManageMapper manageMapper;

	@Override
	public Manage getManageOne(String kind) {
		// TODO Auto-generated method stub
		return manageMapper.findWithName(kind);
	}
	
	
}
