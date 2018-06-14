package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Module;
import org.fkit.mapper.ModuleMapper;
import org.fkit.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("jddtService")
public class ModuleServiceImpl implements ModuleService{
	@Autowired ModuleMapper moduleMapper;

	@Override
	public List<Module> getModule(String module_id,String page) {
		// TODO Auto-generated method stub
		return  moduleMapper.findWithPage(module_id,page);
	}

	@Override
	public List<Module> getModuleKind(String module_id) {
		// TODO Auto-generated method stub
		return moduleMapper.findWithModuleId(module_id);
	}


	@Override
	public Module getModuleOne(Integer content_id) {
		// TODO Auto-generated method stub
		return  moduleMapper.findWithContentId(content_id);
	}

	@Override
	public List<Module> getModuleWhole(String whole_name) {
		// TODO Auto-generated method stub
		return moduleMapper.findModuleWithWholeName(whole_name);
	}

}
