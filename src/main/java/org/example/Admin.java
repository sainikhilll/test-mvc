package org.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/admin")
public class Admin extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if(email.equalsIgnoreCase("admin@gmail.com") && password.equalsIgnoreCase("admin")){
            session.setAttribute("role", "Admin");
            response.sendRedirect("adminHome.jsp");
        }else{
            response.sendRedirect("message.jsp?msg=Invalid Credentials");
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Return the login form HTML
        RequestDispatcher dispatcher = request.getRequestDispatcher("/adminLogin.jsp");
        dispatcher.forward(request, response);
    }




}
