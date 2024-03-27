<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<title>Teacher</title>
 <link rel="stylesheet" href="design.css">
</head>
<body>
<div class="frm">
    <center>
<h1>Sumaya Academy</h1>
<h3>Create New Teacher</h3>
	<form name="form1" method="post" action="AddTeacherData.jsp">
		
		<div class="tbl">
		<p>Enter the Teacher details  </p>
		<table>
			<tr>
				<td class="text">Teacher's Name:</td>
				<td><input type="text" name="name" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text">Teacher's Username:</td>
				<td><input type="text" name="username" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text">Teacher's Email:</td>
				<td><input type="email" name="email" value="" size=15 required ></td>
			</tr>
			<tr>
				<td class="text">Password:</td>
				<td><input type="password" name="password" value="" size=15 required></td>
			</tr>
			
			<tr>
				<td ><input type="submit" value="Submit Data" class="btn"></td>
				<td ><input type="reset" value="Reset Data" class="btn"></td>
			</tr>
            
				
			<hr>
		</table>
		<hr>
		
			<button><a href="AdminHome.jsp" >Back</a></button>
		</div>
	</form>
</center>
	</div>
</body>
</html>