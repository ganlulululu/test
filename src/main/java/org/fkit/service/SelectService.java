package org.fkit.service;

import java.util.List;

import org.fkit.domain.Module;
import org.fkit.domain.ThirdPage;

public interface SelectService {
	List<Module> getByWords(String words);
	List<Module> getByContentWords(String words);
	List<ThirdPage> getByThirdWords(String words);
}
