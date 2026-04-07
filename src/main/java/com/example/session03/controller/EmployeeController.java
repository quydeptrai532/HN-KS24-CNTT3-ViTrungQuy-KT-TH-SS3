package com.example.session03.controller;

import com.example.session03.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {
    @GetMapping("/employees")
    public String listEmployees(Model model) {
        List<Employee> list = new ArrayList<>();
        list.add(new Employee(1, "Quydz", "Rikkei IT Dev", 12000));
        list.add(new Employee(2, "Quydz2", "Rikkei Hospital", 8000));
        list.add(new Employee(3, "Quydz3", "Rikkei Karaoke", 15000));
        list.add(new Employee(4, "Quydz4", "Rikkei IT Dev", 14000));
        list.add(new Employee(5, "Quydz5", "Rikkei Hospital", 10000));
        list.add(new Employee(6, "Quydz6", "Rikkei Karaoke", 25000));

        model.addAttribute("employees", list);
        return "employee-list";
    }
}
