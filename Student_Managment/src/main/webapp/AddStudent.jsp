<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<title>Add Student</title>
 <link rel="stylesheet" href="design.css">
</head>
<body>
<div class="frm">
    <center>
<h1>Sumaya Academy</h1>
<h3>Create New Student</h3>
	<form name="form1" method="post" action="AddStudentData.jsp">
		
		<div class="tbl">
		<p>Enter the student details  </p>
		<table>
			<tr>
				<td class="text">Student's Name:</td>
				<td><input type="text" name="name" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text">Student's Username:</td>
				<td><input type="text" name="username" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text">Student's Email:</td>
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
		
			<button><a href="Teacher.jsp" >Back</a></button>
		</div>
	</form>
</center>
	</div>
</body>
</html>