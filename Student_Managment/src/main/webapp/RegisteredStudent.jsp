<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<title>Registered Students</title>

<style>
h1{
background-color: yellow;
			color: blue;
			height: 40px;
}
p,h3 {
			font-size: 20px;
			font-family: Verdana, Geneva, Tahoma, sans-serif;
		}



</style>
</head>
<body>
	<div class="frm">
		<center>
			<h1>Sumaya Academy</h1>
			<h3>Registered Students List</h3>
			<form name="form1" method="post" action="l">
				<div class="tbl">
					

					<table border >
						<hr><br>
						<tr>
						<th>Enrollment No.</th>
							<th>Name</th>
							<th>Username</th>
							<th>Email</th>
							<th>Password</th>
						</tr>
						<%
						Connection con = null; //create connection object
						Statement stmt = null; // create statement object

						try {

							Class.forName("com.mysql.jdbc.Driver");
							con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sumaya", "root", "123456");

							stmt = con.createStatement();

							String rsql = "select * from Student";

							ResultSet rs = stmt.executeQuery(rsql);
							while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
						</tr>
						<%
						}
						} catch (Exception e) {
						out.println(e);
						}
						%>
					</table>
                      
                      <br>
					<hr>
				</div>
			</form>
			<button onclick="window.print();"><a href="#">Print List</a></button>
			<button><a href="Teacher.jsp">BACK</a></button>
			<button><a href="AddStudent.jsp">Add Student</a></button>
		</center>
	</div>
</body>
</html>