<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Student Information</title>
 <link rel="stylesheet" href="design.css">
</head>
<body>
<div class="frm">
    <center>
<h1>Sumaya Academy</h1>
<h3>Information Page</h3>
	<form name="form1" method="post" action="StudentdetailData.jsp">
		
		<div class="tbl">
		<p> </p>
		<table>
		<tr>
				<td class="text">Select course:</td>
				<td>
					<select name="ucourse">
					    <option name="Ba">Ba</option>
						<option name="Bcom">Bcom</option>
						<option name="Bsc">Bsc</option>
						<option name="Bca">Bca</option>
						<option name="Ma">Ma</option>
						<option name="Mcom">Mcom</option>
						<option name="Msc">Msc</option>
						<option name="Mca">Mca</option>
						</select>
				</td>
			</tr>
			<tr>
				<td class="text">Name :</td>
				<td class="text"><%= session.getAttribute("Sname") %></td>
				
			</tr>
			<tr>
				<td class="text">Enrollment :</td>
				<td class="text"><%= session.getAttribute("Senrollment") %></td>
				
			</tr>
			<tr>
				<td class="text">Date of Birth :</td>
				<td><input type="date" name="sdob" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text"> Mobile no. :</td>
				<td><input type="text" name="smobile" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text">Email :</td>
				<td class="text"><%= session.getAttribute("Semail") %></td>
			</tr>
			<tr>
				<td class="text">Address :</td>
				<td><input type="text" name="saddress" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text"> Father Name :</td>
				<td><input type="text" name="sfname" value="" size=15 required></td>
			</tr>
			<tr>
				<td class="text"> Mother Name :</td>
				<td><input type="text" name="smname" value="" size=15 required></td>
			</tr>
			<tr>
				<td ><input type="submit" value="Submit Data" class="btn"></td>
				<td ><input type="reset" value="Reset Data" class="btn"></td>
			</tr>
            
				
			<hr>
		</table>
		<hr>
		
			<td><button><a href="Student.jsp" >Back</a></button></td>
		</div>
	</form>
</center>
	</div>
</body>
</html>