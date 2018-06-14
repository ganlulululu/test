package org.fkit.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.fkit.domain.Image;
import org.fkit.service.IndexUpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexUpdateController {
	@Autowired
	@Qualifier("indexUpdateService")
	private IndexUpdateService indexUpdateService;
	
	@RequestMapping(value="management/indexUpdateA")
	public ModelAndView indexUpdate(String name,
									String longtitle,String content,String image,String start_date,
									String up_date,int content_id,String module_id,
									String whole_name,String up_year,
									String url,String module_url,
									ModelAndView mv,HttpSession session,HttpServletRequest req){
		String title;
		if(longtitle.length()>14){
		String str="...";
		 title=longtitle.substring(0,14)+str;	
		 }else{
			 title=longtitle;}
		indexUpdateService.addModule(name, longtitle, content,image, start_date, up_date, content_id, module_id, whole_name, title, up_year, url, module_url);
		mv.setViewName("success");
		return mv;
	}
	@RequestMapping(value="management/indexUpdateB")
	public String index (Model model,HttpServletRequest req,HttpServletResponse resp) throws UnsupportedEncodingException{
		req.setCharacterEncoding("utf-8");
		Integer contentId=indexUpdateService.getNumber();
		Integer thisContentId=contentId+1;
		
		System.out.println( thisContentId);
		model.addAttribute("thisContentId", thisContentId);
		String name = req.getParameter("MoudleId");
		model.addAttribute("name",name);
		model.addAttribute("url","content/");
		model.addAttribute("whole_name","首页展示");
		
		
		if(name.equals("学术活动")){ 
		model.addAttribute("module_id","1");
		model.addAttribute("image","学术活动.png");
		model.addAttribute("module_url","module/1/");
		
		}
		if(name.equals("行业动态")){ 
			model.addAttribute("image","行业动态.png");
			model.addAttribute("module_id","2");
			model.addAttribute("image","行业动态.png");
			model.addAttribute("module_url","module/2/");
			}
		if(name.equals("中心动态")){ 
			model.addAttribute("image","中心动态.png");
			model.addAttribute("module_id","3");
			model.addAttribute("image","中心动态.png");
			model.addAttribute("module_url","module/3/");
			}
		if(name.equals("通知公告")){ 
			model.addAttribute("image","通知公告.png");
			model.addAttribute("module_id","4");
			model.addAttribute("image","通知公告.png");
			model.addAttribute("module_url","module/4/");
			}
		if(name.equals("图片新闻")){ 
			/*model.addAttribute("image","通知公告.png");*/
			model.addAttribute("module_id","pic");
			/*model.addAttribute("image","通知公告.png");*/
			model.addAttribute("module_url","module/pic/");
			}
			
		List<Image> image_list=indexUpdateService.getAllImage();
		model.addAttribute("image_list",image_list);
		for(Image image1:image_list){
			System.out.println(image1.getFileName());
		}
		System.out.println(image_list);
		System.out.println("image_list");
		
		return "management/indexUpdate";
		
	}
}
