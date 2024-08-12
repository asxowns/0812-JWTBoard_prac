package com.example.demo.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

	@RequestMapping("/")
	public String main(Model model) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName(); // 현재 로그인한 사용자의 username을 가져옵니다.
		
        model.addAttribute("username", username);
        
		return "index";
	}
	
	@GetMapping("/signup")
	public String signupForm() {
		return "signup";
	}
	
	@GetMapping("/login")
	public String loginForm() {
		return "login";
	}
	
}
