	<h3>Request :</h3>
	<p>
		Hello
		<%=userName%>
		!
	</p>
	<h3>PageContext :</h3>
	<p>
		Hello
		<%=(String) pageContext.getAttribute("userName")%>
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
