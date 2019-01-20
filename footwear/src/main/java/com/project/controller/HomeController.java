package com.project.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.dao.CategoryDao;
import com.project.dao.UserDao;
import com.project.model.User;


@Controller
public class HomeController {


	@Autowired
	private CategoryDao categorydao;
	
	@Autowired
	private UserDao userdao;
	
	
	@RequestMapping(value= {"/","home"},method=RequestMethod.GET)
	public ModelAndView index()
	{
		ModelAndView mv = new ModelAndView("home");
		return mv;
	}

	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	
	@RequestMapping(value="/logPage")
	public String logPage()
	{
		return "redirect:home";
	}
	
	@RequestMapping("/error")
	public ModelAndView error() {
		return new ModelAndView("error");
	}
	
	@RequestMapping("/userDenied")
	public ModelAndView userDenied() {
		return new ModelAndView("userDenied");
	}
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String register(Model model)
	{
		model.addAttribute("user", new User());
		return "register";
	}
	
	@ModelAttribute
	public void addAttributes(Model model)
	{
		model.addAttribute("clist",categorydao.categoryList());
	}
	
	@RequestMapping(value="/register",method = RequestMethod.POST)
	public ModelAndView addUser(@Valid @ModelAttribute("user") User user, BindingResult result)
	{
		
		if(result.hasErrors())
		{
			System.out.println("result have errors");
			return new ModelAndView("/register");
		}
		System.out.println("all are entered");
		user.setRole("ROLE_USER");
		user.setEnabled(false);
		userdao.insertUser(user);
		return new ModelAndView("/home");		
	}
	
}