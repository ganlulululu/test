package org.fkit.service;

import java.util.List;

import org.fkit.domain.Module;
import org.fkit.domain.ThirdPage;

public interface ModuleService {

		List<Module> getModule(String module_id,String page);
		List<Module> getModuleKind(String module_id);
		Module getModuleOne(Integer content_id);
		List<Module> getModuleWhole(String whole_name);
	}

