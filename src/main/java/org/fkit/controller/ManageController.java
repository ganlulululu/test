package org.fkit.controller;


import org.fkit.domain.Manage;
import org.fkit.service.ManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManageController {
	@Autowired
	@Qualifier("manageService")
	private ManageService manageService;
	
	@RequestMapping(value="management/{kind}")
	public String management(@PathVariable String kind,Model model) {
	
		
		Manage manage=manageService.getManageOne(kind);
		model.addAttribute("manage",manage);
		
		return "management/manage";}}
		
	

