package com.wipro.auth.service;

import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.wipro.auth.model.Role;
import com.wipro.auth.model.User;
import com.wipro.auth.repository.RoleRepository;
import com.wipro.auth.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    
	@Override
	public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        List<Role> roles = roleRepository.findAll();
        roles.remove(0);
        user.setRoles(new HashSet<>(roles));
        userRepository.save(user);		
	}

	@Override
	public User findByEmailId(String emailId) {
		return userRepository.findByEmailId(emailId);
	}

}
