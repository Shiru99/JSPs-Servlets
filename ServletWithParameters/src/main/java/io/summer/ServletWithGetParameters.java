package io.summer;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(description = "Passing parameters to servlet via Get method", urlPatterns = { "/ParametersWithGet" })
public class ServletWithGetParameters extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletWithGetParameters() {    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		System.out.println("Hello from doGet");
		
		// http://localhost:8989/ServletWithParameters/ParametersWithGet?userid=99&user=John+Doe
		String userName = request.getParameter("user");
		String userid = request.getParameter("userid");
		
		// http://localhost:8989/ServletWithParameters/ParametersWithGet ==> parameters = null
		
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.println("<h3>Hello "+
				userName + " ("+userid+")"
				+ "</h3>"
				+ "<h1>doGet</h1>"
				+ "<p>Passing parameters to servlet via Get method</p>");
	}
}