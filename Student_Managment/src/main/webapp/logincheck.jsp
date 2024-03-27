<head>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%
	try {
		String username = request.getParameter("lusername");
		String password = request.getParameter("lpwd");
		String usertype = request.getParameter("utype");
		boolean flag = false;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sumaya", "root", "123456");
		Statement stmt = con.createStatement();
		if (usertype.equals("Admin")) {
			ResultSet rs = stmt.executeQuery("select * from Admin");
			while (rs.next()) {
		String Ausername = rs.getString(2);
		String Apassword = rs.getString(3);
		String Aname = rs.getString(1);
		if (username.equals(Ausername) && password.equals(Apassword)) {
			session.setAttribute("Aname", Aname);
			flag = true;
		}
			}
			if (flag == true) {
		response.sendRedirect("AdminHome.jsp");
			} else {
		response.sendRedirect("./Unsucces.html");

			}
		} else if (usertype.equals("Student")) {
			ResultSet rs = stmt.executeQuery("select * from Student");
			while (rs.next()) {
		String Susername = rs.getString(3);
		String Spassword = rs.getString(5);
		int Senrollment = rs.getInt(1);
		String Sname = rs.getString(2);
		String Semail = rs.getString(4);
		if (username.equals(Susername) && password.equals(Spassword)) {
			session.setAttribute("Sname", Sname);
			session.setAttribute("Senrollment", Senrollment);
			session.setAttribute("Semail", Semail);
			flag = true;
		}
			}
			if (flag == true) {
		
		response.sendRedirect("./Student.jsp");
			} else {
		response.sendRedirect("./Unsucces.html");
			}
		}else if (usertype.equals("Teacher")) {
			ResultSet rs = stmt.executeQuery("select * from Teacher");
			while (rs.next()) {
		String Tusername = rs.getString(2);
		String Tpassword = rs.getString(4);
		String Tname = rs.getString(1);
		if (username.equals(Tusername) && password.equals(Tpassword)) {
			session.setAttribute("Tname", Tname);
			flag = true;
		}
			}
			if (flag == true) {
		
		response.sendRedirect("./Teacher.jsp");
			} else {
		response.sendRedirect("./Unsucces.html");
			}
		}
	} catch (Exception e) {
		out.println(e);
	}
	%>



</body>