package org.fkit.service;

import java.util.List;

import org.fkit.domain.index;

public interface IndexService {
	List<index> getindex(String name);
	index getPicture(String name);
		
}
