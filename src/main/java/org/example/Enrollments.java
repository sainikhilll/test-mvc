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
import javax.servlet.http.HttpSession;


@WebServlet("/enrollments")
public class Enrollments extends HttpServlet{
    Connection con = DBCon.getConnection();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<EnrollmentsModel> enrollmentsModelList = new ArrayList<>();
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from Enrollments");
            while(rs.next()) {
                EnrollmentsModel enrollmentsModel = new EnrollmentsModel();
                enrollmentsModel.setEnrollment_Id(rs.getString("enrollment_Id"));
                enrollmentsModel.setCustomer_Id(rs.getString("customer_Id"));
                enrollmentsModel.setMembership_Id(rs.getString("membership_Id"));
                enrollmentsModel.setDate(rs.getString("date"));
                enrollmentsModel.setStatus(rs.getString("status"));
                enrollmentsModelList.add(enrollmentsModel);
            }
            request.setAttribute("enrollmentsModelList", enrollmentsModelList);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("viewEnrollments.jsp");
            requestDispatcher.forward(request, response);
        } catch (SQLException e) {
            response.sendRedirect("message.jsp?msg= Something went wrong");
            e.printStackTrace();
        }

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String customer_Id = (String)session.getAttribute("customer_Id");
        System.out.println(customer_Id);
        String membership_Id = request.getParameter("membership_Id");

        try {
            Statement st = con.createStatement();
            st.executeUpdate("insert into Enrollments(customer_Id, membership_Id, date, status) values('"+customer_Id+"', '"+membership_Id+"', now(), 'Enrolled')");
            response.sendRedirect("message.jsp?msg= Enrolled Successfully!");
        } catch (SQLException e) {
            response.sendRedirect("message.jsp?msg= Something Went Wrong");
            e.printStackTrace();
        }

    }

}
