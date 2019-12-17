package com.wipro.user.repository;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="assessment_details")
public class AssessmentDetails {

	@Id
	@GeneratedValue(strategy= GenerationType.SEQUENCE, generator="MySequenceGenerator")
	@SequenceGenerator(allocationSize=1, schema="myschema",  name="MySequenceGenerator", sequenceName = "mysequence")
	private Long id; 
	private String testDate;
	private String assessmentName;
	private int testMarks;
	private String emailId;
	private int totalMarks;
	private String result;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
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
