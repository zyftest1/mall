package com.mall.service.impl;

import com.mall.shitiClass.BS_order;
import com.malls.JDBCUtils;
import com.mall.service.bsOrder_Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class bsOrder_DaoImpl implements bsOrder_Dao {
    @Override
    public List<BS_order> selectAll() throws SQLException {
        Connection conn = null;
        Statement statement = null;
        ResultSet resultSet = null;
        BS_order bs = null;
        ArrayList List = new ArrayList();
        conn = JDBCUtils.getConnection();
        statement = conn.createStatement();
        String sql = "select * from BS_order";
        resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            bs = new BS_order();
            bs.setO_ID(resultSet.getString("o_ID"));
            bs.setO_name(resultSet.getString("o_name"));
            bs.setO_address(resultSet.getString("o_address"));
            bs.setO_tel(resultSet.getString("o_tel"));
            bs.setSch_ID(resultSet.getString("sch_ID"));
            bs.setUser_ID(resultSet.getInt("user_ID"));
            bs.setUser_tel(resultSet.getString("user_tel"));
            bs.setS_ID(resultSet.getString("s_ID"));
            bs.setO_price(resultSet.getInt("o_price"));
            bs.setQuantity(resultSet.getInt("quantity"));
            bs.setO_date(resultSet.getDate("o_date"));
            List.add(bs);
        }
        JDBCUtils.releaseSource(resultSet, statement, conn);
        return List;
    }
}
