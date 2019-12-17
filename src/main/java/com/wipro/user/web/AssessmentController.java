package com.wipro.user.web;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.wipro.auth.service.SecurityService;
import com.wipro.user.model.HibernateAnswers;
import com.wipro.user.model.SpringAnswers;
import com.wipro.user.service.AssessmentService;

@Controller
public class AssessmentController {
	
	@Autowired
	private AssessmentService assessmentService;
	
	@Autowired
	private SecurityService securityService;
	
	@PostMapping("/springAssessmentSubmission")
	public String submitSpringAssessment(@ModelAttribute("springForm") SpringAnswers springFormAnswers) {
		
		int marks = 0;
		LocalDateTime dateTime = LocalDateTime.now();
		if(springFormAnswers.getQuestion1().equalsIgnoreCase("J2EE App Development Framework"))
			marks += 10;
			
		if(springFormAnswers.getQuestion2().equalsIgnoreCase("Inversion Of Control"))
			marks += 10;
		if(springFormAnswers.getQuestion3().equalsIgnoreCase("Aspect Oriented Programming"))
			marks += 10;
		if(springFormAnswers.getQuestion4().equalsIgnoreCase("Application Context"))
			marks += 10;
		if(springFormAnswers.getQuestion5().equalsIgnoreCase("Dispatcher Servlet"))
			marks += 10;

		
		if(marks >= 30) {
			assessmentService.saveAssessmentDetails(dateTime.format(DateTimeFormatter.ofPattern("d-MM-uuuu HH:mm:ss")),marks,
					securityService.findLoggedInUsername(), 50,"Spring-L1","Passed");
			return "/user/success-assesment";
		}
		else {
			assessmentService.saveAssessmentDetails(dateTime.format(DateTimeFormatter.ofPattern("d-MM-uuuu HH:mm:ss")),marks,
					securityService.findLoggedInUsername(), 50,"Spring-L1","Failed");
			return "/user/failed-assesment";
		}

	}
	
	@PostMapping("/hibernateAssessmentSubmission")
	public String submitHibernateAssessment(@ModelAttribute("hibernateForm") HibernateAnswers hibernateFormAnswers) {
		int marks = 0;
		LocalDateTime dateTime = LocalDateTime.now();
		
		if(hibernateFormAnswers.getQuestion1().equalsIgnoreCase("Object Relational Mapping"))
			marks += 10;
			
		if(hibernateFormAnswers.getQuestion2().equalsIgnoreCase("uni-directional & bi-directional"))
			marks += 10;
		if(hibernateFormAnswers.getQuestion3().equalsIgnoreCase("configuration file"))
			marks += 10;
		if(hibernateFormAnswers.getQuestion4().equalsIgnoreCase("Hibernate Query Language"))
			marks += 10;
		if(hibernateFormAnswers.getQuestion5().equalsIgnoreCase("isolation levels"))
			marks += 10;
		
		if(marks >= 30) {
			assessmentService.saveAssessmentDetails(dateTime.format(DateTimeFormatter.ofPattern("d-MM-uuuu HH:mm:ss")),marks,
					securityService.findLoggedInUsername(), 50,"Hibernate-L1","Passed");
			return "/user/success-assesment";
		}
		else {
			assessmentService.saveAssessmentDetails(dateTime.format(DateTimeFormatter.ofPattern("d-MM-uuuu HH:mm:ss")),marks,
					securityService.findLoggedInUsername(), 50,"Hibernate-L1","Failed");
			return "/user/failed-assesment";
		}
	}
}
