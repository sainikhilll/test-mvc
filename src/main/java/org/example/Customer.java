package org.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/customer")
public class Customer extends HttpServlet{
    Connection con = DBCon.getConnection();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String height = request.getParameter("height");
        String weight = request.getParameter("weight");
        String age = request.getParameter("age");
        String password = request.getParameter("password");

        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from Customer where email='"+email+"' or phone='"+phone+"'");
            if(rs.next()) {
                response.sendRedirect("message.jsp?msg=Farmer with this Email/Phone already exixst");;
            }else {
                Statement st1 = con.createStatement();
                st1.executeUpdate("insert into Customer(first_name, last_name, email, phone, height, weight, age, password) values('"+first_name+"', '"+last_name+"', '"+email+"', '"+phone+"', '"+height+"', '"+weight+"', '"+age+"', '"+password+"')");
                response.sendRedirect("message.jsp?msg= Registration Successful!");
            }
        } catch (SQLException e) {
            response.sendRedirect("message.jsp?msg= Something went wrong");
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from Customer where email='"+email+"' and password='"+password+"'");
            if(rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("customer_Id", rs.getString("customer_Id"));
                session.setAttribute("role", "Customer");
                response.sendRedirect("customerHome.jsp");
            }else{
                response.sendRedirect("message.jsp?msg=Wrong Credentials!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
