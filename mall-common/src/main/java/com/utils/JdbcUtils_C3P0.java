package com.utils;



import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class JdbcUtils_C3P0 {
//    数据源只能被创建一次
private  static DataSource ds = null;
static {
    ds = new ComboPooledDataSource("mvcdemo");
}
//获取数据源
public static DataSource getDataSource (){
    return ds;
}
//释放connection连接
public static void releaseConnection(Connection connection){
        try {
            if(connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//    返回数据源的一个connection对象
    public static Connection getConnection() throws SQLException {
         return  ds.getConnection();
    }
}

