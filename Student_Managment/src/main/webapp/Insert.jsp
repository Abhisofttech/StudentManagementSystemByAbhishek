<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>SignUP</title>
</head>
<body>

	<div style="text-align:center">
		<%
		String name = request.getParameter("sname");
		String username = request.getParameter("susername");
		String email = request.getParameter("semail");
		String password = request.getParameter("spwd");

		Connection con = null; //create connection object
		Statement stmt = null; // create statement object

		try {
			// load JDBC type-4 SQL Server driver
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sumaya", "root", "123456");
			if (con != null) {
				stmt = con.createStatement();
				//insert query
				String rsql = "insert into student(name,username,email,password) values('" + name + "','" + username + "','" + email + "','" + password
				+ "'" + ")";
				//execute query
				stmt.executeUpdate(rsql);
		%>
		<h2>
			Hello <strong><font color='Blue'><%=name%></font></strong><br> your account has been created succesfully
			 <br><button>  <a
				href="login.jsp">Login</a></button>
		</h2>

		<%
		}
		if (con == null) {
		con.close();
		}
		} catch (SQLException se) {
		%>
		<h2>
			User or Email already exist. <a href="signUp.jsp">try again </a>
		</h2>
		<%
		} catch (Exception e) {
		out.print("Exception:" + e.getMessage());
		}
		%>
	
	<br>
</div>
</body>