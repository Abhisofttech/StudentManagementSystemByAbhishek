<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<title> Students Result</title>
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
			<h3> Students Result</h3>
			<form name="form1" method="post" action="l">
				<div class="tbl">
					<p> Students result are :</p>

					<table border class="">
						<hr> <br>
						<tr>
							<th>Enrollment No</th>
							<th>Name</th>
							<th>sub1</th>
							<th>sub2</th>
							<th>Sub3</th>
							<th>Sub4</th>
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
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
							<td><%=rs.getString(9)%></td>
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
			 <button onclick="window.print();"><a href="#">Print Result</a></button>
					<button>
				<a href="Teacher.jsp">BACK</a>
			</button> <br><br>
			Upload Student Mark:<button>
				<a href="InsertResult.jsp">Click Here</a>
			</button>
		</center>
	</div>
</body>
</html>