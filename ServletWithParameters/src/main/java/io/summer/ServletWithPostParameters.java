package io.summer;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(description = "Passing parameters to servlet via Post method", urlPatterns = { "/ParametersWithPost" })
public class ServletWithPostParameters extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletWithPostParameters() {    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		System.out.println("Hello from doGet");
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.println("<h3>Hello From</h3>"
				+ "<h1>doGet</h1>"
				+ "<p>Passing parameters to servlet via Post method</p>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		String userName = request.getParameter("userName");
		String userID = request.getParameter("userID");
		String profession = request.getParameter("profession");
		String location = request.getParameter("location");
		String visited[] = request.getParameterValues("visited");
		
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.println("<h3>Hello " +
				userName + " ("+userID+")\t"+ profession +" from "+location 	
				+ "</h3>"
				+ "<h1>doPost</h1>"
				+ "<p>Passing parameters to servlet via Post method</p>");
		
		for (String loc : visited) {
			writer.println(loc);
		}
	}
}