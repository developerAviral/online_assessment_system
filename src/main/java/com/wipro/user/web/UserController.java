package com.wipro.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.wipro.user.model.HibernateAnswers;
import com.wipro.user.model.SpringAnswers;

@Controller
public class UserController {
	
    @GetMapping({"/user/springAssessment"})
    public String getSpringAssessment(Model model) {
    	model.addAttribute("springForm", new SpringAnswers());
    	return "user/springAssessment";
    }
    
    @GetMapping({"/user/hibernateAssessment"})
    public String gethibernateAssessment(Model model) {
    	model.addAttribute("hibernateForm", new HibernateAnswers());
    	return "user/hibernateAssessment";
    }
}
