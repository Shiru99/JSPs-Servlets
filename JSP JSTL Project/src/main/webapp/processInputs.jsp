<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results of Inputs</title>
</head>
<body>

	
	<jsp:useBean id="user" class="io.summer.dto.User" scope="request">
		<!-- M-1 -->
		<%-- <jsp:setProperty name="user" property="userID" param="userID"/>
		<jsp:setProperty name="user" property="userName" param="userName"/> --%>
		
		<!-- M-2 param==property -->
		<%-- <jsp:setProperty name="user" property="address1" />
		<jsp:setProperty name="user" property="address2" />
		<jsp:setProperty name="user" property="state" />
		<jsp:setProperty name="user" property="city" />
		<jsp:setProperty name="user" property="pincode" /> --%>
		
		<!-- M-3 -->
		<jsp:setProperty name="user" property="*" />
	</jsp:useBean>
	
	
	
	<h4>Hello <jsp:getProperty property="userName" name="user"/></h4>
	
	<p><jsp:getProperty property="userID" name="user"/></p>
	<p><jsp:getProperty property="userName" name="user"/></p>
	<p><jsp:getProperty property="address1" name="user"/></p>
	<p><jsp:getProperty property="address2" name="user"/></p>
	<p><jsp:getProperty property="state" name="user"/></p>
	<p><jsp:getProperty property="city" name="user"/></p>
	<p><jsp:getProperty property="pincode" name="user"/></p>
	
</body>
</html>