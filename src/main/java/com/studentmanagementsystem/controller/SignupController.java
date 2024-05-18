package com.studentmanagementsystem.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.studentmanagementsystem.model.DAOService;
import com.studentmanagementsystem.model.DAOServiceImpl;

@WebServlet("/signUp")
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SignupController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String studentName = request.getParameter("studentName");
	String studentEmail = request.getParameter("studentEmail");
	String studentPassword = request.getParameter("studentPassword");
	
	DAOService service = new DAOServiceImpl();
	service.connectDb();
	service.signUp(studentName, studentEmail, studentPassword);
	
	request.setAttribute("msg", "Signup Successfully");
	RequestDispatcher rd = request.getRequestDispatcher("Signup.jsp");
	rd.forward(request, response);
	}

}
