package com.utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class JdbcUtils {
    static String driver;
    static String url;
    static String user;
    static String password;

    static {
        try {
            Properties pro=new Properties();
            InputStream in= JdbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
            pro.load(in);
            driver=pro.getProperty("mysql.driver");
            url=pro.getProperty("mysql.url");
            user=pro.getProperty("mysql.user");
            password=pro.getProperty("mysql.password");
            Class.forName(driver);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    //��ȡ����
    public static Connection getConnection() {
        Connection conn=null;
        try {
            conn = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;

    }

    //�ͷ���Դ
    public static void releaseSource(ResultSet res,Statement stmt,Connection conn) {
        try {
            if(res!=null) {
                res.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                if(stmt!=null) {
                    stmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    if(conn!=null) {
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

    }

    //�ͷ���Դ
    public static void releaseSource(ResultSet res,PreparedStatement pstmt,Connection conn) {
        try {
            if(res!=null) {
                res.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                if(pstmt!=null) {
                    pstmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    if(conn!=null) {
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

    }
}
