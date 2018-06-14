package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Nav;
import org.fkit.mapper.NavMapper;
import org.fkit.service.NavService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("navService")
public class NavServiceImpl implements NavService{
	@Autowired NavMapper navMapper;
	@Override
	public List<Nav> getNavname() {
		// TODO Auto-generated method stub
		return navMapper.findAllName();
	}

	@Override
	public List<Nav> getNav(String name) {
		// TODO Auto-generated method stub
		return navMapper.findWithName(name);
	}

}
