package com.wipro.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.wipro.admin.service.AdminService;
import com.wipro.auth.model.User;
import com.wipro.user.repository.AssessmentDetails;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
    @GetMapping({"/users/all"})
    public String getAllUsers(Model model) {
    	List<User> users = adminService.getAllUsers();
    	model.addAttribute("userList", users);
    	return "admin/all-users";
    }
    
    @GetMapping({"/tests/all"})
    public String getAllTests(Model model) {
    	List<AssessmentDetails> assessmentDetailsList = adminService.getAllTests();
    	model.addAttribute("testList", assessmentDetailsList);
    	return "admin/all-tests";
    }
}
