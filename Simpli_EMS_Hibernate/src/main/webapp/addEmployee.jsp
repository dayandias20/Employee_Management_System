<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
<%@ include file="header_footer.jsp" %>
</head>
<body>
	<div class="container">
  		<%@ include file="navigation.jsp" %>
  	</div>
  	<br>
  	<div class="container">
  		<form action="saveemployee.jsp">
  		
		  <div class="mb-3 form-group">
		    <label for="eid" class="form-label">Enter Employee Id</label>
		    <input type="text" name="eid" class="form-control" id="eid">
		    <div class="form-text">We'll never share your id with anyone else.</div>
		  </div>
		   <div class="mb-3 form-group">
		    <label for="name" class="form-label">Enter Employee Name</label>
		    <input type="text" name="name" class="form-control" id="name">
		  </div>
		  
		  <div class="mb-3 form-group">
		    <label for="gender" class="form-label">Select Gender</label>
		    <div class="form-check">
		    <div></div>
			    <input type="radio" id="male" name="gender" value="male" class="form-check-input" >
			    <label for="male" class="form-check-label">Male</label>
			    <br>
			    <input type="radio" id="female" name="gender" value="female" class="form-check-input" >
			    <label for="female" class="form-check-label">Female</label>
		    </div>
		    <div class="form-text">We'll never share your gender with anyone else.</div>
		  </div>
		  
		  <div class="mb-3 form-group">
		    <label for="address" class="form-label">Enter Employee Address</label>
		    <input type="text" name="address" class="form-control" id="address">
		  </div>
		  <div class="mb-3 form-group">
		    <label for="email" class="form-label">Enter Employee Email</label>
		    <input type="email" name="email" class="form-control" id="email">
		  </div>
		  <div class="mb-3 form-group">
		    <label for="mobile" class="form-label">Enter Employee Phone Number</label>
		    <input type="text" name="mobile" class="form-control" id="mobile">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Add Employee</button>
		</form>
  	</div>
</body>
</html>