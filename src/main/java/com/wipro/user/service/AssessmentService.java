package com.wipro.user.service;

import com.wipro.user.repository.AssessmentDetails;

public interface AssessmentService {

	void saveAssessmentDetails(String testDate, int testMarks, String emailId, int totalMarks, String assessmentName, String result);
	AssessmentDetails getAssessmentDetailsByEmailId(String emailId);
}
