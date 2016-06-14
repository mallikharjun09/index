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
  <script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
</head>
    <body>
    <% String str=request.getParameter("data");%>
 <div class="container">
   <nav class="navbar navbar-default">
   <div class="container-fluid">
     <div class="navbar-header">
        <a class="navbar-brand" href="#">MySite.com</a>
     </div>
     <ul class="nav navbar-nav navbar-right" >
        <li><a href="home">Home</a></li>
        <li><a href="#">Contact Us</a></li>
        <li><a href="#">Feedback</a></li>
        <li><a href="pro?data=all">View All</a></li>
        <li ><a href="login">Login</a></li>
        <li><a href="register">Register</a>
     </ul>
     </div>
   </nav>
   <div class="container" style="margin-top:10%">
	<div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div id="imaginary_container"> 
                <div class="input-group stylish-input-group">
                    <input type="text" class="form-control"  placeholder="Search" >
                    <span class="input-group-addon">
                    <input type="submit" value="Search"/>  
                    </span>
                </div>
            </div>
        </div>
	</div>
</div>
   <div class="container" style="margin-top:4%">
   <%
       
       List<com.samples.Chair> chlist=new ArrayList<com.samples.Chair>();
       com.samples.Chair ch1=new com.samples.Chair("RosePly","Black",400.00);
       chlist.add(ch1);
   	   ch1=new com.samples.Chair("RockStar","Red",750.00);
   	   chlist.add(ch1);
   	   
   	   List<com.samples.Table> tlist=new ArrayList<com.samples.Table>();
	   com.samples.Table t1=new com.samples.Table("Nilkamal","Red",1200.00);   	   
	   tlist.add(t1);
	   t1=new com.samples.Table("Ganga","white",1350.00);
	   tlist.add(t1);
	   
	   List<com.samples.Bed> blist=new ArrayList<com.samples.Bed>();
	   com.samples.Bed b1=new com.samples.Bed("RosePly","Black",4000.00);
       blist.add(b1);
   	   b1=new com.samples.Bed("RockStar","Red",7500.00);
   	   blist.add(b1);
   	   
   	   Iterator itr;
   	   %>
   	     <table class="table table-hover">
   	       
   	       <thead>
   	          <tr>
   	             <th>
   	                Company
   	             </th>
   	             <th>
   	                Colour
   	             </th>
   	             <th>
   	                Cost
   	             </th>
   	          </tr>
   	       </thead>
   	       <tbody>
   	       <%if(str.equals("chair")){
   	    	   itr=chlist.iterator();
   	    	   while(itr.hasNext()){
   	    		   ch1=(com.samples.Chair)itr.next();
   	    		   out.println("<tr><td>"+ch1.getCompany()+"</td><td>"+ch1.getColour()+"</td><td>"+ch1.getCost()+"</td><td><a href=\"\">View</a>/<a href=\"\">Edit</a>/<a href=\"\">Delete</a></td></tr>");
   	       }
   	    	   } 
   	        else if(str.equals("table")){
   	    	   itr=tlist.iterator();
   	    	   while(itr.hasNext()){
   	    		   t1=(com.samples.Table)itr.next();
   	    		   out.println("<tr><td>"+t1.getCompany()+"</td><td>"+t1.getColour()+"</td><td>"+t1.getCost()+"</td><td><a href=\"\">View</a>/<a href=\"\">Edit</a>/<a href=\"\">Delete</a></td></tr>");
   	       }
   	    	   }
   	    	   else if(str.equals("bed")){
   	    		   itr=blist.iterator();
   	    		   while(itr.hasNext()){
   	    			   b1=(com.samples.Bed)itr.next();
   	    			out.println("<tr><td>"+b1.getCompany()+"</td><td>"+b1.getColour()+"</td><td>"+b1.getCost()+"</td><td><a href=\"\">View</a>/<a href=\"\">Edit</a>/<a href=\"\">Delete</a></td></tr>");
   	    		   }
   	    	   }
   	    	   else if(str.equals("all")){
   	    		itr=chlist.iterator();
    	    	   while(itr.hasNext()){
    	    		   ch1=(com.samples.Chair)itr.next();
    	    		   out.println("<tr><td>"+ch1.getCompany()+"</td><td>"+ch1.getColour()+"</td><td>"+ch1.getCost()+"</td><td><a href=\"\">View</a>/<a href=\"\">Edit</a>/<a href=\"\">Delete</a></td></tr>");
    	       }
    	    	   itr=tlist.iterator();
       	    	   while(itr.hasNext()){
       	    		   t1=(com.samples.Table)itr.next();
       	    		   out.println("<tr><td>"+t1.getCompany()+"</td><td>"+t1.getColour()+"</td><td>"+t1.getCost()+"</td><td><a href=\"\">View</a>/<a href=\"\">Edit</a>/<a href=\"\">Delete</a></td></tr>");
       	       }
       	           itr=blist.iterator();
       	    	   while(itr.hasNext()){
   	    			   b1=(com.samples.Bed)itr.next();
   	    			out.println("<tr><td>"+b1.getCompany()+"</td><td>"+b1.getColour()+"</td><td>"+b1.getCost()+"</td><td><a href=\"\">View</a>/<a href=\"\">Edit</a>/<a href=\"\">Delete</a></td></tr>");
   	    		   }
   	    	   }
   	    	   %>
   	       </tbody>
   	     </table>
    
   
   </div>
   </div>
</body>
</html>