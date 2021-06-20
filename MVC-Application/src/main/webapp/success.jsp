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
		// User user = (User) request.getAttribute("user");
		
		
		
	%>
	<!-- /* M-3 : JSTL (useBean to get object)
	
		id : attribute name
		class : object class getting from tag 
		
		variable name is by default id
	*/ -->
	<jsp:useBean id="user" class="io.summer.dto.User" scope="request"></jsp:useBean>
	
	<!-- /*  
		
		JSTL (useBean to set object)
		
			sets object only if there is no object of id in scope 
			
			name == object name (id) 
	*/ -->

	<jsp:useBean id="admin" class="io.summer.dto.User" scope="request">
		<jsp:setProperty property="userName" name="admin" value="i'm the admin"/>
		<jsp:setProperty property="fullName" name="admin" value="MainAdmin"/>
	</jsp:useBean>
	
		<h2>Login Successful !!</h2>
		<h3>
			Hello,
			<%-- <%=user.getFullName()%> --%>
			<!-- 
				name - decides bean to look at
				property - property that need to be pulled out (calls getter	)
			 -->
			<jsp:getProperty property="fullName" name="user"/>
			!
		</h3>
		
		<p>
			greetings from 
			<jsp:getProperty property="fullName" name="admin"/>
			(
			<jsp:getProperty property="userName" name="admin"/>
			)
		</p>
	

</body>
</html>