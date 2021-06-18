<%@page import="org.apache.catalina.core.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope & Context</title>
</head>
<body>
	<!-- http://localhost:8989/JSP_Basics/ScopesAndContext.jsp?user=John+Doe  -->
	<%
	String userName = request.getParameter("user");

	HttpSession session1 = request.getSession();
	ServletContext context1 = request.getServletContext();

	/* 	
		Default : (no need to define)
		
		abstract class PageContext
		
			The pageContext object can be used to set,get or remove attribute from
			one of the following scopes: page, request, session, application
			
			scope : PageContext.SESSION_SCOPE/APPLICATION_SCOPE/PAGE_SCOPE/REQUEST_SCOPE
		
		PageContext pageContext = _jspxFactory.getPageContext(this, request, response, 
		  					null, true, 8192, true);
	    
	    
	    HttpSession session = pageContext.getSession();
	    ServletContext application = pageContext.getServletContext();
	    ServletConfig config = pageContext.getServletConfig();
	*/

	if (context1.getAttribute("userCount") == null) {
		context1.setAttribute("userCount", 0);
	}

	if (userName != null && userName != "") {
		session1.setAttribute("userName", userName);

		context1.setAttribute("userName", userName);
		int userCount = (int) context1.getAttribute("userCount");
		context1.setAttribute("userCount", ++userCount);

		pageContext.setAttribute("DefaultUser", "No DefaultUser", PageContext.SESSION_SCOPE);
	} else {
		pageContext.setAttribute("DefaultUser", "This is DefaultUser", PageContext.SESSION_SCOPE);
	}
	%>

	<h3>Request :</h3>
	<p>
		Hello
		<%=userName%>
		!
	</p>


	<h3>Session :</h3>
	<p>
		Hello
		<%=(String) session1.getAttribute("userName")%>
		!
	</p>

	<h3>PageContext Session Scope :</h3>
	<p>
		Hello
		<%=(String) session.getAttribute("DefaultUser")%>
		!
	</p>

	<h3>Context :</h3>
	<p>
		Hello
		<%=(String) context1.getAttribute("userName")%>
		!
	</p>

	<h3>
		User Count :
		<%=context1.getAttribute("userCount")%>
	</h3>


</body>
</html>