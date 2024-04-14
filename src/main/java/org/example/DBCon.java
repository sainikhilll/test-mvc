package org.example;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCon {
    static Connection connection;
    public static Connection getConnection() {
        try {
            if(connection==null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Gym_Management", "root", "11716042");
                System.out.println("connection created");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return connection;
    }
}
