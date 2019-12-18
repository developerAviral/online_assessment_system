package com.wipro.auth.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.auth.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	 public User findByEmailId(String emailId);
	 public List<User> findAllByOrderByEmailIdAsc();
}
