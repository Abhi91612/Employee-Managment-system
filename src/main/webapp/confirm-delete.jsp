<%@page import="com.abhi.Employee"%>
<%@page import="com.abhi.EmployeeService"%>




<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Confirm Delete</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<%
 Employee emp=EmployeeService.getRecord(request);

if(emp!=null){
%>
<%@ include file="menu.jsp" %>
<div class="container mt-5">
  <h2 class="text-center text-danger mb-4">Are you sure you want to delete this record?</h2>

  <form action="delete-success.jsp">
    <table class="table table-bordered border-danger table-striped">
      <tbody class="table-warning">
        <tr>
          <th scope="row">ID</th>
          <td>
            <%= emp.getEid() %>
            <input type="hidden" name="eid" value="<%= emp.getEid()%>">
          </td>
        </tr>
        <tr>
          <th scope="row">First Name</th>
          <td><%= emp.getFirstname() %></td>
        </tr>
        <tr>
          <th scope="row">Last Name</th>
          <td><%= emp.getLastname() %></td>
        </tr>
        <tr>
          <th scope="row">Phone</th>
          <td><%= emp.getPhone() %></td>
        </tr>
        <tr>
          <th scope="row">Email</th>
          <td><%= emp.getEmail() %></td>
        </tr>
        <tr>
          <th scope="row">Department</th>
          <td><%= emp.getDepartment() %></td>
        </tr>
        <tr>
          <th scope="row">Salary</th>
          <td><%= emp.getSalary()%></td>
        </tr>
        <tr>
          <td colspan="2" class="text-end">
          <button type="submit" class="btn  px-4" onclick="history.back()">Cancel</button>
            <button type="submit" class="btn btn-danger px-4">Confirm Delete</button>
          </td>
        </tr>
      </tbody>
    </table>
  </form>
</div>

<%
} else {
%>
  <jsp:include page="delete-record.jsp" />
  <div class="container mt-4">
    <div class="alert alert-danger text-center">
      <h4>No record found with ID <strong><%= request.getParameter("eid") %></strong>.</h4>
    </div>
  </div>
<%
}
%>

</body>
</html>
