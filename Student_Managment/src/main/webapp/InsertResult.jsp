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
<h3>Update Result</h3>
	<form name="form1" method="post" action="InsertResultData.jsp"  >
		<div class="tbl">
		<p>Update the marks of the student of  SUMAYA ACADEMY</p>
		<table>
			
			<tr>
				<td class="text1">Enrollment no:</td>
				<td><input type="text" name="enrollment" value="" size=15 required></td>
			</tr>
			
			<tr>
				<td class="text1">subject1:</td>
				<td><input type="text" name="s1" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text1">subject2:</td>
				<td><input type="text" name="s2" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text1">subject3:</td>
				<td><input type="text" name="s3" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text1">subject4:</td>
				<td><input type="text" name="s4" value="" size=15 required></td>
			</tr>
			
			<tr>
				<td > <input type="submit" value="Submit Data" class="btn"></td>
				<td ><input type="reset" value="Reset Data" class="btn"></td> 
				
			</tr>
			<hr>
		</table>
		<button><a href="ShowStudentResult.jsp" >Back</a></button>
		<hr>
		</div>
	</form>
	
</center>
	</div>
</body>
</html>