package org.fkit.controller;



import java.util.List;


import org.fkit.domain.Module;
import org.fkit.domain.Nav;
import org.fkit.domain.ThirdPage;
import org.fkit.service.AllService;
import org.fkit.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ModuleController {
	@Autowired
	@Qualifier("allService")
	private AllService allService;
	
	@RequestMapping(value="/module/{module_id}")
	public String findModule(@PathVariable String module_id, Model model) {
		List<Module>  module1_list=allService.getModuleKind(module_id);
		model.addAttribute("module1_list",module1_list);

		return "second"; 
}
	@RequestMapping(value="/module/{module_id}/{page}",method=RequestMethod.GET)
	public String findWithPage(@PathVariable String module_id,@PathVariable("page") String page, Model model) {
		model.addAttribute("module_id",module_id);
		List<Module> moduleList=allService.getModuleKind(module_id);
	
		Module module=moduleList.get(0);
		model.addAttribute("module",module);
		System.out.println(module);
		List<Module> module_List=allService.getModuleWhole(module.getWhole_name());
		
		model.addAttribute("module_List",module_List);
		
		model.addAttribute("moduleList",moduleList);
		
		int pages2 = Integer.parseInt(page);
		
		
		Integer totalRecouds=allService.getCount(module_id);
	
		Integer pageSize = 15;
		
		Integer totalPages=totalRecouds%pageSize==0?totalRecouds/pageSize:totalRecouds/pageSize+1 ;
		Integer pages= pageSize*(pages2-1);
		
		List<Module> modulepagelist=allService.getPage(pages, pageSize,module_id);
		model.addAttribute("modulepagelist",modulepagelist);
		
		int next=pages2;
		if(next<totalPages)
		next++;
			
		int last=pages2;
		if(last>1)
		last--;
		
		model.addAttribute("pages2",pages2);
		
		
		String nextpage= String.valueOf(next);
		String lastpage= String.valueOf(last);
		String finalpage= String.valueOf(totalPages);
		model.addAttribute("finalpage",finalpage);
		model.addAttribute("nextpage",nextpage);
		model.addAttribute("lastpage",lastpage);
		
		
		
		List<String> navNameList=allService.getNavname();
		List<Nav> a1=allService.getNav(navNameList.get(0));
		List<Nav> a2=allService.getNav(navNameList.get(1));
		List<Nav> a3=allService.getNav(navNameList.get(2));
		List<Nav> a4=allService.getNav(navNameList.get(3));
		List<Nav> a5=allService.getNav(navNameList.get(4));
		List<Nav> a6=allService.getNav(navNameList.get(5));
		List<Nav> a7=allService.getNav(navNameList.get(6));
		List<Nav> a8=allService.getNav(navNameList.get(7));
		
		
	
		model.addAttribute("a1",a1);
		model.addAttribute("a2",a2);
		model.addAttribute("a3",a3);
		model.addAttribute("a4",a4);
		model.addAttribute("a5",a5);
		model.addAttribute("a6",a6);
		model.addAttribute("a7",a7);
		model.addAttribute("a8",a8);
		
		model.addAttribute("navNameList",navNameList);
		return "page"; 
}
		@RequestMapping(value="content/{content_id}")
		public String findModuleWithContentId(@PathVariable Integer content_id, Model model) {
			Module module1=allService.getModuleOne(content_id);
			model.addAttribute("module1",module1);
			System.out.println(module1);
			List<String> navNameList=allService.getNavname();
			List<Nav> a1=allService.getNav(navNameList.get(0));
			List<Nav> a2=allService.getNav(navNameList.get(1));
			List<Nav> a3=allService.getNav(navNameList.get(2));
			List<Nav> a4=allService.getNav(navNameList.get(3));
			List<Nav> a5=allService.getNav(navNameList.get(4));
			List<Nav> a6=allService.getNav(navNameList.get(5));
			List<Nav> a7=allService.getNav(navNameList.get(6));
			List<Nav> a8=allService.getNav(navNameList.get(7));
			
			
		
			model.addAttribute("a1",a1);
			model.addAttribute("a2",a2);
			model.addAttribute("a3",a3);
			model.addAttribute("a4",a4);
			model.addAttribute("a5",a5);
			model.addAttribute("a6",a6);
			model.addAttribute("a7",a7);
			model.addAttribute("a8",a8);
		
			model.addAttribute("navNameList",navNameList);
	
			return "content"; 
}
}
