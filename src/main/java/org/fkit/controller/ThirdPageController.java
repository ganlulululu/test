package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Nav;
import org.fkit.domain.ThirdPage;
import org.fkit.service.AllService;
import org.fkit.service.ThirdPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ThirdPageController {
	@Autowired
	@Qualifier("allService")
	private AllService allService;
	@RequestMapping(value="/thirdPage/{module}")
	public String findWithModule(@PathVariable String module,Model model){
		ThirdPage thirdPage=allService.getThirdPage(module);
		model.addAttribute("thirdPage",thirdPage);
		List<ThirdPage> thirdPageList=allService.getThirdWhole(thirdPage.getWhole_name());
		model.addAttribute("thirdPageList",thirdPageList);
		
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
		
		return "third";
	}
	
	
}