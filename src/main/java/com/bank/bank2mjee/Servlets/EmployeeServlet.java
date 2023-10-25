package com.bank.bank2mjee.Servlets;

import com.bank.bank2mjee.Dao.EmployeDao;
import com.bank.bank2mjee.Dao.Impl.EmployeDaoImpl;
import com.bank.bank2mjee.Entities.Employe;
import com.bank.bank2mjee.Services.EmployeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "EmployeeServlet", urlPatterns = {"/employees", "/employee", "/employeeAdd", "/employeeDelete", "/employeeUpdate"})
public class EmployeeServlet extends HttpServlet {

    EmployeDao employeDao = new EmployeDaoImpl();
    EmployeService employeService = new EmployeService(employeDao);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        switch (request.getRequestURI()) {
            case "/employees":
                getEmployees(request, response);
                break;
            default:
                getEmployees(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        switch (request.getRequestURI()) {
            case "/employee":
                getEmploye(request, response);
                break;
            case "/employeeAdd":
                addEmploye(request, response);
                break;
            case "/employeeDelete":
                deleteEmploye(request, response);
                break;
            case "/employeeUpdate":
                updateEmploye(request, response);
                break;
            default:
                getEmployees(request, response);
                break;
        }
    }

    protected void addEmploye(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String matricule = request.getParameter("matricule");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        LocalDate birthDate = LocalDate.parse(request.getParameter("birthDate"));
        String mobile = request.getParameter("mobile");
        LocalDate recruitementDate = LocalDate.parse(request.getParameter("recruitmentDate"));
        String email = request.getParameter("email");
        Employe employe = new Employe(firstName, lastName, birthDate, mobile, matricule, recruitementDate, email);
        Optional<Employe> employeOptional = employeService.addEmploye(employe);
        String message;
        String type;
        if (employeOptional.isPresent()) {
            message = "Successfuly Inserted";
            type = "green";
        } else {
            message = "Not Inserted";
            type = "red";
        }
        HttpSession session = request.getSession();
        session.setAttribute("message", message);
        session.setAttribute("type", type);
        session.setMaxInactiveInterval(1);
        response.sendRedirect("/employees");
    }

    protected void getEmploye(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String matricule = request.getParameter("matricule");
        Optional<Employe> employeOptional = employeService.getEmploye(matricule);
        List<Employe> employees = new ArrayList<>();
        String message = null;
        String type = null;
        if (employeOptional.isPresent()) {
            employees.add(employeOptional.get());
            request.setAttribute("employees", employees);
            request.setAttribute("employeesCurrent", true);
            request.getRequestDispatcher("/Views/Employe/employe.jsp").forward(request, response);
        } else {
            message = "Not Found";
            type = "red";
            HttpSession session = request.getSession();
            session.setAttribute("message", message);
            session.setAttribute("type", type);
            session.setMaxInactiveInterval(1);
            response.sendRedirect("/employees");
        }
    }

    protected void getEmployees(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employe> employees = employeService.getEmployees();
        request.setAttribute("employees", employees);
        request.setAttribute("employeesCurrent", true);
        request.getRequestDispatcher("/Views/Employe/employe.jsp").forward(request, response);
    }

    private void deleteEmploye(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String matricule = request.getParameter("matricule");
        Integer res = employeService.deleteEmploye(matricule);
        String message;
        String type;
        if (res != 0) {
            message = "Successfuly Deleted";
            type = "green";
        } else {
            message = "Not Deleted";
            type = "red";
        }
        HttpSession session = request.getSession();
        session.setAttribute("message", message);
        session.setAttribute("type", type);
        session.setMaxInactiveInterval(1);
        response.sendRedirect("/employees");
    }

    private void updateEmploye(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String matricule = request.getParameter("matricule");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        LocalDate birthDate = LocalDate.parse(request.getParameter("birthDate"));
        String mobile = request.getParameter("mobile");
        LocalDate recruitementDate = LocalDate.parse(request.getParameter("recruitmentDate"));
        String email = request.getParameter("email");
        Employe employe = new Employe(firstName, lastName, birthDate, mobile, matricule, recruitementDate, email);
        Optional<Employe> employeOptional = employeService.updateEmploye(employe, matricule);
        String message;
        String type;
        if (employeOptional.isPresent()) {
            message = "Successfuly Updated";
            type = "green";
        } else {
            message = "Not Updated";
            type = "red";
        }
        HttpSession session = request.getSession();
        session.setAttribute("message", message);
        session.setAttribute("type", type);
        session.setMaxInactiveInterval(1);
        response.sendRedirect("/employees");
    }
}