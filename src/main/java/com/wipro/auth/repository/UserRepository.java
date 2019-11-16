package com.wipro.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.auth.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	 public User findByEmailId(String emailId);
}
