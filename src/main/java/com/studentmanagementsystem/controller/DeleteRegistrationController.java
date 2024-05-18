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

@WebServlet("/delete")
public class DeleteRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteRegistrationController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentEmail= request.getParameter("studentEmail");
		
		DAOService service = new DAOServiceImpl();
		service.connectDb();
		service.deleteRegistration(studentEmail);
		
		ResultSet result = service.readRegistration();
		request.setAttribute("data", result);
		request.setAttribute("msg", "Deleted Sucessfully");
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/ShowRegistration.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
