package com.samples;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class MyController {

	@Autowired
	StudentService stservice;
	@Autowired
	ChairService chservice;
	public MyController(){
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
	
	@RequestMapping(value="/all",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody String showAll(){
		
		//String json=new Gson().toJson(list);
		
	    
		//return json;
		return "Under Construction";
	}
	@RequestMapping(value="/chair",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody String showChair(Model model){
		model.addAttribute("chair",new Chair());
		model.addAttribute("chlist",this.chservice.getAllChairs());
		String json=new Gson().toJson(chservice.getAllChairs());
		
	    
		return json;
		
	}
	
	@RequestMapping(value="/table",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody String showTable(){
		
		//String json=new Gson().toJson(tlist);
		
	    
		//return json;
		return "Under Construction";
	}
	@RequestMapping(value="/bed",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody String showSample(){
		
		//String json=new Gson().toJson(blist);
		
	    
		//return json;
		return "Under Construction";
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
	@RequestMapping("/addChair")
	public ModelAndView addProduct(){
		ModelAndView model=new ModelAndView("addChair");
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
	@RequestMapping("/header")
	public ModelAndView showHeader(){
		ModelAndView model=new ModelAndView("Header");
		return model;
	}
	
	@RequestMapping("/register")
	public String register(){
		
		return "User Successfully Registered";
	}
	@RequestMapping("/reg")
	public ModelAndView showSampleReg(){
		return new ModelAndView("StudentForm");
	}
	@RequestMapping(value="/reg", method=RequestMethod.POST)
	public String acceptSampleReg(@ModelAttribute("user")Student student){
		stservice.save(student);
		return "User Successfully Registered";
		//return new ModelAndView("home");
	}
	@ModelAttribute("user")
	public Student addStudent(){
		return new Student();
	}
	@RequestMapping(value="/addChair",method=RequestMethod.POST)
	public ModelAndView acceptChair(@ModelAttribute("chr")Chair chair){
		if(chair.getId()==0){
			this.chservice.saveChair(chair);
		}
		else{
			this.chservice.editChair(chair);
		}
		return new ModelAndView("home");
	}
	@RequestMapping(value="/edit/{id}",method=RequestMethod.POST)
	public String editChair(@PathVariable("id") int id,Model model){
		model.addAttribute("chr",this.chservice.getChairById(id));
		model.addAttribute("chlist",this.chservice.getAllChairs());
		return "chr";
	}
	@ModelAttribute("chr")
	public Chair addChair(){
		return new Chair();
	}

}
