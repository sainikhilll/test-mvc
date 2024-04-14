package org.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateProfile")
public class UpdateCustomer extends HttpServlet{
    Connection con = DBCon.getConnection();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customer_Id = request.getParameter("customer_Id");
        String first_name = request.getParameter("first_name");
        String email = request.getParameter("email");
        String height = request.getParameter("height");
        String age = request.getParameter("age");
        String last_name = request.getParameter("last_name");
        String phone = request.getParameter("phone");
        String weight = request.getParameter("weight");

        try {
            Statement st = con.createStatement();
            st.executeUpdate("update customer set first_name='"+first_name+"', first_name='"+first_name+"', email='"+email+"', phone='"+phone+"', height='"+height+"', weight='"+weight+"', age='"+age+"' where customer_Id='"+customer_Id+"'");
            response.sendRedirect("message.jsp?msg= Profile Updated Successfully!");
        } catch (SQLException e) {
            response.sendRedirect("message.jsp?msg= Something went wrong");
            e.printStackTrace();
        }
    }

}
