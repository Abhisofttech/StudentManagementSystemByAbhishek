<head>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%
	try {
		String A = request.getParameter("sAtten");
		
		boolean flag = false;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sumaya", "root", "123456");
		Statement stmt = con.createStatement();
		
			ResultSet rs = stmt.executeQuery("select * from Student");
			while (rs.next()) {
		
		String a=null;
		String enrollment = rs.getString(1);
		
		if (A.equals(enrollment) ) {
			
			flag = true;
		}
			}
			if (flag == true) {
				String a="p";
				
		
			} else {
				%> <h1>Enrollment Not Found</h1> <br><button><a href="Attendance.jsp" >Back</a></button><%
			}
			
	} catch (Exception e) {
		out.println(e);
	}
	%>



</body>