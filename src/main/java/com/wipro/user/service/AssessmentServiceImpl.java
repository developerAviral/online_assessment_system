package com.wipro.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.user.repository.AssessementRepo;
import com.wipro.user.repository.AssessmentDetails;

@Service
public class AssessmentServiceImpl implements AssessmentService {
	
	@Autowired
	private AssessementRepo assessmenRepo;

	@Override
	public AssessmentDetails getAssessmentDetailsByEmailId(String emailId) {
		return assessmenRepo.findByEmailId(emailId);
	}

	@Override
	public void saveAssessmentDetails(String testDate, int testMarks, String emailId, int totalMarks,
			String assessmentName, String result) {		
		AssessmentDetails assessmentDetails = new AssessmentDetails();
		assessmentDetails.setTestDate(testDate);
		assessmentDetails.setTestMarks(testMarks);
		assessmentDetails.setEmailId(emailId);
		assessmentDetails.setTotalMarks(totalMarks);
		assessmentDetails.setAssessmentName(assessmentName);
		assessmentDetails.setResult(result);
		
		assessmenRepo.save(assessmentDetails);
	}

}
