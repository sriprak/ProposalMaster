<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<script type="text/javascript">
function checkPass()
{
    var pass1 = document.getElementById('passId');
    var pass2 = document.getElementById('rPassId');
    var message = document.getElementById('confirmMessage');
    
    var goodColor = "green";
    var badColor = "red";
    
    if(pass1.value == pass2.value){
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!";
    }else{
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!";
    }
}  

function validateForm(){
	
	var fname = document.getElementById('fNameId');
	var lname = document.getElementById('lNameId');
	var email = document.getElementById('eMailId');
	var uname = document.getElementById('uNameId');
	var password = document.getElementById('passId');
	var rpassword = document.getElementById('rPassId');
	
	if(fname.value == "" || fname.value == null){
		alert('Please enter your first name');
		return false;
	}
	else
		if(lname.value == "" || lname.value == null){
			alert('Please enter your last name');
			return false;
		}
		else
			if(email.value == "" || email.value == null){
				alert('Please enter your email id. Its important to us');
				return false;
			}
			else
				if(uname.value == "" || uname.value == null){
					alert('Please enter your suitable username');
					return false;
				}
				else
					if(password.value == "" || password.value == null){
						alert('Please enter your password. Its important for your authorization');
						return false;
					}
					else
						if(rpassword.value == "" || rpassword.value == null){
							alert('Please reconfirm your password.');
							return false;
						}
						else
							return true;
}

function resetData(){
	var fname = document.getElementById('fNameId');
	var lname = document.getElementById('lNameId');
	var email = document.getElementById('eMailId');
	var uname = document.getElementById('uNameId');
	var password = document.getElementById('passId');
	var pass2 = document.getElementById('rPassId');
	var message = document.getElementById('confirmMessage');
	
	fname.value = "";
	lname.value = "";
	email.value = "";
	uname.value = "";
	password.value = "";
	pass2.value = "";
	pass2.style.backgroundColor = "white";
	message.innerHTML = "";
	
	return true;
}
</script>
</head>
<body bgcolor="#99CCFF">
	<h3 align="center">Welcome to Registration Page of the BAI Proposal Master</h3>
	<br>
	<form action="RegisterServlet" name="regForm" id="regId" method="post">
		<div align="center">
			<table>
				<tr><td>First Name</td><td>:</td><td><input type="text" id="fNameId" name="fName" width="304px" /></td></tr>
				<tr><td>Last Name</td><td>:</td><td><input type="text" id="lNameId" name="lName" width="304px" /></td></tr>
				<tr><td>Email Id</td><td>:</td><td><input type="text" id="eMailId" name="eMail" width="304px" /></td></tr>
				<tr><td>Username</td><td>:</td><td><input type="text" id="uNameId" name="uName" width="304px" /></td></tr>
				<tr><td>Password</td><td>:</td><td><input type="password" id="passId" name="passWord" width="304px" /></td></tr>
				<tr><td>Repeat Password</td><td>:</td><td><input type="password" id="rPassId" name="rPassWord" width="304px" onkeyup="checkPass();"/>&nbsp;<span id="confirmMessage" class="confirmMessage"></span></td></tr>
			</table>
			<br>
			<table>
				<tr><td><input type="submit" name="registerBut" value="REGISTER" onclick="return validateForm();" /></td><td><input type="reset" name="resetBut" value="RESET" onclick="return resetData();" /></td></tr>
			</table>
		</div>
	</form>
	<center>
		<%
			Object obj = request.getAttribute("error");
			if(obj != null)
			{
			System.out.println(obj.toString());
		%>
		<font size="4" color="red">
			<strong> <%=obj.toString() %> </strong>
		</font>
		<%
			}
		%>
	</center>
</body>
</html>