<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>SignUP</title>
</head>
<body>
	
	<table border=1>
		<%
String name = request.getParameter("name");
String username = request.getParameter("username");
String email = request.getParameter("email");
String password = request.getParameter("password");

Connection con = null; //create connection object
Statement stmt = null; // create statement object

try{
// load JDBC type-4 SQL Server driver
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sumaya","root","123456");
if (con != null)
{
stmt = con.createStatement();
//insert query
String rsql ="insert into Student(name,username,email,password) values('"+name+"','"+username+"','"+email+"','"+password+"'"+")";
//execute query
stmt.executeUpdate(rsql);%>
<h2><strong><font color='Blue'></font></strong> New Student created successfully  <br> <a href="Teacher.jsp">BACK</a> </h2> 

<%

}
if(con == null)
 { con.close(); 
} }
catch(SQLException se){ %>
<h2>Username or Email already exist. <br>Take another username for Student <br><a href="AddStudent.jsp">TRY AGAIN!!!!</a></h2>
<%}
catch(Exception e){ out.print("Exception:"+e.getMessage());}
%>
</table>
<br>

</body>