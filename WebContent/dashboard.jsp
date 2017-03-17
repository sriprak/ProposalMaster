<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Dashboard Page</title>
<style>
a:visited {
	color: blue;
}

a.right {
	position: absolute;
	right: 0;
}
</style>
<script>
$("a[href='#top']").click(function() {
	$("html, body").animate({
		scrollTop : 0
	}, "fast");
	return false;
});
</script>
</head>
<%
String userName = (String)request.getAttribute("userName");
session.setAttribute("userName", userName);
%>
<body bgcolor="#99CCFF">
<h3 align="center">Welcome, <%=session.getAttribute("userName")%></h3>
<div align="right">
		<a href="LogoutServlet">Logout</a>
</div>
<center><strong><font size="4">My Dash Board</font></strong></center>
<center><strong><font size="4">To create a new proposal of your choice, please <a href="reportSel.jsp">Click Here</a></font></strong></center>
<br>
<%
Connection conn = null;
Statement stmt = null;
Statement stmt2 = null;
Statement stmt3 = null;
try {
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/proposaldb", "root", "root");
	stmt = conn.createStatement();
	stmt2 = conn.createStatement();
	stmt3 = conn.createStatement();
	ResultSet rs = stmt
			.executeQuery("Select * from users as u where u.username='"
					+ userName + "'");
	ResultSet rs2 = stmt2.executeQuery("Select u.*, f.* from users as u inner join files as f on u.user_id=f.user_id order by f.file_id desc");
	ResultSet rs3 = stmt3.executeQuery("Select u.*, f.* from users as u inner join files as f on u.user_id=f.user_id where u.username='"+userName+"' order by f.file_id desc");
%>
<table border="1" cellpadding="4" align="center">
<%
	while(rs.next()){
		if(rs.getString("username").equalsIgnoreCase("administrator")){
%>
<tr><th>File Name</th><th>Created By</th></tr>
<% 
while(rs2.next()){
%>
<tr><td><a href="DownloadServlet?id=<%=rs2.getInt("file_id")%>"><%=rs2.getString("file_name") %></a></td><td><%=rs2.getString("username")%></td></tr>
<% 
			}
		}
		else{
%>
<tr><th>File Name</th></tr>
<%
while(rs3.next()){
%>
<tr><td><a href="DownloadServlet?id=<%=rs3.getInt("file_id")%>"><%=rs3.getString("file_name") %></a></td></tr>
<% 			}
		}
	}
%>

<%
} catch (Exception e) {
	e.printStackTrace();
} finally {
	stmt.close();
	stmt2.close();
	conn.close();
}
%>
</table>
<a href="#top" class="right">TOP</a>
</body>
</html>