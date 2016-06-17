<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href='<c:url value="resources/css/bootstrap.min.css"/>'>
  <script src="<c:url value="resources/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="resources/js/angular.min.js"/>"></script>
  <script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
</head>
    <body>
<div class="container">
  <jsp:include page="Header.jsp"/>
   <table class="table table-bordered">
   <tr><td rowspan="6"><img src="<c:url value="resources/images/img5.jpg"/>"/></td></tr>
   <tr><td>Id:<%=request.getParameter("id") %></td></tr>
  <tr><td>Name : <%=request.getParameter("com") %></td></tr>
  <tr><td>Description : <%=request.getParameter("col") %></td></tr>
  <tr><td>Cost   : <%=request.getParameter("cost") %></td></tr>
 <tr><td>Quantity: <%=request.getParameter("qty") %></td></tr>
  </table>
  <p align="right"><a href=""class="btn btn-info" role="button">Add to Cart</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="" class="btn btn-info" role="button">Back</a></p>
  </div>
</body>
</html>