package com.Test;

import com.malls.JDBCUtils;

import java.sql.SQLException;

public class Test {
    public static void main(String[] args) throws SQLException {
        System.out.println(JDBCUtils.getDs().getConnection());
    }
}
