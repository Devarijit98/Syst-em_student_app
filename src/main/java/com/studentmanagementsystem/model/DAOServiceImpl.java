package com.studentmanagementsystem.model;

import java.sql.*;

public class DAOServiceImpl implements DAOService {
	private Connection con;
	private Statement stmnt;
	
	@Override
	public void connectDb() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aphs", "root", "test");
			stmnt = con.createStatement();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void signUp(String studentName, String studentEmail, String studentPassword) {
		try {
		stmnt.executeUpdate("insert into login values('"+studentName+"', '"+studentEmail+"', '"+studentPassword+"')");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean verifyLogin(String studentEmail, String studentPassword) {
		try {
			ResultSet result = stmnt.executeQuery("select * from login where studentEmail='"+studentEmail+"' and studentPassword='"+studentPassword+"'");
			return result.next();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public void createRegistration(int studentId, String studentName, String studentMobile, String studentEmail, String studentAddress, String studentCourse, double studentFee) {
		try {
			stmnt.executeUpdate("insert into datas values("+studentId+",  '"+studentName+"', '"+studentMobile+"', '"+studentEmail+"', '"+studentAddress+"', '"+studentCourse+"', "+studentFee+")");
		} catch (SQLException e) {
			e.printStackTrace();
		
		}
	}

	@Override
	public ResultSet readRegistration() {
		try {
			ResultSet result = stmnt.executeQuery("Select * from datas");
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public void updateRegistration(String studentName, String studentMobile, String studentEmail, String studentAddress, String studentCourse, double studentFee) {
		try {
			stmnt.executeUpdate("Update datas Set studentName = '"+studentName+"', studentMobile = '"+studentMobile+"', studentAddress='"+studentAddress+"', studentCourse='"+studentCourse+"', studentFee="+studentFee+" Where studentEmail= '"+studentEmail+"'");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void deleteRegistration(String studentEmail) {
		try {
			stmnt.executeUpdate("Delete from datas where studentEmail= '"+studentEmail+"'");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	//devaloped by akashay
	 @Override
	    public boolean isEmailExists(String email) {
	        try {
	            ResultSet rs = stmnt.executeQuery("select 1 from datas where studentEmail='" + email + "'");
	            return rs.next();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	    }

	    @Override
	    public boolean isMobileExists(String mobile) {
	        try {
	            ResultSet rs = stmnt.executeQuery("select 1 from datas where studentMobile='" + mobile + "'");
	            return rs.next();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
	}



