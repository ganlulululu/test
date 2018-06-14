package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.fkit.domain.Module;
import org.fkit.domain.ThirdPage;
import org.fkit.service.SelectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class SelectController {
	@Autowired
	@Qualifier("selectService")
	private SelectService selectService;
	 @RequestMapping(value="/select")
	 public String select(Model model,HttpServletRequest request,@RequestParam("words") String word){
		List<Module> module_longtitlelist=selectService.getByWords(word);
		 if(module_longtitlelist!=null){
		model.addAttribute("module_longtitlelist",module_longtitlelist);
		model.addAttribute("word",word);}
	
	    List<Module>  module_contentlist=selectService.getByContentWords(word);
	    if(module_contentlist!=null){
	    model.addAttribute("module_contentlist",module_contentlist);}
	    List<ThirdPage>  module_Third=selectService.getByThirdWords(word);
	    if(module_Third!=null){
	    model.addAttribute("module_Third", module_Third);}

		return "select";}
	 
		 @RequestMapping(value="/module/1/select")
		 public String select2(Model model,HttpServletRequest request,@RequestParam("words") String word){
			 List<Module> module_longtitlelist=selectService.getByWords(word);
			 if(module_longtitlelist!=null){
			model.addAttribute("module_longtitlelist",module_longtitlelist);
			model.addAttribute("word",word);}
			
		    List<Module>  module_contentlist=selectService.getByContentWords(word);
		    if(module_contentlist!=null){
		    model.addAttribute("module_contentlist",module_contentlist);}
		    List<ThirdPage>  module_Third=selectService.getByThirdWords(word);
		    if(module_Third!=null){
		    model.addAttribute("module_Third", module_Third);}
		    
			 
			 
			
			return "pageSelect";
		 
	 }
		 @RequestMapping(value="/content/select")
		 public String select3(Model model,HttpServletRequest request,@RequestParam("words") String word){
			 List<Module> module_longtitlelist=selectService.getByWords(word);
			 if(module_longtitlelist!=null){
			model.addAttribute("module_longtitlelist",module_longtitlelist);
			model.addAttribute("word",word);}
			
		    List<Module>  module_contentlist=selectService.getByContentWords(word);
		    if(module_contentlist!=null){
		    model.addAttribute("module_contentlist",module_contentlist);}
		    List<ThirdPage>  module_Third=selectService.getByThirdWords(word);
		    if(module_Third!=null){
		    model.addAttribute("module_Third", module_Third);}
		    
	
			return "secondSelect";
		 
	 }
		 @RequestMapping(value="/thirdPage/select")
		 public String select4(Model model,HttpServletRequest request,@RequestParam("words") String word){
			 List<Module> module_longtitlelist=selectService.getByWords(word);
			 if(module_longtitlelist!=null){
			model.addAttribute("module_longtitlelist",module_longtitlelist);
			model.addAttribute("word",word);}
			
		    List<Module>  module_contentlist=selectService.getByContentWords(word);
		    if(module_contentlist!=null){
		    model.addAttribute("module_contentlist",module_contentlist);}
		    List<ThirdPage>  module_Third=selectService.getByThirdWords(word);
		    if(module_Third!=null){
		    model.addAttribute("module_Third", module_Third);}
		    
		   /** List<ThirdPage>  module_Third=selectService.getByThirdWords(word);
		    if(module_Third!=null){
		    model.addAttribute("module_Third", module_Third);
		    model.addAttribute("word",word);}**/
	
			return "secondSelect";
		 
	 }
}
