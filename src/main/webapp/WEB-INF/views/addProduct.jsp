<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="<x:url value="resources/css/bootstrap.min.css"/>">
  <script src="<x:url value="resources/jquery/jquery.min.js"/>"></script>
  <script src="<x:url value="resources/js/bootstrap.min.js"/>"></script>
</head>
    <body>
 <div class="container">
   <jsp:include page="Header.jsp"/>
   <div class="row">
     <div class="col-sm-6" align="right">
     <img src="<x:url value="/resources/images/add.jpg"/>"/>
     </div>
     <div class="col-sm-6">
         <form name="login" action="" >
             <p align="right"><input type="text" name="user" placeholder="Product Name  " style="width:80%;height:7%;border-radius:10px;text-align:right"/></p><br/><br/>
             <p align="right"><input type="text" name="price" placeholder="Price  " style="width:80%;height:7%;border-radius:10px;text-align:right"/></p><br/><br/>
             <p align="right"><input type="text" name="qty" placeholder="Quantity  " style="width:80%;height:7%;border-radius:10px;text-align:right"/></p><br/><br/>
             <p align="right"><input type="text" name="desc" placeholder="Description  " style="width:80%;height:7%;border-radius:10px;text-align:right"/></p><br/><br/>
             <p align="right"><input type="file" name="img" placeholder="Upload Image" style="width:80%;height:7%;border-radius:10px;text-align:right" value="Upload"/></p><br/><br/>
             <p align="right"><input type="submit" value="Add Product" style="width:20%;height:5%;border-radius:10px"/></p>
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