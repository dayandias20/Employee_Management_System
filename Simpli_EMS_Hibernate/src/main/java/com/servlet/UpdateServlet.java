package com.servlet;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Employee;
import com.provider.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateServlet() {
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int eid = Integer.parseInt(request.getParameter("eid"));
		
		String new_name = request.getParameter("name");
		String new_gender = request.getParameter("gender");
		String new_address = request.getParameter("address");
		String new_mobile = request.getParameter("mobile");
		String new_email = request.getParameter("email");
		
		System.out.println(new_name + " " + new_gender);
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		Employee emp = session.get(Employee.class, eid);
		
		emp.getName();
		
		emp.setName(new_name);
		emp.setGender(new_gender);
		emp.setAddress(new_address);
		emp.setEmail(new_email);
		emp.setMobile(new_mobile);
		
		session.update(emp);
		tx.commit();
		
		response.sendRedirect("displayEmployee.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
