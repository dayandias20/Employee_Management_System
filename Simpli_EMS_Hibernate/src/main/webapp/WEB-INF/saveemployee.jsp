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
   	SessionFactory factory = FactoryProvider.getFactory();
   	Session ses= factory.openSession();
   	Transaction tx= ses.beginTransaction();
   	
   	
   	
   	int eid = Integer.parseInt(request.getParameter("eid"));
   	String name= request.getParameter("name");
   	String gender = request.getParameter("gender");
   	String address = request.getParameter("address");
   	String email = request.getParameter("email");
   	
   	Employee emp = new Employee(eid,name,gender,address,email);
   	ses.save(emp);
   	
   	tx.commit();
   	ses.close();
   	%>
   	
   	<br><br>
   	
   	<center><h2>Record Saved Successfully </h2></center>
   	<center><h2><a href='displayemployee.jsp'>View Records</a></h2></center>
    
    </body>
    
    </html>