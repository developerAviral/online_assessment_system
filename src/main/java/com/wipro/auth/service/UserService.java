package com.wipro.auth.service;

import com.wipro.auth.model.User;

public interface UserService {
	void save(User user);
	User findByEmailId(String emailId);
}
