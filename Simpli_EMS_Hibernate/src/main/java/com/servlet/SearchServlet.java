package com.servlet;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entity.Employee;
import com.provider.FactoryProvider;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SearchServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int eid = Integer.parseInt(request.getParameter("eid"));
		
		SessionFactory sf = FactoryProvider.getFactory();
		Session session = sf.openSession();
		
		Employee emp = session.get(Employee.class, eid);
		
		if(emp!=null) {
			ServletContext context = getServletContext();
			context.setAttribute("emp", emp);
		}
		else {
			ServletContext context = getServletContext();
			context.setAttribute("emp", null);
		}
		session.close();
		response.sendRedirect("search.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
