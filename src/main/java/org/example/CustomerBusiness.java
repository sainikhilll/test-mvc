package org.example;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class CustomerBusiness {
    Connection con = DBCon.getConnection();
    public CustomerModel getCustomerById(String customer_Id) {
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from Customer where customer_Id='"+customer_Id+"'");
            if(rs.next()) {
                CustomerModel customerModel = new CustomerModel();
                customerModel.setCustomer_Id(rs.getString("customer_Id"));
                customerModel.setFirst_name(rs.getString("first_name"));
                customerModel.setLast_name(rs.getString("last_name"));
                customerModel.setEmail(rs.getString("email"));
                customerModel.setPhone(rs.getString("phone"));
                customerModel.setHeight(rs.getString("height"));
                customerModel.setWeight(rs.getString("weight"));
                customerModel.setAge(rs.getString("age"));
                return customerModel;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }
}
