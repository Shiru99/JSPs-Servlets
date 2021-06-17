package io.summer;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Recruiter extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		String email = getServletConfig().getInitParameter("Email");
		String website = getServletContext().getInitParameter("Website-name");
		
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.println("<center><h1>" + website + "</h1><p>Contact us: " + email+"</center>");
	}
}