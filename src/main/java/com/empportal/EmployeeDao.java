package com.empportal;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class EmployeeDao {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // GET ALL EMPLOYEES
    public List<Employee> getAllEmployees() {

        String sql = "SELECT * FROM Employee71";

        RowMapper<Employee> rowMapper = (rs, rowNum) -> new Employee(
                rs.getInt("id"),
                rs.getString("name"),
                rs.getString("email"),
                rs.getString("city"),
                rs.getString("state")
        );

        return jdbcTemplate.query(sql, rowMapper);
    }

    // SAVE EMPLOYEE
    public int saveEmployee(Employee emp) {

        String sql = "INSERT INTO Employee71 (name, email, city, state) VALUES (?, ?, ?, ?)";

        return jdbcTemplate.update(
                sql,
                emp.getName(),
                emp.getEmail(),
                emp.getCity(),
                emp.getState()
        );
    }

    // GET EMPLOYEE BY ID
    public Employee getEmployeeById(int id) {

        String sql = "SELECT * FROM Employee71 WHERE id = ?";

        return jdbcTemplate.queryForObject(
                sql,
                (rs, rowNum) -> new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("city"),
                        rs.getString("state")
                ),
                id
        );
    }

    // UPDATE EMPLOYEE
    public int updateEmployee(Employee emp) {

        String sql = "UPDATE Employee71 SET name=?, email=?, city=?, state=? WHERE id=?";

        return jdbcTemplate.update(
                sql,
                emp.getName(),
                emp.getEmail(),
                emp.getCity(),
                emp.getState(),
                emp.getId()
        );
    }

    // DELETE EMPLOYEE
    public int deleteEmployee(int id) {

        String sql = "DELETE FROM Employee71 WHERE id=?";

        return jdbcTemplate.update(sql, id);
    }
}