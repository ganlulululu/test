package org.fkit.service;

import java.util.List;

import org.fkit.domain.Nav;

public interface NavService {
	List<Nav> getNavname();
	List<Nav> getNav(String name);
}
