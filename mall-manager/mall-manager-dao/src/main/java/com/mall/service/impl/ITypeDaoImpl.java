package com.mall.service.impl;

import com.mall.service.BsComType;
import com.mall.service.BsOrder;
import com.mall.service.ITypeDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ITypeDaoImpl implements ITypeDao {
    @Override
    public List<String> selecteDescribe(String style) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select type_describe from bs_com_type where style=?";
        List<String> orders=new ArrayList<>();
        try {
//            orders=qr.query(sql, new BeanListHandler<BsOrder>(BsOrder.class),uid);
            qr.query(sql, new ResultSetHandler<String>() {

                @Override
                public String handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {

                        orders.add(rs.getString("type_describe"));
                    }
                    return null;
                }

            },style);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public List<String> selectType() {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select DISTINCT(style) from bs_com_type;";
        List<String> orders=new ArrayList<>();
        try {
//            orders=qr.query(sql, new BeanListHandler<BsOrder>(BsOrder.class),uid);
            qr.query(sql, new ResultSetHandler<String>() {

                @Override
                public String handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {

                        orders.add(rs.getString("style"));
                    }
                    return null;
                }

            });
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }
}
