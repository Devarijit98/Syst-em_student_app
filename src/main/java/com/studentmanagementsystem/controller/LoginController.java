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


@WebServlet("/verifyLogin")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentEmail = request.getParameter("studentEmail");
		String studentPassword = request.getParameter("studentPassword");
		
		DAOService service = new DAOServiceImpl();
		service.connectDb();
		
		boolean result = service.verifyLogin(studentEmail, studentPassword);
		if(result) {
			request.setAttribute("verify", result);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/NewRegistration.jsp");
			rd.forward(request, response);
		}else {
			request.setAttribute("verify", "invalid username and password");
		}
		
	}

}
