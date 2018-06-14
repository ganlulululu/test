package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Module;
import org.fkit.domain.Nav;
import org.fkit.domain.ThirdPage;
import org.fkit.domain.WebInfor;
import org.fkit.domain.index;
import org.fkit.mapper.AllMapper;
import org.fkit.mapper.ImagesMapper;
import org.fkit.service.AllService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("allService")
public class AllServiceImpl implements AllService{
	@Autowired
	private AllMapper allMapper;
	/*@Override
	public List<index> getindex(String name) {
		// TODO Auto-generated method stub
		return allMapper.findWithIndexname(name);
	}
*/
	@Override
	public Module getPicture(String longtitle) {
		// TODO Auto-generated method stub
		return allMapper.findPictureWithlongtitle(longtitle);
	}
	@Override
	public List<Module> getIndexContent(String module_id) {
		// 首页内容
		return allMapper.findIndexContent(module_id);
	}

	
	
	@Override
	public List<Module> getPage(Integer pages, Integer pageSize,String module_id) {
		// 分页
		return allMapper.findPage(pages, pageSize,module_id);
	}
	@Override
	public Integer getCount(String module_id) {
		return allMapper.findModuleAll(module_id);
		// TODO Auto-generated method stub
	
	}


	

	@Override
	public List<Module> getModuleKind(String module_id) {
		// TODO Auto-generated method stub
		return allMapper.findWithModuleId(module_id);
	}

	@Override
	public Module getModuleOne(Integer content_id) {
		// TODO Auto-generated method stub
		return allMapper.findWithContentId(content_id);
	}
	@Override
	public List<Module> getModuleWhole(String whole_name) {
		// TODO Auto-generated method stub
		return allMapper.findModuleWithWholeName(whole_name);
	}
	
	
//导航
	@Override
	public List<String> getNavname() {
		// TODO Auto-generated method stub
		return allMapper.findAllName();
	}

	@Override
	public List<Nav> getNav(String name) {
		// TODO Auto-generated method stub
		return allMapper.findWithName(name);
	}

	@Override
	public List<ThirdPage> getThirdWhole(String whole_name) {
		// TODO Auto-generated method stub
		return allMapper.findWithWholeName(whole_name);
	}

	@Override
	public ThirdPage getThirdPage(String module) {
		// TODO Auto-generated method stub
		return allMapper.findWithModule(module);
	}
	
	
	
	
	@Override
	public WebInfor getWebInfor() {
		// TODO Auto-generated method stub
		return allMapper.findWebInfor();
	}
	@Override
	public void updateWebInfor(Integer online,Integer  total) {
		// TODO Auto-generated method stub
		allMapper.updateWebInfor(online, total);
	}



	

} 
