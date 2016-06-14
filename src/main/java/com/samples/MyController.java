package com.samples;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {

	@RequestMapping("/")
	public ModelAndView show(){
		ModelAndView model=new ModelAndView("home");
		return model;
	}
	@RequestMapping("/home")
	public ModelAndView showHome(){
		ModelAndView model=new ModelAndView("home");
		return model;
	}
	@RequestMapping("/login")
	public ModelAndView showLogin(){
		ModelAndView model=new ModelAndView("Login");
		return model;
	}
	@RequestMapping("/register")
	public ModelAndView showRegister(){
		ModelAndView model=new ModelAndView("Register");
		return model;
	}
	@RequestMapping("/pro")
	public ModelAndView showProduct(){
		ModelAndView model=new ModelAndView("Products");
		return model;
	}
	
}
