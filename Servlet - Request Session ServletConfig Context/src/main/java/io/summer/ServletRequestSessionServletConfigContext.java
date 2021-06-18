package io.summer;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet(
		description = "Servlet : Request, session & context objects", 
		urlPatterns = { "/Scopes" },
		// ServletConfig - init()
		initParams = {@WebInitParam(name="defaultName",value = "New User")}
)
public class ServletRequestSessionServletConfigContext extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{	
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		
		// http://localhost:8989/Servlet%20-%20Request%20Session%20ServletConfig%20Context/Scopes?user=John+Doe
		String userName = request.getParameter("user");
		
		
		HttpSession session = request.getSession();
		ServletContext context = request.getServletContext();
		
		if(context.getAttribute("userCount")==null) {
			context.setAttribute("userCount", 0);
		}
		
		
		if(userName!=null && userName!=""){
			session.setAttribute("userName", userName);
			context.setAttribute("userName", userName);
			int userCount = (int)context.getAttribute("userCount");
			context.setAttribute("userCount", ++userCount);
		}
		
		
		writer.println("<h3>Request :</h3>"+"<h4>Hello "+userName+"</h4>");
		writer.println("<br><h3>Session :</h3>"
						+"<h4>Hello "+(String) session.getAttribute("userName")
						+"</h4>");
		writer.println("<br><h3>ServletConfig :</h3>"
				+"<h4>default user name - "+
				(String) this.getServletConfig().getInitParameter("defaultName")
				+"</h4>");
		writer.println("<br><h3>Context :</h3>"
						+"<h4>Hello "+(String) context.getAttribute("userName")
						+"</h4>"+"<br>Total User Count : "+context.getAttribute("userCount"));
	}
}