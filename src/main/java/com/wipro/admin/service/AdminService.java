package com.wipro.admin.service;

import java.util.List;

import com.wipro.auth.model.User;
import com.wipro.user.repository.AssessmentDetails;

public interface AdminService {

	public List<User> getAllUsers();
	public List<AssessmentDetails> getAllTests();
}
