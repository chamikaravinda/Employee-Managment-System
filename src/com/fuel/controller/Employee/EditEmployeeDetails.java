package com.fuel.controller.Employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fuel.model.Employee.Employee;
import com.fuel.services.EmployeeService.EmpServiceImpl;
import com.fuel.services.EmployeeService.IEmpService;

@WebServlet("/EditEmployeeDetails")
public class EditEmployeeDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		IEmpService empService= new  EmpServiceImpl();
		Employee employee = empService.getEmpDetailsByID(Integer.parseInt(request.getParameter("empID")));
		
		request.setAttribute("employee", employee);
		RequestDispatcher rd1 = request.getRequestDispatcher("/WEB-INF/views/edit_employee.jsp");
		rd1.forward(request, response);
		
	}

}
