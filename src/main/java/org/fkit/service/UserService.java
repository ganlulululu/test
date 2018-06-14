package org.fkit.service;

import org.fkit.domain.User;

public interface UserService {
	User getUser(String loginname,String password);

}
