<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Employee Management System</title>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<a class="navbar-brand" href="#">Employee Management System</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<form method="POST" action="AllEmployeeDetails">
						<button class="btn btn-link mt-3" style="color: white">All
							Employee</button>
					</form>
					<form method="POST" action="ViewAddEmployeeServelet">
						<button class="btn btn-link mt-3" style="color: white">Add
							Employee</button>
					</form>
				</div>
			</div>
		</nav>

		<form method="POST" action="ViewAddEmployeeServelet">
			<button class="btn btn-primary btn-sm mt-5">Add Employee</button>
		</form>

		<%
			if (request.getAttribute("success1") != null) {
		%>

		<div class="alert alert-success" role="alert">
			Employee Added Successfully
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>

		<%
			}
		%>

		<%
			if (request.getAttribute("success2") != null) {
		%>

		<div class="alert alert-success" role="alert">
			Employee Deleted Successfully
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>

		<%
			}
		%>

		<%
			if (request.getAttribute("success3") != null) {
		%>

		<div class="alert alert-success" role="alert">
			Employee Updated Successfully
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>

		<%
			}
		%>

		<table class="table mt-1">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Salary</th>
					<th scope="col">Designation</th>
					<th scope="col">Email</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${employeeList}" var="emp">
					<tr>
						<th scope="row">${emp.empID}</th>
						<td>${emp.fname}</td>
						<td>${emp.lname}</td>
						<td>${emp.salary}</td>
						<td>${emp.designation}</td>
						<td>${emp.email}</td>
						<td>
							<form method="POST" action="EditEmployeeDetails">
								<input type="hidden" name="empID" value=${emp.empID}> <input
									type="submit" class="btn btn-sm btn-success" value="Edit"
									class="select">
							</form>
							<form method="POST" action="DeleteEmployeeDetail">
								<input type="hidden" name="empID" value=${emp.empID}> <input
									type="submit" class="btn btn-sm btn-danger" value="Delete"
									class="select">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>

