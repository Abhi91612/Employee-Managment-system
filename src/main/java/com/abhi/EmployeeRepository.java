package com.abhi;

import java.util.*;

import org.hibernate.*;

import org.hibernate.cfg.Configuration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;


public class EmployeeRepository {
	private static Session session;
	private static Transaction transaction;

	static {
		SessionFactory factory= new Configuration().configure().buildSessionFactory();
		session=factory.openSession();
		transaction=session.getTransaction();
		
	}
	public static void persistEmployee(Employee emp) {
		transaction.begin();
		session.persist(emp);
		transaction.commit();
	}

	public static java.util.List<Employee> getEmployeeList() {
	    Query<Employee> query = session.createQuery("from Employee", Employee.class);
	    java.util.List<Employee> employeeList= query.list();
	   return  employeeList;
	}

	public static Employee getEmpl(int eid) {
		
		return  session.get(Employee.class, eid);
	}

	public static void delete(int eid) {
		Employee emp=session.get(Employee.class, eid);
		transaction.begin();
		session.remove(emp);;
		transaction.commit();

	}

	public static void updateRecord(HttpServletRequest request) {
		Employee oemployee=session.get(Employee.class,Integer.parseInt(request.getParameter("eid")));
	
		oemployee.setEid(Integer.parseInt(request.getParameter("eid")));
		oemployee.setFirstname(request.getParameter("firstname"));
		oemployee.setLastname(request.getParameter("lastname"));
		oemployee.setPhone(request.getParameter("phone"));
		oemployee.setEmail(request.getParameter("email"));
		oemployee.setDepartment(request.getParameter("department"));
		oemployee.setSalary(Integer.parseInt(request.getParameter("salary")));
	}

	public static Employee search(int eid) {
		
		return session.get(Employee.class, eid);

	}
}
