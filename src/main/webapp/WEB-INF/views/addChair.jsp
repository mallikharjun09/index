<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css"/>">
  <script src="<c:url value="resources/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>

</head>

<body>
   <div class="container" ng-app="myapp" ng-controller="myctrl">
    <jsp:include page="Header.jsp"></jsp:include>
    <form:form commandName="chr" cssClass="form">
       <div class="form-group" style="margin-top:2%">
          <label for="name" class="col-sm-2 control-label">Name:</label>
          <div class="col-sm-10">
             <form:input path="name" cssClass="form-control"/>
          </div>
       </div>
        <div class="form-group" style="margin-top:2%">
          <label for="description" class="col-sm-2 control-label">Description:</label>
          <div class="col-sm-10">
             <form:input path="description" cssClass="form-control"/>
          </div>
       </div>
        <div class="form-group" style="margin-top:2%">
          <label for="quantity" class="col-sm-2 control-label">Quantity:</label>
          <div class="col-sm-10">
             <form:input path="quantity" cssClass="form-control"/>
          </div>
       </div>
        <div class="form-group" style="margin-top:2%">
          <label for="cost" class="col-sm-2 control-label">Cost:</label>
          <div class="col-sm-10">
             <form:input path="Cost" cssClass="form-control"/>
          </div>
       </div>
        <div class="form-group" >
          <label class="control-label"></label>
          <div class="col-sm-12">
          
              <p align="right"><input type="submit" value="Add" class="btn btn-lg btn-primary" /></p>
          </div>
          
       </div>
    </form:form>
   </div>
    </body>
</html>