package com.wipro.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.auth.model.User;
import com.wipro.auth.repository.UserRepository;
import com.wipro.user.repository.AssessementRepo;
import com.wipro.user.repository.AssessmentDetails;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AssessementRepo assessmentRepository;
	
	@Override
	public List<User> getAllUsers() {
		return userRepository.findAllByOrderByEmailIdAsc();
	}

	@Override
	public List<AssessmentDetails> getAllTests() {
		return assessmentRepository.findAll();
	}

}
