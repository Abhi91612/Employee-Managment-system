<!DOCTYPE html>
<html lang="en">
<head>
<!-- <link ref="stylesheet" href="CSS/style.css"/>  -->
  <meta charset="UTF-8">
  <title>Employee Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
 <style type="text/css">
 .navbar-custom {
      background-color: #ff9800; /* orange */
    }
    .navbar-custom a {
      color: white !important;
      font-weight: 500;
    }
    .navbar-custom a:hover {
      text-decoration: underline;
    }
    hr.custom-hr {
      border: 3px solid green;
      margin: 0;
    }
 </style>
 
  </head>
<body>

  <hr class="custom-hr">

  <nav class="navbar navbar-expand-lg navbar-custom">
    <div class="container justify-content-center">
      <ul class="navbar-nav">
        <li class="nav-item px-3">
          <a class="nav-link" href="/employee-mangement">Home</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="insert-record.jsp">Insert Record</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="product-list.jsp">Product List</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="delete-record.jsp">Delete Record</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="update-input.jsp">Update Record</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="search-input.jsp">Search Record</a>
        </li>
      </ul>
    </div>
  </nav>

  <hr class="custom-hr">

</body>
</html>
