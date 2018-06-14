package org.fkit.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.fkit.domain.Module;
import org.fkit.domain.Nav;
import org.fkit.domain.WebInfor;
import org.fkit.domain.index;
import org.fkit.service.AllService;
import org.fkit.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	@Autowired
	@Qualifier("allService")
	

	private AllService allService;

	@RequestMapping(value="/index")
		public String index(Model model,HttpServletRequest request, HttpServletResponse response, HttpSession session
				){
/*
		Integer online=(Integer) request.getServletContext().getAttribute("onLineUser");
		
		System.out.println( online);
		Integer total=(Integer) request.getServletContext().getAttribute("total");
		System.out.println(total);
	    allService.updateWebInfor(online,total);
		WebInfor webInfor=allService.getWebInfor();
		model.addAttribute("webInfor",webInfor);*/
	
		
		List<Module> index_list_xshd=allService.getIndexContent("1");
		model.addAttribute("index_list_xshd",index_list_xshd);
		
		List<Module> index_list_hydt=allService.getIndexContent("2");
		model.addAttribute("index_list_hydt",index_list_hydt);
		
		List<Module> index_list_jddt=allService.getIndexContent("3");
		model.addAttribute("index_list_jddt",index_list_jddt);
		List<Module> index_list_tzgg=allService.getIndexContent("4");
		model.addAttribute("index_list_tzgg",index_list_tzgg);
		/*List<Module> index_list_xmsb=allService.getIndexContent("5");
		model.addAttribute("index_list_xmsb",index_list_xmsb);*/
		
		List<Module> index_list_pic=allService.getIndexContent("pic");
		model.addAttribute("index_list_pic",index_list_pic);
	
		
		Module pic1=allService.getPicture("图片新闻1");
		model.addAttribute("index1",pic1);
		
		
		Module pic2=allService.getPicture("图片新闻2");
		model.addAttribute("index2",pic2);
		
		Module pic3=allService.getPicture("图片新闻3");
		model.addAttribute("index3",pic3);
		
		Module pic4=allService.getPicture("图片新闻4");
		model.addAttribute("index4",pic4);
		Module pic5=allService.getPicture("图片新闻5");

		model.addAttribute("index5",pic5);
		Module pic6=allService.getPicture("图片新闻6");

		model.addAttribute("index6",pic6);
		
		
		
		/**List<List<Nav>> a2 = new ArrayList();
		int m = navNameList.size();
		for (int i = 0; i < m; i++) {
			 List<Nav> navList=allService.getNav(navNameList.get(i));
			 a2.add(navList);
		}
		int n = a2.size();
		for (int i = 0; i <n; i++) {
			 List<Nav> a3= a2.get(i);
			 System.out.println(a3);
			 model.addAttribute("a3",a3);
	   }**/
		List<String> navNameList=allService.getNavname();
		List<Nav> a1=allService.getNav(navNameList.get(0));
		List<Nav> a2=allService.getNav(navNameList.get(1));
		List<Nav> a3=allService.getNav(navNameList.get(2));
		List<Nav> a4=allService.getNav(navNameList.get(3));
		List<Nav> a5=allService.getNav(navNameList.get(4));
		List<Nav> a6=allService.getNav(navNameList.get(5));
		List<Nav> a7=allService.getNav(navNameList.get(6));
		List<Nav> a8=allService.getNav(navNameList.get(7));
		System.out.println(a8);
	
		model.addAttribute("a1",a1);
		model.addAttribute("a2",a2);
		model.addAttribute("a3",a3);
		model.addAttribute("a4",a4);
		model.addAttribute("a5",a5);
		model.addAttribute("a6",a6);
		model.addAttribute("a7",a7);
		model.addAttribute("a8",a8);
		
		
		
		model.addAttribute("navNameList",navNameList);

		
				
			
	/*Integer online=(Integer)session.getAttribute("onLineUser");
	Integer total=(Integer)session.getAttribute("total");
	
		allService.updateWebInfor(online, total);
	
		model.addAttribute("online",online);
		model.addAttribute("total",total);*/

		
		return "index";

	}
}
	

