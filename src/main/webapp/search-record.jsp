<%@page import="com.abhi.Employee"%>

<%@page import="com.abhi.EmployeeService"%>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Search Result</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">


<%


 Employee emp= EmployeeService.search(Integer.parseInt(request.getParameter("eid")));

  if (emp!=null) {
%>
<%@ include file="menu.jsp" %>
  <h2 class="text-center text-success mb-4">Employee Details Found</h2>

  <table class="table table-bordered table-striped shadow-sm">
    <thead class="table-dark">
      <tr>
        <th>E.Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Department</th>
        <th>Salary</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><%= emp.getEid() %></td>
        <td><%= emp.getFirstname() %></td>
        <td><%=emp.getLastname() %></td>
        <td><%= emp.getPhone() %></td>
        <td><%= emp.getEmail() %></td>
        <td><%= emp.getDepartment() %></td>
        <td><%= emp.getSalary()%></td>
      </tr>
    </tbody>
  </table>

<%
  } else {
%>
	<jsp:include page="search-input.jsp" />
  <div class="alert alert-danger mt-4 text-center" role="alert">
    <h4>Record with ID No: <%= request.getParameter("eid") %> not found.</h4>
  </div>

<%
  }
%>

</div>
</body>
</html>
