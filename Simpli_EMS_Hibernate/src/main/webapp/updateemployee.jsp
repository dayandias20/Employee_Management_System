
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
  
   int eid = Integer.parseInt(request.getParameter("eid"));
   Session ses = FactoryProvider.getFactory().openSession();
   
   Employee emp = ses.get(Employee.class, eid);
   
   %>
   <center>
    
    <div class="container">
    <div class="card mt-3">
    <img class="card-img-top m-4" style="max-width:70px;" src="css/employee_icon.jpg" class="card-img-top" alt="...">
	
	<div class="cord-body">
	
	<form action="UpdateServlet">
	
	<h5 class="card-text"><b>Emp ID : <%= emp.getEid() %></b></h5>
	<h5 class="card-text"><b>Name : <%= emp.getName() %></b></h5>
	<h5 class="card-text"><b>Gender : <%= emp.getGender() %></b></h5>
	<h5 class="card-text"><b>Address : <%= emp.getAddress() %></b></h5>
	<h5 class="card-text"><b>Email : <%= emp.getEmail() %></b></h5>
	<h5 class="card-text"><b>Mobile : <%= emp.getMobile() %></b></h5>
	
	</form>
	<br> <br>
	</div>
	
	<div class="container">
  		<form action="UpdateServlet">
  		
		  <div class="mb-3 form-group">
		    <label for="eid" class="form-label">Enter Employee Id</label>
		    <input type="text" name="eid" class="form-control" id="eid" value="<%= emp.getEid() %>" readonly>

		    <div class="form-text">We'll never share your id with anyone else.</div>
		  </div>
		   <div class="mb-3 form-group">
		    <label for="name" class="form-label">Enter Employee Name</label>
		    <input type="text" name="name" class="form-control" id="name" value="<%= emp.getName() %>">
		  </div>
		  <div class="mb-3 form-group">
		    <label for="address" class="form-label">Enter Employee Address</label>
		    <input type="text" name="address" class="form-control" id="address" value="<%= emp.getAddress() %>">
		  </div>
		  <div class="mb-3 form-group">
		    <label for="email" class="form-label">Enter Employee Email</label>
		    <input type="email" name="email" class="form-control" id="email" value="<%= emp.getEmail() %>">
		  </div>
		  <div class="mb-3 form-group">
		    <label for="mobile" class="form-label">Enter Employee Phone Number</label>
		    <input type="text" name="mobile" class="form-control" id="mobile" value="<%= emp.getMobile() %>">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Update Employee</button>
		</form>
    </div>
    </div>
    
    </div>
    </center>
   </body>
    
    </html>