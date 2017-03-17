<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@page import="java.util.Map" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>India Visit Proposal Page</title>
<style>
a:visited {
	color: blue;
}
</style>
<script type="text/javascript">
	function addRow1(tableID) {

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var cell1 = row.insertCell(0);
		var element1 = document.createElement("input");
		element1.type = "checkbox";
		element1.name = "chk1";
		cell1.appendChild(element1);

		var cell2 = row.insertCell(1);
		cell2.innerHTML = "Product Name";

		var cell3 = row.insertCell(2);
		cell3.innerHTML = ":";

		var cell4 = row.insertCell(3);
		var element2 = document.createElement("input");
		element2.type = "text";
		element2.name = "prodName";
		cell4.appendChild(element2);

	}

	function delRow1(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for ( var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					table.deleteRow(i);
					rowCount--;
					i--;
				}

			}
		} catch (e) {
			alert(e);
		}
	}

	function addRow2(tableID) {

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var cell1 = row.insertCell(0);
		var element1 = document.createElement("input");
		element1.type = "checkbox";
		element1.name = "chk2";
		cell1.appendChild(element1);

		var cell2 = row.insertCell(1);
		var element2 = document.createElement("input");
		element2.type = "text";
		element2.name = "memName";
		cell2.appendChild(element2);

		var cell3 = row.insertCell(2);
		var element3 = document.createElement("input");
		element3.type = "text";
		element3.name = "memDesgn";
		cell3.appendChild(element3);

	}

	function delRow2(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for ( var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					table.deleteRow(i);
					rowCount--;
					i--;
				}

			}
		} catch (e) {
			alert(e);
		}
	}

	function addRow3(tableID) {

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var cell1 = row.insertCell(0);
		var element1 = document.createElement("input");
		element1.type = "checkbox";
		element1.name = "chk3";
		cell1.appendChild(element1);

		var cell2 = row.insertCell(1);
		var element2 = document.createElement("input");
		element2.type = "text";
		element2.name = "pocName";
		cell2.appendChild(element2);

		var cell3 = row.insertCell(2);
		var element3 = document.createElement("input");
		element3.type = "text";
		element3.name = "pocMobNumber";
		cell3.appendChild(element3);

		var cell4 = row.insertCell(3);
		var element4 = document.createElement("input");
		element4.type = "text";
		element4.name = "pocDesgn";
		cell4.appendChild(element4);

		var cell5 = row.insertCell(4);
		var element5 = document.createElement("input");
		element5.type = "text";
		element5.name = "pocEmail";
		cell5.appendChild(element5);

	}

	function delRow3(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for ( var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					table.deleteRow(i);
					rowCount--;
					i--;
				}

			}
		} catch (e) {
			alert(e);
		}
	}

	function addRow4(tableID) {

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var cell1 = row.insertCell(0);
		var element1 = document.createElement("input");
		element1.type = "checkbox";
		element1.name = "chk4";
		cell1.appendChild(element1);

		var cell2 = row.insertCell(1);
		var element2 = document.createElement("input");
		element2.type = "text";
		element2.name = "tgtAreaName";
		cell2.appendChild(element2);

	}

	function delRow4(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for ( var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					table.deleteRow(i);
					rowCount--;
					i--;
				}

			}
		} catch (e) {
			alert(e);
		}
	}

	function addRow5(tableID) {

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var cell1 = row.insertCell(0);
		var element1 = document.createElement("input");
		element1.type = "checkbox";
		element1.name = "chk5";
		cell1.appendChild(element1);

		var cell2 = row.insertCell(1);
		var element2 = document.createElement("input");
		element2.type = "text";
		element2.name = "baPocName";
		cell2.appendChild(element2);

		var cell3 = row.insertCell(2);
		var element3 = document.createElement("textarea");
		/* element2.type = "text"; */
		element3.name = "baPocAddress";
		cell3.appendChild(element3);

		var cell4 = row.insertCell(3);
		var element4 = document.createElement("input");
		element4.type = "text";
		element4.name = "baPocMobNumber";
		cell4.appendChild(element4);

		var cell5 = row.insertCell(4);
		var element5 = document.createElement("input");
		element5.type = "text";
		element5.name = "baPocDesgn";
		cell5.appendChild(element5);

		var cell6 = row.insertCell(5);
		var element6 = document.createElement("input");
		element6.type = "text";
		element6.name = "baPocEmail";
		cell6.appendChild(element6);

	}

	function delRow5(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for ( var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					table.deleteRow(i);
					rowCount--;
					i--;
				}
			}
		} catch (e) {
			alert(e);
		}
	}

	function checkAll1() {
		for ( var i = 0; i < document.forms[0].elements.length; i++) {
			var e = document.forms[0].elements[i];
			if ((e.name == 'chk1') && (e.type == 'checkbox')) {
				e.checked = document.forms[0].chks1.checked;
			}
		}
	}

	function checkAll2() {
		for ( var i = 0; i < document.forms[0].elements.length; i++) {
			var e = document.forms[0].elements[i];
			if ((e.name == 'chk2') && (e.type == 'checkbox')) {
				e.checked = document.forms[0].chks2.checked;
			}
		}
	}

	function checkAll3() {
		for ( var i = 0; i < document.forms[0].elements.length; i++) {
			var e = document.forms[0].elements[i];
			if ((e.name == 'chk3') && (e.type == 'checkbox')) {
				e.checked = document.forms[0].chks3.checked;
			}
		}
	}

	function checkAll4() {
		for ( var i = 0; i < document.forms[0].elements.length; i++) {
			var e = document.forms[0].elements[i];
			if ((e.name == 'chk4') && (e.type == 'checkbox')) {
				e.checked = document.forms[0].chks4.checked;
			}
		}
	}

	function checkAll5() {
		for ( var i = 0; i < document.forms[0].elements.length; i++) {
			var e = document.forms[0].elements[i];
			if ((e.name == 'chk5') && (e.type == 'checkbox')) {
				e.checked = document.forms[0].chks5.checked;
			}
		}
	}

	function calculateST() {

		document.indVstForm.servTax.value = (document.indVstForm.proffee.value)
				* (12.36 / 100);
		return true;
	}

	function calculateTotal() {
		var x = (document.indVstForm.proffee.value) * 1.00;
		var y = (document.indVstForm.servTax.value) * 1.00;
		var z = (document.indVstForm.ope.value) * 1.00;
		document.indVstForm.totalAmt.value = x + y + z;
		return true;
	}
</script>
</head>
<body bgcolor="#99CCFF">
	<h3 align="center">Welcome to BAI Proposal Master, <%=session.getAttribute("userName") %></h3>
	<div align="right">
		<a href="LogoutServlet">Logout</a>
	</div>
	<h3 align="center">India Visit Proposal Fields</h3>
	<center>
		<font size="3" color="red">Please fill in the required details</font>
	</center>
	<br>
	<form action="IndiaVisitServlet" id="ivId" name="indVstForm"
		method="post">
		<table align="center" id="oneTimeTable">
			<tr>
				<td>Company's Full Name</td>
				<td>:</td>
				<td><input type="text" id="fullId" name="fullName"
					width="304px" /></td>
			</tr>
			<tr>
				<td>Company's Short Name</td>
				<td>:</td>
				<td><input type="text" id="shortId" name="shortName"
					width="304px" /></td>
			</tr>
			<tr>
				<td>Company's Description</td>
				<td>:</td>
				<td><textarea id="descId" name="descpt"
						style="width: 157px; height: 80px"></textarea></td>
			</tr>
			<tr>
				<td>Company's Address</td>
				<td>:</td>
				<td><textarea id="addressId" name="address"
						style="width: 157px; height: 80px"></textarea></td>
			</tr>
			<tr>
				<td>Company's Telephone Number</td>
				<td>:</td>
				<td><input type="text" id="telId" name="telNum" width="304px" /></td>
			</tr>
			<tr>
				<td>Company's Fax Number</td>
				<td>:</td>
				<td><input type="text" id="faxId" name="faxNum" width="304px" /></td>
			</tr>
			<tr>
				<td>Company's Website</td>
				<td>:</td>
				<td><input type="text" id="webId" name="webSite" width="304px" /></td>
			</tr>
			<tr>
				<td>Background Information</td>
				<td>:</td>
				<td><textarea id="bkgId" name="bkgInfo"
						style="width: 157px; height: 80px"></textarea></td>
			</tr>
			<tr>
				<td>Scope of Work</td>
				<td>:</td>
				<td><textarea id="scpwId" name="scopeWork"
						style="width: 157px; height: 80px"></textarea></td>
			</tr>
			<tr>
				<td>Support from Client</td>
				<td>:</td>
				<td><textarea id="suppId" name="suppInfo"
						style="width: 157px; height: 80px"></textarea></td>
			</tr>
			<tr>
				<td>Project Duration</td>
				<td>:</td>
				<td><input type="text" id="durId" name="duration" width="304px" /></td>
			</tr>
			<tr>
				<td>Professional Fee (in Euros)</td>
				<td>:</td>
				<td><input type="text" id="pfId" name="proffee" width="304px" /></td>
			</tr>
			<tr>
				<td>Service Tax (in Euros)</td>
				<td>:</td>
				<td><input type="text" id="stId" name="servTax" width="304px" />
					<input type="button" value="CALCULATE" onclick="calculateST();" /></td>
			</tr>
			<tr>
				<td>Out of Pocket Expenses (in Euros)</td>
				<td>:</td>
				<td><input type="text" id="opeId" name="ope" width="304px" /></td>
			</tr>
			<tr>
				<td>Total Amount (in Euros)</td>
				<td>:</td>
				<td><input type="text" id="totAmtId" name="totalAmt"
					width="304px" /> <input type="button" value="CALCULATE"
					onclick="calculateTotal();" /></td>
			</tr>
			<tr>
				<td>BA outside India</td>
				<td>:</td>
				<td><input type="text" id="cntryId" name="cntry" width="304px" /></td>
			</tr>
		</table>
		<br>
		<table align="center" id="productTable">
			<tr>
				<th align="left" colspan="4">Products</th>
			</tr>
			<tr>
				<td><input type="checkbox" id="prdChkId" name="chks1"
					onclick="checkAll1();" /></td>
				<td align="center" colspan="3"><input type="button" id="addId"
					name="addBut" value="ADD" onclick="addRow1('productTable')" />&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="button" type="button" id="delId" name="delBut" value="DELETE"
					onclick="delRow1('productTable')" /></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk1"></td>
				<td>Product Name</td>
				<td>:</td>
				<td><input type="text" id="prodId" name="prodName"
					width="304px" /></td>
			</tr>
		</table>
		<br>
		<table align="center" id="projTeamTable">
			<tr>
				<th align="left" colspan="3">Project Team Details</th>
			</tr>
			<tr>
				<td align="center" colspan="3"><input type="button" id="addId"
					name="addBut" value="ADD" onclick="addRow2('projTeamTable')" />&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="button" type="button" id="delId" name="delBut" value="DELETE"
					onclick="delRow2('projTeamTable')" /></td>
			</tr>
			<tr>
				<th><input type="checkbox" name="chks2" onclick="checkAll2();" /></th>
				<th>Member Name</th>
				<th>Designation</th>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk2" /></td>
				<td><input type="text" name="memName" width="304px" /></td>
				<td><input type="text" name="memDesgn" width="304px" /></td>
			</tr>
		</table>
		<br>
		<table align="center" id="contactPersonTable">
			<tr>
				<th align="left" colspan="5">Company's Contact Person Details</th>
			</tr>
			<tr>
				<td align="center" colspan="5"><input type="button" id="addId"
					name="addBut" value="ADD" onclick="addRow3('contactPersonTable')" />&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="button" type="button" id="delId" name="delBut" value="DELETE"
					onclick="delRow3('contactPersonTable')" /></td>
			</tr>
			<tr>
				<th><input type="checkbox" name="chks3" onclick="checkAll3();" /></th>
				<th>POC's Name</th>
				<th>POC's Mob. No.</th>
				<th>Designation</th>
				<th>Email Id</th>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk3" /></td>
				<td><input type="text" name="pocName" width="304px" /></td>
				<td><input type="text" name="pocMobNumber" width="304px" /></td>
				<td><input type="text" name="pocDesgn" width="304px" /></td>
				<td><input type="text" name="pocEmail" width="304px" /></td>
			</tr>
		</table>
		<br>
		<table align="center" id="targetAreaTable">
			<tr>
				<th align="left" colspan="2">Target Areas</th>
			</tr>
			<tr>
				<td><input type="checkbox" id="tgtAreaId" name="chks4"
					onclick="checkAll4();" /></td>
				<td align="center"><input type="button" id="addId"
					name="addBut" value="ADD" onclick="addRow4('targetAreaTable')" />&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="button" type="button" id="delId" name="delBut" value="DELETE"
					onclick="delRow4('targetAreaTable')" /></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk4"></td>
				<td><input type="text" id="tgtAreaId" name="tgtAreaName"
					width="304px" /></td>
			</tr>
		</table>
		<br>
		<table align="center" id="baContactPersonTable">
			<tr>
				<th align="left" colspan="5">BA's Contact Person outside India
					Details</th>
			</tr>
			<tr>
				<td align="center" colspan="6"><input type="button" id="addId"
					name="addBut" value="ADD" onclick="addRow5('baContactPersonTable')" />&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="button" type="button" id="delId" name="delBut" value="DELETE"
					onclick="delRow5('baContactPersonTable')" /></td>
			</tr>
			<tr>
				<th><input type="checkbox" name="chks5" onclick="checkAll5();" /></th>
				<th>BA's POC's Name</th>
				<th>BA's POC's Address</th>
				<th>BA's POC's Mob. No.</th>
				<th>Designation</th>
				<th>Email Id</th>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk5" /></td>
				<td><input type="text" name="baPocName" width="304px" /></td>
				<td><textarea name="baPocAddress"></textarea></td>
				<td><input type="text" name="baPocMobNumber" width="304px" /></td>
				<td><input type="text" name="baPocDesgn" width="304px" /></td>
				<td><input type="text" name="baPocEmail" width="304px" /></td>
			</tr>
		</table>
		<br>
		<table align="center" id="submitTable">
			<tr>
				<td><input type="submit" id="subId" name="submit"
					value="SUBMIT" /></td>
				<td><input type="reset" id="resId" name="reset" value="RESET" /></td>
			</tr>
		</table>
	</form>
</body>
</html>