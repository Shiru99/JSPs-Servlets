
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP basics</title>
	</head>
	<body>
		<h2>JSP - Java Servlet Pages basics</h2>

		<!-- "!" declaration tag (to define method)-->
		<%!		
			public int op(int a,int b){
				return a+b;
			}
		%>

		<h4>Sum of alpha and beta : 
			<%
				/* part of '_jspService' method */
				/* No method definition allowed here - Java doesn't support inner methods */
				int alpha = 987;
				int beta = 654;
				out.println(alpha+beta);
				
				int sum = alpha+beta;
				int index = 10;
			%>
		</h4>
		
		<p>Sum of alpha and beta : <%=sum %></p>	<!-- "=" for using value of variable in HTML tag -->
		<p>Sum of alpha and beta : <%=op(alpha,beta)%></p>
		
		<%
			for(;index>=0;index--)
			{
		%>
			<p><i>For loop : <%=index%></i></p>
		<% 
			}
		%>
		
	</body>
</html>