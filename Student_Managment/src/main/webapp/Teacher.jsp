<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher</title>
    <link rel="stylesheet" href="home.css">
     <script>
      
    </script>
   
</head>

<body>
    <div class="main">
        <nav>

             <div> <img src="image/sumaya logo.jpeg" alt="" height="70px" width="70px"></div>
            <div class="logo"> Teacher </div>
            
            <ul>
                
                
                <li><a href="RegisteredStudent.jsp"> Student</a></li>
                <li><a href="ShowStudentResult.jsp"> Result</a></li>
                <li><a href="index.html">Logout</a></li>
            </ul>


        </nav>
        <div id="Home" class="Home">
            <div class="home">
                <p>  Hello <span><%= session.getAttribute("Tname") %></span>!!<br> Welcome to   <br><span> Teacher  Page </span></p>

            </div>
           
        </div>
       
    </div>
</body>

</html>