package io.summer;

import java.io.IOException;

import io.summer.dto.User;
import io.summer.service.LoginService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(description = "Login Servlet", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		LoginService loginService = new LoginService();
		boolean status = loginService.authenticate(userName, password);
		
		if(status) {
			
			User user = loginService.getUser(userName);
			request.getSession().setAttribute("user", user);
			
			response.sendRedirect("success.jsp");	
			/*
			  Redirect from browser : 
			 
			 	1. In case of servlet need to pass path of servlet
			 	2. sending response back & redirect can not be performed at a same time
			*/ 
			return;
		}else {
			response.sendRedirect("login.jsp");
			return;
		}
		
	}
}