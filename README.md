# Spring MVC Employee Management System

## Project Overview

The **Spring MVC Employee Management System** is a Java-based web application developed using the Spring MVC framework, JDBC, MySQL, JSP, HTML, and CSS. It allows users to manage employee information through a web interface by performing all four CRUD operations: Create, Read, Update, and Delete.

The application follows the Model-View-Controller (MVC) architecture to separate business logic, data access, and the user interface.

## Objectives

- Develop a web-based employee management application.
- Implement CRUD operations using Spring MVC.
- Store and retrieve employee information from a MySQL database.
- Use JDBC to execute database operations.
- Follow the MVC architecture for maintainable code.

## Technologies Used

| Technology | Purpose |
|---|---|
| Java | Application programming language |
| Spring MVC | Web framework and request handling |
| JDBC | Database connectivity and SQL operations |
| MySQL | Relational database |
| JSP | Dynamic web pages |
| HTML/CSS | User interface |
| Maven | Dependency management and build configuration |
| Apache Tomcat | Web application server |
| Eclipse IDE | Development environment |

## Project Structure

```text
empportal01/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── empportal/
│       │           ├── Employee.java
│       │           ├── Employeecontroller.java
│       │           └── EmployeeDao.java
│       ├── resources/
│       └── webapp/
│           └── WEB-INF/
│               ├── sbapp-servlet.xml
│               ├── views/
│               │   ├── index.jsp
│               │   ├── emp_list.jsp
│               │   └── employee-form.jsp
│               └── web.xml
├── pom.xml
└── README.md
```

## CRUD Operations

### 1. Create Employee

Allows users to enter employee details through a form and save a new employee record in the MySQL database.

### 2. Read Employee

Retrieves employee records from the database and displays them on a JSP page.

### 3. Update Employee

Allows users to select an existing employee, modify their details, and save the updated information to the database.

### 4. Delete Employee

Allows users to remove an employee record from the database using the employee's identifier.

## Application Architecture

### Employee.java — Model

Represents the employee entity and contains employee attributes, constructors, getters, and setters.

### Employeecontroller.java — Controller

Handles HTTP requests, receives form submissions, and coordinates the interaction between the user interface and the DAO layer.

### EmployeeDao.java — Data Access Object

Contains database access logic and JDBC operations for inserting, retrieving, updating, and deleting employee records.

### JSP Pages — View

Provide the user interface for displaying employee records and entering or modifying employee details.

### Spring MVC Configuration

The Spring MVC configuration files define the application components, request handling, view resolution, and web application setup.

## Database

The application uses MySQL to store employee records.

Before running the application, create the required database and employee table. Configure the database URL, username, password, and JDBC driver in the application's configuration.

Example employee table:

```sql
CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);
```

**Note:** Adjust the table columns to match the fields and SQL statements implemented in `Employee.java` and `EmployeeDao.java`.

## How to Run the Project

1. Install Java, Eclipse IDE, Apache Maven, and Apache Tomcat.
2. Install MySQL and start the database server.
3. Clone or download this repository.
4. Import the project into Eclipse as an existing Maven project.
5. Configure the MySQL database connection in the project.
6. Verify that the Spring MVC configuration and required Maven dependencies are correct.
7. Configure Apache Tomcat in Eclipse.
8. Run the project on the Tomcat server.
9. Open the application in a browser using the local URL and port shown by Tomcat.
10. Test the Create, Read, Update, and Delete operations.

## Learning Outcomes

- Understanding Spring MVC architecture.
- Implementing CRUD operations in a Java web application.
- Connecting Java applications to MySQL using JDBC.
- Handling HTTP requests through Spring MVC controllers.
- Creating dynamic web pages using JSP.
- Managing project dependencies with Maven.
- Deploying a web application on Apache Tomcat.

## Future Enhancements

- Add user authentication and authorization.
- Implement server-side validation.
- Improve the interface using Bootstrap.
- Add pagination and employee search.
- Introduce exception handling and logging.

## Author

B Sai Abhishek

## License

This project is intended for educational and learning purposes.
