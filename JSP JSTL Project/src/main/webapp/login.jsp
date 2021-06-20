<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>

	<form action="processInputs.jsp" method="post">
		User ID : <input type="number" name="userID" /><br>
		User Name : <input type="text" name="userName" /><br>
		Address line 1 : <input type="text" name="address1" /><br>
		Address line 2 : <input type="text" name="address2" /><br>
		City : <input type="text" name="city" /><br>
		State : <input type="text" name="state" /><br>
		Pincode : <input type="number" name="pincode" /><br>
		<input type="submit" />
	</form>

</body>
</html>