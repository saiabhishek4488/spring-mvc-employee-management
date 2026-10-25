<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-primary">Employee Directory</h2>

        <a href="showForm" class="btn btn-success">
            + Add New Employee
        </a>
    </div>

    <div class="card shadow">

        <div class="card-header bg-primary text-white">
            <h5 class="mb-0">Employee List</h5>
        </div>

        <div class="card-body">

            <c:if test="${empty empList}">
                <div class="alert alert-warning text-center">
                    No employees found.
                </div>
            </c:if>

            <c:if test="${not empty empList}">

                <div class="table-responsive">

                    <table class="table table-bordered table-striped table-hover align-middle">

                        <thead class="table-dark">
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>City</th>
                                <th>State</th>
                                <th>Actions</th>
                            </tr>
                        </thead>

                        <tbody>

                            <c:forEach var="emp" items="${empList}">

                                <tr>
                                    <td>${emp.id}</td>

                                    <td>
                                        ${emp.name}
                                    </td>

                                    <td>
                                        ${emp.email}
                                    </td>

                                    <td>
                                        ${emp.city}
                                    </td>

                                    <td>
                                        ${emp.state}
                                    </td>
                                    <td>

    <a href="${pageContext.request.contextPath}/edit/${emp.id}"
       class="btn btn-primary btn-sm">
        Edit
    </a>

    <a href="${pageContext.request.contextPath}/delete/${emp.id}"
       class="btn btn-danger btn-sm"
       onclick="return confirm('Are you sure you want to delete this employee?');">
        Delete
    </a>

</td>
                                </tr>

                            </c:forEach>

                        </tbody>

                    </table>

                </div>

            </c:if>

        </div>
    </div>

</div>

</body>
</html>