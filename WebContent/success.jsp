<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success Page</title>
<style>
a:visited {
	color: blue;
}
</style>
</head>
<body bgcolor="#99CCFF">
	<h3 align="center">Welcome to BAI Proposal Master, <%=session.getAttribute("userName") %></h3>
	<div align="right">
		<a href="LogoutServlet">Logout</a>
	</div>
	<br>
	<br>
	<br>
	<div align="center">
		<h3>
			<font color="green">You Have Successfully created the Document
				in the Server Machine. Please wait for 5 minutes, login again and check your dash board.
				You can download your file from your dash board.</font>
		</h3>
		<br> <br> <font size="4" color="black">If you wish to
			create another report, <a href="reportSel.jsp">Please Click Here</a>
		</font>
	</div>
</body>
</html>