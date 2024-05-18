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

@WebServlet("/create")
public class CreateRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreateRegistrationController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/NewRegistration.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int studentId = Integer.parseInt(request.getParameter("studentId"));
		String studentName = request.getParameter("studentName");
		String studentMobile = request.getParameter("studentMobile");
		String studentEmail = request.getParameter("studentEmail");
		String studentAddress = request.getParameter("studentAddress");
		String studentCourse = request.getParameter("studentCourse");
		double studentFee = Double.parseDouble(request.getParameter("studentFee"));
		
		DAOService service = new DAOServiceImpl();
		service.connectDb();
		
		//developed by akshay
		
		if (service.isEmailExists(studentEmail)) {
            request.setAttribute("msg", "Email already exists.");
        } else if (service.isMobileExists(studentMobile)) {
            request.setAttribute("msg", "Mobile number already exists.");
        } else {
            service.createRegistration(studentId, studentName, studentMobile, studentEmail, studentAddress, studentCourse, studentFee);
            request.setAttribute("msg", "Record Saved Successfully.");
        }
		//
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/NewRegistration.jsp");
		rd.forward(request, response);
	}
}
