package com.wipro.auth.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.wipro.auth.model.User;
import com.wipro.auth.service.SecurityService;
import com.wipro.auth.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;
	
	 @GetMapping("/register.html")
	    public String registration(Model model) {
	        model.addAttribute("userForm", new User());

	        return "registration";
	    }

	    @PostMapping("/registeration")
	    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
	      //  userValidator.validate(userForm, bindingResult);

	        if (bindingResult.hasErrors()) {
	            return "registration";
	        }

	        userService.save(userForm);

	        //securityService.login(userForm.getEmailId(), userForm.getPassword());

	        return "redirect:/login";
	    }

	    @GetMapping("/login")
	    public String login(Model model, String error, String logout) {
	        if (error != null)
	            model.addAttribute("error", "Your username and password is invalid.");

	        if (logout != null)
	            model.addAttribute("message", "You have been logged out successfully.");

	        return "login";
	    }

	    @GetMapping({"/" , "/user/welcome"})
	    public String welcomeUser(Model model) {
	        return "user/welcome";
	    }
	    
	    @GetMapping({"/admin/welcome"})
	    public String welcomeAdmin(Model model) {
	        return "admin/welcome";
	    }

}
