package com.malls;



import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * JDBC操作的工具类
 */
public class JDBCUtils {
    private static DataSource ds = null;
    static{
        //数据源只能被创建一次
        ds = new ComboPooledDataSource("Test");
    }
    public  static DataSource getDs(){
        return ds;
    }
    /**
     * 释放Connection链接
     * @param conn
     */
    public static void releaseSource(ResultSet res, Statement stmt, Connection conn) {
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException var12) {
                var12.printStackTrace();
            } finally {
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException var11) {
                        var11.printStackTrace();
                    }
                }

            }
        }

    }

    /*
     * 返回数据源的一个Connection对象
     */
    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }
}

