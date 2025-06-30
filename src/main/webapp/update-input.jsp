<%@ include file="menu.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Record</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

  <div class="container py-5">
    <h2 class="text-center text-primary mb-4">Enter the ID to Update Existing Record</h2>

    <form action="update-record.jsp" class="mx-auto border border-info rounded-4 p-4 bg-info-subtle shadow" style="max-width: 500px;">
      <div class="mb-3">
        <label for="id" class="form-label fw-semibold">Enter the ID No:</label>
        <input type="number" name="eid" id="id" class="form-control" required>
      </div>

      <div class="d-grid">
        <button type="submit" class="btn btn-info fw-bold">Find Record</button>
      </div>
    </form>
  </div>

</body>
</html>
