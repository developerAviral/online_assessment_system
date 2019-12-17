package com.wipro.auth.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import com.wipro.auth.repository.UserRepository;

@Component
public class UserAuthenticationFailureHandler implements AuthenticationFailureHandler {

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		if(userRepository.findByEmailId(request.getParameter("emailId")) == null) {
			redirectStrategy.sendRedirect(request, response, "/invaliduser");
		}
		else {
			redirectStrategy.sendRedirect(request, response, "/invalidpassword");
		}
		
	}

}
