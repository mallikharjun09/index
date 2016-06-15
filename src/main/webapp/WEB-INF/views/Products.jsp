<%@page import="com.samples.Furniture"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
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
    <% String str=request.getParameter("data");%>
 <div class="container">
   <jsp:include page="Header.jsp"/>
   <div class="container">
   
   <div class="container" style="margin-top:4%" ng-app="tabApp" ng-controller="tabCtrl">
        <input class="form-control" placeholder="Search" type="text" ng-model="str">
        
       
       <%if(!(str.equals("all"))){%><h3><%=str %>s</h3>
       <table class="table table-bordered">
          <thead>
            <tr>
                <th>Company</th>
                <th>Colour</th>
                <th>Cost</th>
                <th>Options</th>
            </tr>
          </thead>
          <tbody>
             <tr ng-repeat="x in data">
                <td>{{x.company}}</td>
                <td>{{x.colour}}</td>
                <td>{{x.cost}}</td>
                <td><a href="view?&com={{x.company}}&col={{x.colour}}&cost={{x.cost}}" class="btn btn-info" role="button">View</a> / <a href="edit" class="btn btn-info" role="button">Edit</a> / <a href="delete" class="btn btn-info" role="button">Delete</a></td>
             </tr>
          </tbody>
       </table>
       <%}
       else{
    	   
       %>
       
       
       <table ><tr ng-repeat="x in data"><td>
             <table  class="table table-bordered" style="margin-top:10%">
          <tbody>
             <tr ng-repeat="y in x | filter:str">
                <td>{{y.company}}</td>
                <td>{{y.colour}}</td>
                <td>{{y.cost}}</td>
                <td><a href="view?&com={{y.company}}&col={{y.colour}}&cost={{y.cost}}" class="btn btn-info" role="button">View</a> / <a href="edit"class="btn btn-info" role="button">Edit</a> / <a href="delete" class="btn btn-info" role="button">Delete</a></td>
             </tr>
          </tbody>
       </table></td></tr></table>
       <%} %>      
   </div>
   <script>
      var app=angular.module('tabApp',[]);
      app.controller('tabCtrl',function($scope,$http){
    	  $http.get("<%=str%>").then(function(response){$scope.data=response.data})
      });
      
   </script>
   
   </div>
</body>
</html>