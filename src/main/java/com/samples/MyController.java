package com.samples;

import java.util.ArrayList;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class MyController {

	ArrayList<Chair> chlist=new ArrayList<Chair>();
	ArrayList<Table> tlist=new ArrayList<Table>();
	ArrayList<Bed> blist=new ArrayList<Bed>();
	ArrayList list=new ArrayList();
	public MyController(){
		
		chlist.add(new Chair("Rosewood","Red",470.00));
		chlist.add(new Chair("BlackStone","White",420.00));
		chlist.add(new Chair("Starply","Krimpson",750.00));
		
		tlist.add(new Table("Nilkamal","Red",770.00));
		tlist.add(new Table("Crompton","white",720.00));
		
		blist.add(new Bed("Sleepwell","Maroon",1470));
		blist.add(new Bed("Cozilon","White",1420.00));
		blist.add(new Bed("SmoothSleep","Yellow",1750.00));
		
		list.add(chlist);
		list.add(tlist);
		list.add(blist);
		
	}
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
	@RequestMapping(value="/all",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody String showAll(){
		
		String json=new Gson().toJson(list);
		
	    
		return json;
	}
	@RequestMapping(value="/chair",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody String showChair(){
		
		String json=new Gson().toJson(chlist);
		
	    
		return json;
	}
	@RequestMapping(value="/table",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody String showTable(){
		
		String json=new Gson().toJson(tlist);
		
	    
		return json;
	}
	@RequestMapping(value="/bed",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody String showSample(){
		
		String json=new Gson().toJson(blist);
		
	    
		return json;
	}
	@RequestMapping("/pro")
	public ModelAndView showProducts(){
		ModelAndView model=new ModelAndView("Products");
		return model;
	}
	@RequestMapping("/view")
	public ModelAndView showView(){
		ModelAndView model=new ModelAndView("viewProduct");
		return model;
	}
	@RequestMapping("/addProduct")
	public ModelAndView addProduct(){
		ModelAndView model=new ModelAndView("addProduct");
		return model;
	}
	@RequestMapping("/edit")
	public ModelAndView showEdit(){
		ModelAndView model=new ModelAndView("Edit");
		return model;
	}
	@RequestMapping("/delete")
	public ModelAndView showDelete(){
		ModelAndView model=new ModelAndView("Delete");
		return model;
	}
}
