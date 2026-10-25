<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Employee Form</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="row justify-content-center">

        <div class="col-md-8">

            <div class="card shadow">

                <div class="card-header bg-primary text-white">

                    <h4 class="mb-0">
                        Employee Form
                    </h4>

                </div>

                <div class="card-body">
                

                    <form action="${pageContext.request.contextPath}${employee.id == 0 ? '/save' : '/update'}"
      method="post">

                        <!-- ID -->

                        <input type="hidden"
                               name="id"
                               value="${employee.id}">


                        <!-- Name -->

                        <div class="mb-3">

                            <label class="form-label">
                                Name
                            </label>

                            <input type="text"
                                   class="form-control"
                                   name="name"
                                   value="${employee.name}"
                                   required>

                        </div>


                        <!-- Email -->

                        <div class="mb-3">

                            <label class="form-label">
                                Email
                            </label>

                            <input type="email"
                                   class="form-control"
                                   name="email"
                                   value="${employee.email}"
                                   required>

                        </div>


                        <!-- City -->

                        <div class="mb-3">

                            <label class="form-label">
                                City
                            </label>

                            <input type="text"
                                   class="form-control"
                                   name="city"
                                   value="${employee.city}"
                                   required>

                        </div>


                        <!-- State -->

                        <div class="mb-3">

                            <label class="form-label">
                                State
                            </label>

                            <input type="text"
                                   class="form-control"
                                   name="state"
                                   value="${employee.state}"
                                   required>

                        </div>


                        <!-- Buttons -->
                        <button type="submit" class="btn btn-success">

    ${employee.id == 0 ? 'Save Employee' : 'Update Employee'}

</button>

                       

                        <a href="${pageContext.request.contextPath}/empList"
                           class="btn btn-secondary">

                            Cancel

                        </a>

                    </form>

                </div>

            </div>

        </div>

    </div>

</div>

</body>

</html>