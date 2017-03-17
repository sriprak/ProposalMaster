<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Proposal Selection Page</title>
<style>
a:visited {
	color: blue;
}
</style>
</head>
<body bgcolor="#99CCFF">
<%

	//System.out.println(userName);
%>
	<h3 align="center">Welcome to BAI Proposal Master, <%=session.getAttribute("userName") %></h3>
	<div align="right">
		<a href="LogoutServlet">Logout</a>
	</div>
	<table align="center" cellpadding="10 px">
		<tr>
			<th align="center">Choose a Proposal from below</th>
		</tr>
		<tr>
			<td align="left"><a href="accout.jsp">Accounting Outsourcing
					Services</a></td>
		</tr>
		<tr>
			<td align="left"><a href="admout.jsp">Administration
					Outsourcing Services</a></td>
		</tr>
		<tr>
			<td align="left"><a href="bizctrlfn.jsp">Business Control
					Functions</a></td>
		</tr>
		<tr>
			<td align="left"><a href="compreg.jsp">Company Registration
					Services</a></td>
		</tr>
		<tr>
			<td align="left"><a href="cmpsecm.jsp">Company Secretarial
					Matters</a></td>
		</tr>
		<tr>
			<td align="left"><a href="cmsales.jsp">Country Manager -
					Sales</a></td>
		</tr>
		<tr>
			<td align="left"><a href="distsrch.jsp">Distributor Search
					Services</a></td>
		</tr>
		<tr>
			<td align="left"><a href="financedd.jsp">Financial Due
					Diligence</a></td>
		</tr>
		<tr>
			<td align="left"><a href="hrdd.jsp">HR Due Diligence</a></td>
		</tr>
		<tr>
			<td align="left"><a href="indvst.jsp">India Visit</a></td>
		</tr>
		<tr>
			<td align="left"><a href="legaldd.jsp">Legal Due Diligence</a></td>
		</tr>
		<tr>
			<td align="left"><a href="locstd.jsp">Location Study
					Services</a></td>
		</tr>
		<tr>
			<td align="left"><a href="mktrsch.jsp">Market Research
					Services</a></td>
		</tr>
		<tr>
			<td align="left"><a href="ptnrsrch.jsp">Partner Search
					Proposal</a></td>
		</tr>
		<tr>
			<td align="left"><a href="ptnrprog.jsp">Partnership Program
					Proposal</a></td>
		</tr>
		<tr>
			<td align="left"><a href="postreg.jsp">Post Registration
					Services</a></td>
		</tr>
		<tr>
			<td align="left"><a href="recruit.jsp">Recruitment Services</a></td>
		</tr>
		<tr>
			<td align="left"><a href="suppdev.jsp">Supplier Development
					Services</a></td>
		</tr>
		<tr>
			<td align="left"><a href="suppsrch.jsp">Supplier Search
					Services</a></td>
		</tr>
	</table>
</body>
</html>