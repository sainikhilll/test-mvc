package org.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/membership")
public class Membership extends HttpServlet{
    Connection con = DBCon.getConnection();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MembershipModel> membershipModelList = new ArrayList<>();
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from Membership");
            while(rs.next()) {
                MembershipModel membershipModel = new MembershipModel();
                membershipModel.setMembership_Id(rs.getString("membership_Id"));
                membershipModel.setMembership_type(rs.getString("membership_type"));
                membershipModel.setDuration(rs.getString("duration"));
                membershipModel.setHours_per_day(rs.getString("hours_per_day"));
                membershipModel.setPrice(rs.getString("price"));
                membershipModelList.add(membershipModel);
            }
            request.setAttribute("membershipModelList", membershipModelList);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("viewMemberships.jsp");
            requestDispatcher.forward(request, response);
        } catch (SQLException e) {

            e.printStackTrace();
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String membership_type = request.getParameter("membership_type");
        String duration = request.getParameter("duration");
        String hours_per_day = request.getParameter("hours_per_day");
        String price = request.getParameter("price");

        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from Membership where membership_type='"+membership_type+"'");
            if(rs.next()) {
                response.sendRedirect("message.jsp?msg= Membership Already Added");
            }else {
                Statement st1 = con.createStatement();
                st1.executeUpdate("insert into Membership(membership_type, duration, hours_per_day, price) values('"+membership_type+"', '"+duration+"', '"+hours_per_day+"', '"+price+"')");
                response.sendRedirect("message.jsp?msg= Membership added successfully");
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }

    }

}
