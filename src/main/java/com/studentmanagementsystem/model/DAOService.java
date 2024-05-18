package com.studentmanagementsystem.model;

import java.sql.*;

public interface DAOService {
	public void connectDb();

	public void signUp(String studentName, String studentEmail, String studentPassword);

	public boolean verifyLogin(String studentEmail, String studentPassword);

	public void createRegistration(int studentId, String studentName, String studentMobile, String studentEmail,
			String studentAddress, String studentCourse, double studentFee);

	public ResultSet readRegistration();

	public void deleteRegistration(String studentEmail);

	public void updateRegistration(String studentName, String studentMobile, String studentEmail,
			String studentCity, String studentCourse, double studentFee);
	
	//developed by akshay
	
	public boolean isEmailExists(String email);
	
	public boolean isMobileExists(String mobile);
}
