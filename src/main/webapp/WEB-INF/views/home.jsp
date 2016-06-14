
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css"/>">
  <script src="<c:url value="resources/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
</head>
    <body>
 <div class="container">
   <nav class="navbar navbar-default">
   <div class="container-fluid">
     <div class="navbar-header">
        <a class="navbar-brand" href="index.jsp">MySite.com</a>
     </div>
     <ul class="nav navbar-nav navbar-right" >
        <li class="active"><a href="home">Home</a></li>
        <li><a href="#">Contact Us</a></li>
        <li><a href="#">Feedback</a></li>
        <li><a href="pro?data=all">View All</a></li>
        <li><a href="login">Login</a></li>
        <li><a href="register">Register</a>
     </ul>
     </div>
   </nav>
   
   <div id="mycarousel" class="carousel slide" data-ride="carousel" >
   <ol class="carousel-indicators">
     <li data-targer="#mycarousel" data-slide-to="0" class="active"></li>
     <li data-targer="#mycarousel" data-slide-to="1" ></li>
     <li data-targer="#mycarousel" data-slide-to="2" ></li>
     <li data-targer="#mycarousel" data-slide-to="3" ></li>
   </ol>
   
   <div class="carousel-inner" role="listbox">
       <div class="item active" align="center">
           <img src="<c:url value="/resources/images/img1.jpg"/>" style="width:50%;height:40%" alt="First"/>
       </div>
       <div class="item" align="center">
           <img src="<c:url value="/resources/images/img2.jpg"/>" style="width:50%;height:40%" alt="Second"/>
       </div>
       <div class="item" align="center">
           <img src="<c:url value="/resources/images/img3.jpg"/>" style="width:50%;height:40%"alt="Third"/>
       </div>
       <div class="item" align="center">
           <img src="<c:url value="/resources/images/img4.jpg"/>" style="width:50%;height:40%"alt="Fourth"/>
       </div>
   </div>
   <a class="left carousel-control" href="mycarousel" role="button" data-slide="prev">
   <span class="icon-prev" aria-hidden="true"></span>
   <span class="sr-only">Previous</span>
   </a>
   <a class="right carousel-control" href="mycarousel" role="button" data-slide="next">
   <span class="icon-next" aria-hidden="true"></span>
   <span class="sr-only">Next</span>
   </a>
   </div>
   
   <div class="row" style="margin-top:1%">
   <div class="col-sm-4">
 	         <a href="pro?data=chair "><img src="<c:url value="/resources/images/img3.jpg"/>" style="width:100%;height:40%"/></a>
 	   </div>
 	   
 	   <div class="col-sm-4">
 	         <a href="pro?data=table "><img src="<c:url value="/resources/images/img5.jpg"/>" style="width:100%;height:40%"/></a>
 	   </div>
 	   <div class="col-sm-4">
 	         <a href="pro?data=bed "><img src="<c:url value="/resources/images/img6.jpg"/>"style="width:100%;height:40%"/></a>
 	   </div>  
 	   
   </div>
</div>
<footer>
<hr/>
<center>&copy;Copyrights Belongs to MySite.com.Pvt., Ltd..</center>
</footer>
</body>
</html>