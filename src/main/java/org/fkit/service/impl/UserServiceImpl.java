package org.fkit.service.impl;

import org.fkit.domain.User;
import org.fkit.mapper.UserMapper;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;


	@Override
	public User getUser(String loginname, String password) {
		// TODO Auto-generated method stub
		return userMapper.findWithNameAndPwd(loginname, password);
	}
	

}
