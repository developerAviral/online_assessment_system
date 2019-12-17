package com.wipro.user.model;

public class AssessmentDetailsDto {
	
	private String testDate;
	private String assessmentName;
	private int testMarks;
	private String emailId;
	private int totalMarks;
	private String result;
	public String getTestDate() {
		return testDate;
	}
	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}
	public String getAssessmentName() {
		return assessmentName;
	}
	public void setAssessmentName(String assessmentName) {
		this.assessmentName = assessmentName;
	}
	public int getTestMarks() {
		return testMarks;
	}
	public void setTestMarks(int testMarks) {
		this.testMarks = testMarks;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public int getTotalMarks() {
		return totalMarks;
	}
	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	
}
