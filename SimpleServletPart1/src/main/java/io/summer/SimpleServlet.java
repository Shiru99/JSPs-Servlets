package io.summer;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SimpleServlet using Annotations
 */

/*
	base URL (web-application name) with matching urlPattern - makes tomcat run this class
	
	Default method - doGet
*/ 
@WebServlet(description = "A simple servlet Using Annotations", urlPatterns = { "/SimpleServletPath" })
public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SimpleServlet() {}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("A simple servlet Using Annotations : Hello from doGet");
		
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.println("<h3>Hello From</h3><h1>doGet</h1><p>A simple servlet Using Annotations</p>");
	}
}