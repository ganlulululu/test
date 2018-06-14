package org.fkit.service.impl;

import org.fkit.domain.WebInfor;
import org.fkit.mapper.IndexMapper;
import org.fkit.mapper.WebInforMapper;
import org.fkit.service.WebInforService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("webInforService")

public class WebInforServiceImpl implements  WebInforService{
	@Autowired
	private WebInforMapper webInforMapper;
	@Override
	public WebInfor getWebInfor() {
		// TODO Auto-generated method stub
		return webInforMapper.findWebInfor();
	}
	@Override
	public WebInfor updateWebInfor(Integer online,Integer  total) {
		// TODO Auto-generated method stub
		return webInforMapper.updateWebInfor(online, total);
	}

}
