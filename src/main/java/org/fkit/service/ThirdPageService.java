package org.fkit.service;

import java.util.List;

import org.fkit.domain.ThirdPage;

public interface ThirdPageService {
	List<ThirdPage> getThirdWhole(String whole_name);
	ThirdPage getThirdPage(String module);
}
