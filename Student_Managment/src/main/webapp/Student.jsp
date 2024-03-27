<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student</title>
    <link rel="stylesheet" href="home.css">
     <script>
      
    </script>
   
</head>

<body>
    <div class="main">
        <nav>

             <div> <img src="image/sumaya logo.jpeg" alt="" height="70px" width="70px"></div>
            <div class="logo"> Student Page </div>
            
            <ul>
                <li><a href="StudentDetail.jsp" >Your Details</a></li>
                <li><a href="StudentResult.jsp" >show result</a></li>
                <li><a href="#" >Attendance</a></li>
                <li><a href="index.html">Logout</a></li>
            </ul>


        </nav>
        <div id="Home" class="Home">
            <div class="home">
                <p>  Hello  <span><%= session.getAttribute("Sname") %></span> !!<br> Welcome to   <span> Student  Page </span> <br> Your Enrollment no. is <span><%= session.getAttribute("Senrollment") %></span>.</p>

            </div>
           
        </div>
       
    </div>
</body>

</html>