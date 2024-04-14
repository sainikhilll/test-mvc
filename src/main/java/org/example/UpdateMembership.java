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


@WebServlet("/updateMembership")
public class UpdateMembership extends HttpServlet{
    Connection con = DBCon.getConnection();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String membership_Id = request.getParameter("membership_Id");
        String membership_type = request.getParameter("membership_type");
        String duration = request.getParameter("duration");
        String hours_per_day = request.getParameter("hours_per_day");
        String price = request.getParameter("price");

        try {
            Statement st = con.createStatement();
            st.executeUpdate("update Membership set membership_type='"+membership_type+"', duration='"+duration+"', hours_per_day='"+hours_per_day+"', price='"+price+"' where membership_Id='"+membership_Id+"'");
            response.sendRedirect("message.jsp?msg=Updation Successfull");
        } catch (SQLException e) {
            response.sendRedirect("message.jsp?msg= Something went wrong");
            e.printStackTrace();
        }

    }

}
