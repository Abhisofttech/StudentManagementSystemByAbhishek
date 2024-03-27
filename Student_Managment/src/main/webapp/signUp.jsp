<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function validate() {
		spwd = document.form1.spwd.value;
		scnfmpwd = document.form1.scnfmpwd.value;
		if (spwd == scnfmpwd ) {
			return true;
		}
		else{
			alert("your password doesn't match");
			return false;
		}
		
	}
</script>
<title>SignUp page</title>
 <link rel="stylesheet" href="design.css">
</head>
<body>
<div class="frm">
    <center>
<h1>Sumaya Academy</h1>
<h3>SignUp Page</h3>
	<form name="form1" method="post" action="Insert.jsp"
		onsubmit="return validate()">
		<div class="tbl">
		<p>Enter your detail to SignUp into  <br>SUMAYA ACADEMY</p>
		<table>
			<tr>
				<td class="text">Name:</td>
				<td><input type="text" name="sname" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text">Username:</td>
				<td><input type="text" name="susername" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text">Email:</td>
				<td><input type="email" name="semail" value="" size=15 required ></td>
			</tr>
			<tr>
				<td class="text">Password:</td>
				<td><input type="password" name="spwd" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text"> Confirm Password:</td>
				<td><input type="password" name="scnfmpwd" value="" size=15 required></td>
			</tr>
			<tr>
				<td ><input type="submit" value="Submit Data" class="btn"></td>
				<td ><input type="reset" value="Reset Data" class="btn"></td>
			</tr>
            
				
			<hr>
		</table>
		<hr>
		<td><button><a href="login.jsp" >Login</a></button></td>
			<td><button><a href="index.html" >Back</a></button></td>
		</div>
	</form>
</center>
	</div>
</body>
</html>