package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.ThirdPage;
import org.fkit.mapper.ThirdPageMapper;
import org.fkit.service.ThirdPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("thirdPageService")
public class ThirdPageServiceImpl implements ThirdPageService{
	@Autowired ThirdPageMapper thirdPageMapper;
	@Override
	public List<ThirdPage> getThirdWhole(String whole_name) {
		// TODO Auto-generated method stub
		return thirdPageMapper.findWithWholeName(whole_name);
	}

	@Override
	public ThirdPage getThirdPage(String module) {
		// TODO Auto-generated method stub
		return thirdPageMapper.findWithModule(module);
	}

}
