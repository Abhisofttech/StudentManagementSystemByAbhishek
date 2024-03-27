<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	
</script>
<style>
    p{
    font-size:25px;
    }
    
</style>
<title>Attendance</title>
 <link rel="stylesheet" href="design.css">
</head>
<body>
<div class="frm">
    <center>
<h1>Sumaya Academy</h1>
<h3>Attendence</h3>

	<form name="form1" method="post" action="AttendanceData.jsp">
		<div class="tbl">
		<p>Enter Your Enrollment for Attendance</p>
		
				
				<td><input type="text" name="sAtten" placeholder="Enter Enrollment" size=15 required></td>
			
				<td ><input type="submit" value="Submit Data" class="btn" ></td>
				
			</div>
            <div>
				
			
		
		<br>
		
			<td><button><a href="index.html" >Back</a></button></td>
		</div>
	</form>
</center>
	</div>
</body>
</html>