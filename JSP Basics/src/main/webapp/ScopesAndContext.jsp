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
			
			scope : PageContext.SESSION_SCOPE
					APPLICATION_SCOPE
					PAGE_SCOPE
					REQUEST_SCOPE
		
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
		pageContext.setAttribute("userName",userName);
		context1.setAttribute("userName", userName);
		int userCount = (int) context1.getAttribute("userCount");
		context1.setAttribute("userCount", ++userCount);

		pageContext.setAttribute("DefaultUser", "No DefaultUser", PageContext.SESSION_SCOPE);
	} 
	else {
		pageContext.setAttribute("DefaultUser", "This is DefaultUser", PageContext.SESSION_SCOPE);
	}
	
	
	pageContext.setAttribute("User", "UserAttribute", PageContext.REQUEST_SCOPE);
	%>
	
	<!-- Searches for the named attribute in page, request, session (if valid), and
	application scope(s) in order and returns the value associated or null. -->
	<%= pageContext.findAttribute("User")%>


	<%@ include file="ScopesAndContextPageTwo.jsp" %>

</body>
</html>