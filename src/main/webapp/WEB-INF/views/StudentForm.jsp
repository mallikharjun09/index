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
    <form:form commandName="user" cssClass="formHorizontal">
       <div class="form-group">
          <label for="id" class="col-sm-2 control-label">ID:</label>
          <div class="col-sm-10">
             <form:input path="id" cssClass="form-control"/>
          </div>
       </div>
       
       <div class="form-group" style="margin-top:2%">
          <label for="name" class="col-sm-2 control-label">Name:</label>
          <div class="col-sm-10">
             <form:input path="name" cssClass="form-control"/>
          </div>
       </div>
       <div class="form-group" align="right">
          <div class="col-sm-2">
              <input type="submit" value="Register" class="btn btn-lg btn-primary" />
          </div>
          
       </div>
    </form:form>
</html>