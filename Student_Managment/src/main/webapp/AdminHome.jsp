<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <link rel="stylesheet" href="home.css">
     <script>
      
    </script>
   
</head>

<body>
    <div class="main">
        <nav>

             <div> <img src="image/sumaya logo.jpeg" alt="" height="70px" width="70px"></div>
            <div class="logo"> Admin </div>
            
            <ul>
                <li><a href="RegisteredStudent.jsp"> </a></li>
                <li><a href="ShowStudentResult.jsp"> </a></li>
                <li><a href="RegisteredAdmin.jsp" >Regd. Admin</a></li>
                <li><a href="RegisteredTeacher.jsp" >Regd. Teachers</a></li>
                  <li><a href="index.html">Logout</a></li>
            </ul>


        </nav>
        <div id="Home" class="Home">
            <div class="home">
                <p>  Hello <span><%= session.getAttribute("Aname") %></span>!!<br> Welcome to   <br><span> Admin  Page </span></p>

            </div>
           
        </div>
       
    </div>
</body>

</html>