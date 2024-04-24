
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.entity.Employee"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.provider.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>

<!doctype html>
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
   Session ses = FactoryProvider.getFactory().openSession();
   Query qry =  ses.createQuery("from Employee");
   List<Employee> ls= qry.list();
   
   for(Employee emp :ls)
   {
   
   %>
    
    <div class="container">
    <div class="card mt-3">
    <img class="card-img-top m-4" style="max-width:70px;" src="css/employee_icon.jpg" class="card-img-top" alt="...">
	
	<div class="cord-body">
	
	<h5 class="card-text"><b>Emp ID : <%= emp.getEid() %></b></h5>
	<h5 class="card-text"><b>Name : <%= emp.getName() %></b></h5>
	<h5 class="card-text"><b>Gender : <%= emp.getGender() %></b></h5>
	<h5 class="card-text"><b>Address : <%= emp.getAddress() %></b></h5>
	<h5 class="card-text"><b>Email : <%= emp.getEmail() %></b></h5>
	<h5 class="card-text"><b>Email : <%= emp.getMobile() %></b></h5>
	
	<a href="DeleteServlet?eid=<%=emp.getEid()%>" class="btn btn-danger">Delete</a>
	<a href="updateemployee.jsp?eid=<%=emp.getEid()%>" class="btn btn-primary">Update</a>
	</div>
	
	
    </div>
    </div>
    <% 
    
   }
    %>
  
    
    
    </body>
    
    </html>