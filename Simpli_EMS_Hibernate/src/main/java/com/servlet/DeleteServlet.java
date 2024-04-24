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

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int eid = Integer.parseInt(request.getParameter("eid"));
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		Employee emp = session.get(Employee.class, eid);
		
		emp.getName();
		
		session.delete(emp);
		tx.commit();
		
		response.sendRedirect("displayEmployee.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
