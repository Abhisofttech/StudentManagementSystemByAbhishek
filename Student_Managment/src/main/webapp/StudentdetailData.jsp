<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Student Information</title>
</head>
<body>

	<table border=1>
		<%
		String course = request.getParameter("ucourse");
		String dob = request.getParameter("sdob");
		String mobile = request.getParameter("smobile");
		String address = request.getParameter("saddress");
		String father = request.getParameter("sfname");
		String mother = request.getParameter("smname");
		Connection con = null; //create connection object
		Statement stmt = null; // create statement object
		Integer enrollment=(Integer)session.getAttribute("Senrollment");
		try {
			// load JDBC type-4 SQL Server driver
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sumaya", "root", "123456");
			if (con != null) {
				stmt = con.createStatement();
				//insert query
				String rsql = "update student set course=('"+course+"'),dob=('"+dob+"'),mobile=("+mobile+"),address=('"+address+"'),father=('"+father+"'),mother=('"+mother+"') where enrollment=( "+ enrollment+ ")";
				//execute query
				stmt.executeUpdate(rsql);
		%>
		<h1>data inserted</h1><br>
         <button>
			<a href="Student.jsp">Back</a>
		</button>
		<%
		}
		if (con == null) {
		con.close();
		}
		} catch (SQLException se) {
			out.print("Exception:" + se.getMessage());
		
		} catch (Exception e) {
		out.print("Exception:" + e.getMessage());
		}
		%>
	</table>
	<br>

</body>