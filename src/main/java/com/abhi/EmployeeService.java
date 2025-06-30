package com.abhi;


import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import jakarta.servlet.http.HttpServletRequest;

public class EmployeeService {
	
	public static void saveEmployee(HttpServletRequest request) {
		Employee employee=new Employee();
		employee.setEid(Integer.parseInt(request.getParameter("eid")));
		employee.setFirstname(request.getParameter("firstname"));
		employee.setLastname(request.getParameter("lastname"));
		employee.setPhone(request.getParameter("phone"));
		employee.setEmail(request.getParameter("email"));
		employee.setDepartment(request.getParameter("department"));
		employee.setSalary(Integer.parseInt(request.getParameter("salary")));
		EmployeeRepository.persistEmployee(employee);
		
		
		
		
	}
	public static java.util.List<Employee> getList(){
		return EmployeeRepository.getEmployeeList();
	}
	public static Employee getRecord(HttpServletRequest req) {
		
		int eid=Integer.parseInt(req.getParameter("eid"));
		return EmployeeRepository.getEmpl(eid);
		
	}
	public  static void deleteRecord(int eid) {
		
		EmployeeRepository.delete(eid);
	}
	public  static void update(HttpServletRequest request) {
	
	EmployeeRepository.updateRecord(request);
	}
	public static Employee search(int eid) {
	
		return EmployeeRepository.search(eid);
	}
}
