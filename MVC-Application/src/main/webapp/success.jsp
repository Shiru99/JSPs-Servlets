<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="io.summer.dto.User"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
	<%
		/* M-1 */
		// User user = (User) session.getAttribute("user");
	
		/* M-2 */
		User user = (User) request.getAttribute("user");
	%>
	<center>
		<h2>Login Successful !!</h2>
		<h3>
			Hello,
			<%=user.getFullName()%>
			!
		</h3>
	</center>

</body>
</html>