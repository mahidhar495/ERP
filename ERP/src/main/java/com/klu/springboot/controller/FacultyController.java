package com.klu.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.springboot.entity.Admin;
import com.klu.springboot.entity.Faculty;
import com.klu.springboot.service.FacultyService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FacultyController {
	
	@Autowired
	private FacultyService facultyService;
	@GetMapping("/emphome")
	  public ModelAndView home()
	  {
	    ModelAndView mv = new ModelAndView("emphome");
	    return mv;
	  }
	
	@GetMapping("/facultyLogin")
	public String facultylogin() {
		return "facultyLogin";
	}
	
	
	@GetMapping("/facultyprofile")
	public String facultyprofile() {
		return "facultyprofile";
	}
	
	
	
	
	@PostMapping("facultylogin")

	public ModelAndView checkfacultylogin(HttpServletRequest request)
	{
	  String auname = request.getParameter("auname");
	  String apwd = request.getParameter("apwd");
	  
	  Faculty faculty = facultyService.facultylogin(auname, apwd);
	  
	  ModelAndView mv=new ModelAndView();
	  
	  if(faculty !=null)
	  {
	    mv.setViewName("facultyhome");
		 
	    }
	  else
	  {
	    mv.setViewName("facultyloginfail");
	    mv.addObject("message", "Login Failed");
		 
	  }
	  return mv;
	}
	
	@PostMapping("/registerFaculty")
	public ModelAndView registerFaculty(HttpServletRequest request) {
	    
	    String name = request.getParameter("name");
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    String email = request.getParameter("email");
	    String contactNo = request.getParameter("contactno");
	   

	   
	    Faculty faculty = new Faculty();
	    faculty.setName(name);
	    faculty.setUsername(username);
	    faculty.setPassword(password);
	    faculty.setEmail(email);
	    faculty.setContactno(contactNo);
	    

	    
	    String message = facultyService.insertfaculty(faculty);

	    
	    ModelAndView mv = new ModelAndView("facultyregsuccess");
	    mv.addObject("message", message);

	    return mv;
	}
	
	
	

}
