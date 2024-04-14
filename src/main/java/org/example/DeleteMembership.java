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


@WebServlet("/deleteMembership")
public class DeleteMembership extends HttpServlet{
    Connection con = DBCon.getConnection();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String membership_Id = request.getParameter("membership_Id");
        try {
            Statement st = con.createStatement();
            st.executeUpdate("delete from Enrollments where membership_Id='"+membership_Id+"'");
            st.executeUpdate("delete from Membership where membership_Id='"+membership_Id+"'");
            response.sendRedirect("message.jsp?msg= Membership Deleted");
        } catch (SQLException e) {
            response.sendRedirect("message.jsp?msg=Something Went Wrong");
            e.printStackTrace();
        }

    }

}
