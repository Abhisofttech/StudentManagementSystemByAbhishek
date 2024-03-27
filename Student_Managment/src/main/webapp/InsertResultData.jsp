<head>
</head>
<style>
* {
	margin: 20px;
}
</style>
<body>
	<center>
		<%@page import="java.sql.*"%>
		<%
	try {
		String enrollment = request.getParameter("enrollment");
		String s1 = request.getParameter("s1");
		String s2 = request.getParameter("s2");
		String s3 = request.getParameter("s3");
		String s4 = request.getParameter("s4");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sumaya", "root", "123456");
		Statement stmt = con.createStatement();
		boolean flag=false;
		String enroll=null;
			ResultSet rs = stmt.executeQuery("select * from student");
			while (rs.next()) {
		 enroll = rs.getString(1);
			if(enrollment.equals(enroll)){
				flag=true;
			}
			}
		if(flag==true){
			Statement st = con.createStatement();
			String rsql = "update student set s1=("+s1+"),s2=("+s2+"),s3=("+s3+"),s4=("+s4+") where enrollment=( "+ enrollment+ ");";
			
			st.executeUpdate(rsql);
			%><h1>
			<%out.print("Data Inserted Successfuly"); %>
		</h1>


		<br>
		<button>
			<a href="ShowStudentResult.jsp">Show Result</a>
		</button>
		<button>
			<a href="InsertResult.jsp">Back</a>
		</button>
		<%}else{
			%><h1>
			<%out.print("Enrollment not found"); %>
		</h1>
		<button>
			<a href="InsertResult.jsp">Try Again!!!</a>
		</button>
		<%
		}
	} catch (Exception e) {
		out.println(e);
	}
	%>

	</center>

</body>