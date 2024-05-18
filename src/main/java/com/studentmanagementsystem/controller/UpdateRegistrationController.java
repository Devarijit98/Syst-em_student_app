package com.studentmanagementsystem.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.studentmanagementsystem.model.DAOService;
import com.studentmanagementsystem.model.DAOServiceImpl;

@WebServlet("/update")
public class UpdateRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateRegistrationController() {
        super();
    }    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentName = request.getParameter("studentName");
		String studentMobile = request.getParameter("studentMobile");
		String studentEmail = request.getParameter("studentEmail");
		String studentAddress = request.getParameter("studentAddress");
		String studentCourse = request.getParameter("studentCourse");
		double studentFee = Double.parseDouble(request.getParameter("studentFee"));
		
		request.setAttribute("studentName" ,studentName);
		request.setAttribute("studentMobile" ,studentMobile);
		request.setAttribute("studentEmail" ,studentEmail);
		request.setAttribute("studentAddress" ,studentAddress);
		request.setAttribute("studentCourse" ,studentCourse);
		request.setAttribute("studentFee" ,studentFee);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/UpdateRegistration.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentName = request.getParameter("studentName");
		String studentMobile = request.getParameter("studentMobile");
		String studentEmail = request.getParameter("studentEmail");
		String studentAddress = request.getParameter("studentAddress");
		String studentCourse = request.getParameter("studentCourse");
		double studentFee = Double.parseDouble(request.getParameter("studentFee"));
		
		DAOService service = new DAOServiceImpl();
		service.connectDb();
		service.updateRegistration(studentName, studentMobile, studentEmail, studentAddress, studentCourse, studentFee);
		
		ResultSet result = service.readRegistration();
		request.setAttribute("data", result);
		request.setAttribute("msg", "Updated Successfully");
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/ShowRegistration.jsp");
		rd.forward(request, response);	
	}

}
