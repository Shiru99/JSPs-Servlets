package io.summer;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class XMLservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public XMLservlet(){}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		System.out.println("A Simple Servlet using web.xml Configurations : Hello from doGet");
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.println("<h3>Hello From</h3>"
				+ "<h1>doGet</h1>"
				+ "<p>A Simple Servlet using web.xml Configurations</p>");
	}
}