package com.hk.util;

import java.sql.*;

public class DBUtil {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection conn=null;
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/store?user=root&password=131569&useSSL=true&characterEncoding=UTF-8";
        conn= DriverManager.getConnection(url);
        return conn;
    }
    public void testConn() throws ClassNotFoundException, SQLException {
        if(getConnection()!=null) {
            System.out.println("????????");
        }

    }
    public static void close(ResultSet rs, Statement stmt, Connection conn) {
        try {
            if(rs!=null) {
                rs.close();
            }
            if(stmt!=null) {
                stmt.close();
            }
            if(conn!=null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            rs=null;
            stmt=null;
            conn=null;
        }
    }
}
