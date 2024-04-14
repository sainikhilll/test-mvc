package org.example;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class MembershipBusinees {
    Connection con = DBCon.getConnection();
    public MembershipModel getMembershipById(String membership_Id) {
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from membership where membership_Id='"+membership_Id+"'");
            while(rs.next()) {
                MembershipModel membershipModel = new MembershipModel();
                membershipModel.setMembership_Id(rs.getString("membership_Id"));
                membershipModel.setMembership_type(rs.getString("membership_type"));
                membershipModel.setDuration(rs.getString("duration"));
                membershipModel.setHours_per_day(rs.getString("hours_per_day"));
                membershipModel.setPrice(rs.getString("price"));

                return membershipModel;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }
}
