<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Init Params</title>
</head>
<body>

	<%!
		public void jspInit() {
			String defaultUserName = getServletConfig().getInitParameter("defaultUserName");
			getServletContext().setAttribute("defaultUser", defaultUserName);
		}
	%>


	<%
		String userName = request.getParameter("user");
	
		if(userName != null){
			getServletContext().setAttribute("user", userName);
		}
		else if(getServletContext().getAttribute("user") != null){
			userName = (String) getServletContext().getAttribute("user");
		}
		else{
			userName = (String) getServletContext().getAttribute("defaultUser");
			getServletContext().setAttribute("user", userName);
		}
	
	%>

	<h3>
		Default User from servlet config :
		<%=userName%>
	</h3>

</body>
</html>