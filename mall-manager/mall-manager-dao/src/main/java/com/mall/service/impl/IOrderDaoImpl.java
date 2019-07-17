package com.mall.service.impl;


import com.mall.service.BsOrder;
import com.mall.service.IOrderDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IOrderDaoImpl implements IOrderDao {
    @Override
    public List<BsOrder> selectAllOrderByUid(int uid) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_order where user_id=?";
        List<BsOrder> orders=new ArrayList<>();
        try {
//            orders=qr.query(sql, new BeanListHandler<BsOrder>(BsOrder.class),uid);
            qr.query(sql, new ResultSetHandler<BsOrder>() {

                @Override
                public BsOrder handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        BsOrder bsOrder = new BsOrder();
                        bsOrder.setoID(rs.getString("o_id"));
                        bsOrder.setoName(rs.getString("o_name"));
                        bsOrder.setoAddress(rs.getString("o_address"));
                        bsOrder.setoTel(rs.getString("o_tel"));
                        bsOrder.setSchID(rs.getInt("sch_id"));
                        bsOrder.setID(rs.getInt("user_id"));
                        bsOrder.setTel(rs.getString("user_tel"));
                        bsOrder.setsID(rs.getString("s_id"));
                        bsOrder.setPrice(rs.getDouble("o_price"));
                        bsOrder.setQuantity(rs.getInt("quantity"));
//                        bsOrder.setoDate(rs.getString(""));
                        orders.add(bsOrder);
                    }
                    return null;
                }

            },uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public List<BsOrder> selectUnreceiveOrderByUid(int uid) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_order where user_id=? and sch_id=3";
        List<BsOrder> orders=new ArrayList<>();
        try {
//            orders=qr.query(sql, new BeanListHandler<BsOrder>(BsOrder.class),uid);
            qr.query(sql, new ResultSetHandler<BsOrder>() {

                @Override
                public BsOrder handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        BsOrder bsOrder=new BsOrder();
                        bsOrder.setoID(rs.getString("o_id"));
                        bsOrder.setoName(rs.getString("o_name"));
                        bsOrder.setoAddress(rs.getString("o_address"));
                        bsOrder.setoTel(rs.getString("o_tel"));
                        bsOrder.setSchID(rs.getInt("sch_id"));
                        bsOrder.setID(rs.getInt("user_id"));
                        bsOrder.setTel(rs.getString("user_tel"));
                        bsOrder.setsID(rs.getString("s_id"));
                        bsOrder.setPrice(rs.getDouble("o_price"));
                        bsOrder.setQuantity(rs.getInt("quantity"));
//                        bsOrder.setoDate(rs.getString(""));
                        orders.add(bsOrder);
                    }
                    return null;
                }

            },uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public List<BsOrder> selectUnEvaluateOrderByUid(int uid) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_order where user_id=? and sch_id=2";
        List<BsOrder> orders=new ArrayList<>();
        try {
//            orders=qr.query(sql, new BeanListHandler<BsOrder>(BsOrder.class),uid);
            qr.query(sql, new ResultSetHandler<BsOrder>() {

                @Override
                public BsOrder handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        BsOrder bsOrder=new BsOrder();
                        bsOrder.setoID(rs.getString("o_id"));
                        bsOrder.setoName(rs.getString("o_name"));
                        bsOrder.setoAddress(rs.getString("o_address"));
                        bsOrder.setoTel(rs.getString("o_tel"));
                        bsOrder.setSchID(rs.getInt("sch_id"));
                        bsOrder.setID(rs.getInt("user_id"));
                        bsOrder.setTel(rs.getString("user_tel"));
                        bsOrder.setsID(rs.getString("s_id"));
                        bsOrder.setPrice(rs.getDouble("o_price"));
                        bsOrder.setQuantity(rs.getInt("quantity"));
//                        bsOrder.setoDate(rs.getString(""));
                        orders.add(bsOrder);
                    }
                    return null;
                }

            },uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }
}
