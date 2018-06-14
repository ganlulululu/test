package org.fkit.controller;

import javax.servlet.http.HttpSession;


import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 * 澶勭悊鐢ㄦ埛璇锋眰鎺у埗鍣�
 * */
@Controller
public class UserController {
	
	/**
	 * 鑷姩娉ㄥ叆UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	/**
	 * 澶勭悊/login璇锋眰
	 * */
	@RequestMapping(value="/login")
	 public ModelAndView login(
			 String loginname,String password,
			 ModelAndView mv,
			 HttpSession session){
		
		// 鏍规嵁鐧诲綍鍚嶅拰瀵嗙爜鏌ユ壘鐢ㄦ埛锛屽垽鏂敤鎴风櫥褰�
		
	    User user = userService.getUser(loginname, password);	
		if(user!= null){
			// 鐧诲綍鎴愬姛锛屽皢user瀵硅薄璁剧疆鍒癏ttpSession浣滅敤鑼冨洿鍩�
			session.setAttribute("user", user);
			
			// 杞彂鍒癿ain璇锋眰
			mv.setViewName("updateModule");
		}else{
			// 鐧诲綍澶辫触锛岃缃け璐ユ彁绀轰俊鎭紝骞惰烦杞埌鐧诲綍椤甸潰
			mv.addObject("message2", "用户名或密码错误，请重新输入");
			mv.setViewName("loginForm");
		}
		return mv;
	}
	
	
}
