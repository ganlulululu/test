package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Module;
import org.fkit.domain.ThirdPage;
import org.fkit.mapper.SelectMapper;
import org.fkit.service.SelectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("selectService")
public class SelectServiceImpl implements SelectService{
	@Autowired
	private SelectMapper selectMapper;

	@Override
	public List<Module> getByWords(String words) {
		// TODO Auto-generated method stub
		return selectMapper.findwithlongtitleWords(words);
	}

	@Override
	public List<Module> getByContentWords(String words) {
		// TODO Auto-generated method stub
		return selectMapper.findwithContentWords(words);
	}

	@Override
	public List<ThirdPage> getByThirdWords(String words) {
		// TODO Auto-generated method stub
		return selectMapper.findwithThirdContentWords(words);
	}


}
