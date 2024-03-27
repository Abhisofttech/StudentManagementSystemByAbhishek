<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Login page</title>
 <link rel="stylesheet" href="design.css">

</head>
<body>
<div class="frm">
	<center>
<h1>Sumaya Academy</h1>
<h3>Login Page</h3>
	<form name="form1" method="post" action="logincheck.jsp"  >
		<div class="tbl">
		<p>Enter your detail to login into  <br>SUMAYA ACADEMY</p>
		<table>
			<tr>
				<td class="text1">Type:</td>
				<td>
					<select name="utype">
					    <option name="student">Student</option>
						<option name="admin">Admin</option>
						<option name="teacher">Teacher</option>
						
					</select>
				</td>
			</tr>
			<tr>
				<td class="text1">Username:</td>
				<td><input type="text" name="lusername" value="" size=15 required></td>
			</tr>
			
			<tr>
				<td class="text1">Password:</td>
				<td><input type="password" name="lpwd" value="" size=15 required></td>
			</tr>
			
			
			<tr>
				<td > <input type="submit" value="Login" class="btn"></td>
				<td ><input type="reset" value="Reset " class="btn"></td> 
				
			</tr>
			<hr>
		</table>
		<button><a href="index.html" >Home</a></button>
		<hr>
		</div>
	</form>
	<button class="register"><a href="signUp.jsp">Register Yourself / SignUp</a></button>
</center>
	</div>
</body>
</html>