<!-- 
	@ Page - Page Directive (The page directive defines attributes that apply to an entire JSP page.)
	Attributes of JSP page directive : import, contentType, extends, info, buffer, language,
	 isELIgnored, isThreadSafe, autoFlush, session, pageEncoding, errorPage, isErrorPage
-->
<%@ page 
		language="java" 
		contentType="text/html; 
		charset=UTF-8"
   	 	pageEncoding="UTF-8"
   	 	
   	 	import="java.util.Date" 
		import="java.lang.Math" 
%>
<!-- 
	@ taglib - Taglib directive (The JSP taglib directive is used to define a tag library that
	 defines many tags.)
-->
<%-- <%@ taglib prefix="myTag" uri="http://java.sun.com/jsp/jstl/core" %> --%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP Directives</title>
		<%-- <myTag:hello/>  --%>
	</head>
	<body>
	
		<h3>The Time is : <%=new Date() %></h3>
		
		<!-- @ include - Include directive is used to include the contents of any resource 
			it may be jsp file, html file or text file. -->
			
		<%@ include file="DirectivesInclude.jsp" %>
		
	</body>
</html>