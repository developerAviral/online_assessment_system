package com.wipro.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AssessementRepo extends JpaRepository<AssessmentDetails, Long> {
	public AssessmentDetails findByEmailId(String emailId);
}
