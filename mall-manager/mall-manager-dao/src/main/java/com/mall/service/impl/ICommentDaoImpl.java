package com.mall.service.impl;

import com.mall.service.BsComComment;
import com.mall.service.BsOrder;
import com.mall.service.ICommentDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ICommentDaoImpl implements ICommentDao {
    @Override
    public BsComComment selectOneCommentByOid(String oid) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_com_comment where o_id=?";
        BsComComment bsOrder=new BsComComment();
        try {
//            orders=qr.query(sql, new BeanListHandler<BsOrder>(BsOrder.class),uid);
            qr.query(sql, new ResultSetHandler<BsComComment>() {

                @Override
                public BsComComment handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {

                        bsOrder.setComID(rs.getString("com_id"));
                        bsOrder.setoID(rs.getString("o_id"));
                        bsOrder.setsID(rs.getString("s_id"));
                        bsOrder.setContent(rs.getString("content"));
                        bsOrder.setBsName(rs.getString("user_name"));
                        bsOrder.setID(rs.getInt("user_id"));
//                        bsOrder.setoDate(rs.getString(""));
                    }
                    return null;
                }

            },oid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bsOrder;
    }


    @Override
    public List<BsComComment> selectAllCommentBySid(String sid) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_com_comment where s_id=?";
        List<BsComComment> orders=new ArrayList<>();
        try {
//            orders=qr.query(sql, new BeanListHandler<BsOrder>(BsOrder.class),uid);
            qr.query(sql, new ResultSetHandler<BsComComment>() {

                @Override
                public BsComComment handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        BsComComment bsOrder=new BsComComment();
                        bsOrder.setComID(rs.getString("com_id"));
                        bsOrder.setoID(rs.getString("o_id"));
                        bsOrder.setsID(rs.getString("s_id"));
                        bsOrder.setContent(rs.getString("content"));
                        bsOrder.setBsName(rs.getString("user_name"));
                        bsOrder.setID(rs.getInt("user_id"));
//                        bsOrder.setoDate(rs.getString(""));
                        orders.add(bsOrder);
                    }
                    return null;
                }

            },sid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public boolean giveCommentByOid(String oid,String content) {
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql = "update bs_com_comment set content=? where o_id=?";
        try {
            qr.update(sql, content, oid);
            //评论以后将商品状态改为已完成4
            updateState(oid,4);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    //确认收货后订单改为未评价2
    @Override
    public boolean confirmGetGoodsByOid(String oid) {
        return updateState(oid,2);
    }

    //评论以后将商品状态改为已完成
    public boolean updateState(String oid,int num){
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql = "update bs_order set sch_id=? where o_id=?";
        try {
            qr.update(sql,num,oid);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;

    }

}


