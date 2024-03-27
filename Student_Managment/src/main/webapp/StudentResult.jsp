<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<title>Result</title>
<style>
h1 {
	background-color: yellow;
	color: blue;
	height: 40px;
	 text-align: center;
}

 h3 {
 color:blue;
	font-size: 20px;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	text-align: center;
}
button{
margin:6px;
}

</style>


</head>
<body>
	<div class="frm">

		
			<h1>Sumaya Academy</h1>
			<h3>RESULT</h3>
			<form name="form1" method="post" action="l">
				<div class="tbl">
					
		
			<table border class="">
				
				<br>
				
				
				<%
				Connection con = null; //create connection object
				Statement stmt = null; // create statement object
                Integer enrollment=(Integer)session.getAttribute("Senrollment");
				try {

					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sumaya", "root", "123456");

					stmt = con.createStatement();

					String rsql = "select * from Student where enrollment=( "+ enrollment+ ");";

					ResultSet rs = stmt.executeQuery(rsql);
					while (rs.next()) {
				%>
				Name : <%=rs.getString(2)%><br>
				Enrollment : <%=rs.getString(1)%><br>
				Date Of Birth:<%=rs.getString(15)%><br>
				Email :<%=rs.getString(4)%><br>
				Mobile :<%=rs.getString(11)%><br>
				Address :<%=rs.getString(14)%><br>
				Course :<%=rs.getString(10)%><br>
				<center>
				<hr>
					<h4>Semester I</h4> 
					Subject1 :<%=rs.getString(6)%> <br>
					Subject2 :<%=rs.getString(7)%><br>
					subject3 :<%=rs.getString(8)%><br>
					subject4 :<%=rs.getString(9)%><br>
					
					
					
				
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
	</center>
	<center>
	<button onclick="window.print();">
		<a href="#">Print Result</a>
	</button>
	<button>
		<a href="Student.jsp">BACK</a>
	</button>
	<br>
	
	</center>
	</div>
</body>
</html>