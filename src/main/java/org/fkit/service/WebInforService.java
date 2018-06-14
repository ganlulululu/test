package org.fkit.service;

import org.fkit.domain.WebInfor;


public interface WebInforService {
	WebInfor getWebInfor();
	WebInfor updateWebInfor(Integer online, Integer total);
}
