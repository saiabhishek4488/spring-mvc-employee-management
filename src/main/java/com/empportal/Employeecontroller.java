package com.empportal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Employeecontroller {

    @Autowired
    private EmployeeDao employeeDao;

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/empList")
    public String employeeList(Model model) {

        model.addAttribute("empList",
                employeeDao.getAllEmployees());

        return "emp_List";
    }

    @GetMapping("/showForm")
    public String showForm(Model model) {

        model.addAttribute("employee",
                new Employee());

        return "employee-form";
    }

    @PostMapping("/save")
    public String saveEmployee(
            @ModelAttribute("employee") Employee employee) {

        employeeDao.saveEmployee(employee);

        return "redirect:/empList";
    }
    @GetMapping("/edit/{id}")
    public String editEmployee(
            @PathVariable("id") int id,
            Model model) {

        Employee employee = employeeDao.getEmployeeById(id);

        model.addAttribute("employee", employee);

        return "employee-form";
    }

    // UPDATE EMPLOYEE
    @PostMapping("/update")
    public String updateEmployee(
            @ModelAttribute("employee") Employee employee) {

        employeeDao.updateEmployee(employee);

        return "redirect:/empList";
    }

    // DELETE EMPLOYEE
    @GetMapping("/delete/{id}")
    public String deleteEmployee(
            @PathVariable("id") int id) {

        employeeDao.deleteEmployee(id);

        return "redirect:/empList";
    }
}	
	

