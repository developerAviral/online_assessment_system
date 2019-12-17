package com.wipro.auth.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wipro.auth.model.User;
import com.wipro.auth.service.SecurityService;
import com.wipro.auth.service.UserService;

@Controller
public class AuthController {

	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;
	
	 @GetMapping("/register.html")
	    public String registration(Model model) {
	        model.addAttribute("userForm", new User());

	        return "registration";
	    }

	    @PostMapping("/registration")
	    public String registration(@ModelAttribute("userForm") User userForm, RedirectAttributes redirectAttributes) {

	        userService.save(userForm);
	        redirectAttributes.addAttribute("firstName",userForm.getFirstName());
	        redirectAttributes.addAttribute("LastName",userForm.getLastName());
	        return "/registerconfirm";
	    }

	    @GetMapping("/login")
	    public String login(Model model, String error, String logout) {
	        if (error != null)
	            model.addAttribute("error", "Your username and password is invalid.");

	        if (logout != null)
	            model.addAttribute("message", "You have been logged out successfully.");

	        return "login";
	    }

	    @GetMapping({"/" , "/admin/welcome"})
	    public String welcomeAdmin(Model model) {
	        return "admin/welcome";
	    }
	    
	    @GetMapping({"/" , "/user/welcome"})
	    public String welcomeUser(Model model) {
	        return "user/welcome";
	    }
	    
	    @GetMapping({"/invalidpassword"})
	    public String invalidpassword(Model model) {
	        return "/invalidpassword";
	    }
	    
	    @GetMapping({"/invaliduser"})
	    public String invaliduser(Model model) {
	        return "invaliduser";
	    }
	    
	    @GetMapping({"/registerconfirm"})
	    public String registerconfirm( @RequestParam("firstName") String firstName,
	    		@RequestParam("lastName") String lastName,
	    		Model model) {
	    	model.addAttribute("firstName", firstName);
	    	model.addAttribute("lastName", lastName);
	        return "registerconfirm";
	    }

}
