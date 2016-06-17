
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
                <th>id</th>
                <th>Company Name</th>
                <th>Description</th>
                <th>Cost</th>
                <th>Quantity</th>
                <th>Options</th>
            </tr>
          </thead>
          <tbody>
             <tr ng-repeat="x in data">
                
                <td>{{x.name}}</td>
                <td>{{x.description}}</td>
                <td>{{x.cost}}</td>
                <td>{{x.quantity}}</td>
                <td><a href="view?&id={{x.id}}&com={{x.name}}&col={{x.description}}&cost={{x.cost}}&qty={{x.quantity}}" class="btn btn-info" role="button">View</a> / <a href="edit?id={{x.id}}" class="btn btn-info" role="button">Edit</a> / <a href="delete" class="btn btn-info" role="button">Delete</a></td>
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
                
                <td>{{y.name}}</td>
                <td>{{y.description}}</td>
                <td>{{y.cost}}</td>
                <td>{{y.quantity}}
                <td><a href="view?&id={{y.id}}&com={{y.name}}&col={{y.description}}&cost={{y.cost}}&qty={{y.quantity}}" class="btn btn-info" role="button">View</a> / <a href="edit?id={{y.id}}"class="btn btn-info" role="button">Edit</a> / <a href="delete" class="btn btn-info" role="button">Delete</a></td>
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