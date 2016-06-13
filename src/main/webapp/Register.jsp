<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
    <body>
 <div class="container">
   <nav class="navbar navbar-default">
   <div class="container-fluid">
     <div class="navbar-header">
        <a class="navbar-brand" href="#">MySite.com</a>
     </div>
     <ul class="nav navbar-nav navbar-right" >
        <li ><a href="index.jsp">Home</a></li>
        <li><a href="#">Contact Us</a></li>
        <li><a href="#">Feedback</a></li>
        <li><a href="Login.jsp">Login</a></li>
        <li class="active"><a href="Register.jsp">Register</a>
     </ul>
     </div>
   </nav>
   <div class="row">
     <div class="col-sm-6" align="right">
     <img src="welcome.jpg"/>
     </div>
     <div class="col-sm-6">
         <form name="login" action="" >
             <p align="right"><input type="text" name="user" placeholder="Enter Username  " style="width:80%;height:7%;border-radius:10px;text-align:right"/></p><br/><br/>
             <p align="right"><input type="password" name="pwd" placeholder="Enter Password  " style="width:80%;height:7%;border-radius:10px;text-align:right"/></p><br/><br/>
             <p align="right"><input type="password" name="cpwd" placeholder="Confirm Password  " style="width:80%;height:7%;border-radius:10px;text-align:right"/></p><br/><br/>
             <p align="right"><input type="submit" value="Register" style="width:20%;height:5%;border-radius:10px"/></p>
         </form>
     </div>
  </div>
</div>
<footer>
<hr/>
<center>&copy;Copyrights Belongs to MySite.com.Pvt., Ltd..</center>
</footer>
</body>
</html>