<!doctype html>
<%@page import="com.entity.Employee"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.provider.FactoryProvider"%>
<%@page import="org.hibernate.SessionFactory"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <title>EMS</title>
    <%@ include file="header_footer.jsp" %>
    </head>
    <body>
   	<div class="container">
   	<%@ include file="navigation.jsp" %>
   	</div>
   	
   	<%
   		try
   	{
   			Employee emp = (Employee)application.getAttribute("emp");
   			if(emp!=null)
   			{
   				
   			
   	%>
   
   	
   	<div class="container">
    <div class="card mt-3">
    <img class="card-img-top m-4" style="max-width:70px;" src="css/eicon.png" class="card-img-top" alt="...">
	
	<div class="cord-body">
	
	<h5 class="card-text"><b>Emp ID : <%= emp.getEid() %></b></h5>
	<h5 class="card-text"><b>Name : <%= emp.getName() %></b></h5>
	<h5 class="card-text"><b>Gender : <%= emp.getGender() %></b></h5>
	<h5 class="card-text"><b>Address : <%= emp.getAddress() %></b></h5>
	<h5 class="card-text"><b>Email : <%= emp.getEmail() %></b></h5>
	
	<a href="DeleteServlet?eid=<%=emp.getEid()%>" class="btn btn-danger">Delete</a>
	<a href="UpdateServlet?eid=<%=emp.getEid()%>" class="btn btn-primary">Update</a>
	</div>
	
	
    </div>
    </div>
   	
   			}
   			else
   			{
   				
   				
   				
   	%>
   	
   	<div class="container">
   	<div class="card mt-3">
   	<img class="card-img-top m-4" style="max-width:70px;" src="css/eicon.png" class="card-img-top" alt="...">
	
	
	<div class="card-body">
	
	<h5 class="card-text"><b>Sorry ! Invalid ID</b></h5>
	</div>
   	
   	</div>
   	
   	</div>
   	
   	<% 
   			}
   	}
   	catch(Exception e)
   	{
   		
   	}
   	
   	
   	%>
   
   	
  
    </body>
    
    </html>