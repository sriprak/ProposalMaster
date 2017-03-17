<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style>
a:visited {
	color: blue;
}
</style>
<script>
	function validateForm() {
		var x = document.loginForm.userName.value;
		var y = document.loginForm.passWord.value;

		if (x == "" || x == null) {
			alert("Please enter your registered username");
			return false;
		} else if (y == "" || y == null) {
			alert("Password is essential to verify your credential");
			return false;
		} else
			return true;
	}
</script>
</head>
<body bgcolor="#99CCFF">
	<h3 align="center">Welcome to BAI Proposal Master</h3>
	<center>
		<font size="3" color="red">Please fill in necessary details</font>
	</center>
	<br>
	<form action="LoginServlet" id="logFormId" name="loginForm" method="post">
		<table align="center">
			<tr>
				<td align="center">Username</td>
				<td>:</td>
				<td align="center"><input type="text" id="userId"
					name="userName" width="304px" /></td>
			</tr>
			<tr>
				<td align="center">Password</td>
				<td>:</td>
				<td align="center"><input type="password" id="passId"
					name="passWord" width="304px" /></td>
			</tr>
		</table>
		<br>
		<table align="center">
			<tr>
				<td><input type="submit" id="logId" name="logBut" value="LOGIN"
					onclick="return validateForm();" /></td>
				<td><input type="reset" id="resetId" name="resetBut"
					value="RESET" /></td>
			</tr>
		</table>
		<center><font>New User???? <a href="register.jsp">Click here</a> to register first</font></center>
		<%
			Object obj = request.getAttribute("message");
			if (obj != null) {
				System.out.println(obj.toString());
		%>
		<br>
		<br>
		<center>
			<font size="3" color="red"><strong><%=obj.toString() %></strong></font>
		</center>
		<%
	}
	%>
	</form>
</body>
</html>