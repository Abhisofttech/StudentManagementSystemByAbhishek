<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<title>Registered Admin</title>
<link rel="stylesheet" href="design.css">

</head>
<body>
	<div class="frm">
		<center>
			<h1>Sumaya Academy</h1>
			<h3>Registered Admin List</h3>
			<form name="form1" method="post" action="l">
				<div class="tbl">
					<p>Registered Admins are :</p>

					<table border class="">
						<hr>
						<tr>
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

							String rsql = "select * from Admin";

							ResultSet rs = stmt.executeQuery(rsql);
							while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(3)%></td>
						</tr>
						<%
						}
						} catch (Exception e) {
						out.println(e);
						}
						%>
					</table>

					<hr>
				</div>
			</form>
			<button>
				<a href="AdminHome.jsp">BACK</a>
			</button>
			<button>
				<a href="NewAdmin.jsp">New Admin </a>
			</button>
		</center>
	</div>
</body>
</html>