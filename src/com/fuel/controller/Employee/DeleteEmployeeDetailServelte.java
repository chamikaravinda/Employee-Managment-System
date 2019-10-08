package com.fuel.controller.Employee;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fuel.model.Employee.Employee;
import com.fuel.services.EmployeeService.EmpServiceImpl;
import com.fuel.services.EmployeeService.IEmpService;

@WebServlet("/DeleteEmployeeDetail")
public class DeleteEmployeeDetailServelte extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Employee employee= new Employee();
		String empID = request.getParameter("empID");
		
		IEmpService empService= new EmpServiceImpl();
		if(empService.removeEmpDetails(Integer.parseInt(empID))) {	
			
			ArrayList<Employee> employeeList = empService.getEmpDetails();	
			
			request.setAttribute("success2", "EmployeeDeleted");
			request.setAttribute("employeeList", employeeList);
			RequestDispatcher rd1 = request.getRequestDispatcher("/WEB-INF/views/list_employee.jsp");
			rd1.forward(request, response);
			response.sendRedirect("/WEB-INF/views/list_employee.jsp");
			return;
			
			
		}else {
			RequestDispatcher rd1 = request.getRequestDispatcher("/AllEmployeeDetails");
			rd1.forward(request, response);			
		}
		
		
	}

}
