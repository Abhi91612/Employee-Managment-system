<%@page import="com.abhi.Employee"%>


<%@page import="com.abhi.EmployeeService"%>
<%@ include file="menu.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Employee Details</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .heading {
      text-align: center;
      color: #444;
      margin-top: 20px;
      margin-bottom: 30px;
    }
    .table th {
      background-color: #ff9800;
      color: white;
    }
    .table td, .table th {
      vertical-align: middle;
    }
  </style>
</head>
<body class="bg-light">

  <div class="container">
    <h2 class="heading">Employee Details</h2>
    
    <div class="table-responsive">
      <table class="table table-bordered table-striped table-hover align-middle">
        <thead>
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
          <%
          

                      java.util.List <Employee> elist=EmployeeService.getList();
                      for( Employee emp:elist){
          %>
            <tr>
              <td><%= emp.getEid() %></td>
              <td><%= emp.getFirstname() %></td>
              <td><%= emp.getLastname() %></td>
              <td><%= emp.getPhone() %></td>
              <td><%= emp.getEmail() %></td>
              <td><%= emp.getDepartment() %></td>
              <td><%= emp.getSalary() %></td>
            </tr>
          <%
            }
          %>
        </tbody>
      </table>
    </div>
  </div>

</body>
</html>
