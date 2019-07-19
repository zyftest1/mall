package com.mall.service.impl;

import com.mall.Goods;
import com.mall.service.BsComStock;
import com.mall.service.IGoodsDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IGoodsDaoImpl implements IGoodsDao {
    @Override
    public List<BsComStock> selectGoodsByLike(String name) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_com_stock where s_describe like '%"+name+"%'";
        List<BsComStock> orders=new ArrayList<>();
        try {
//            orders=qr.query(sql, new BeanListHandler<BsOrder>(BsOrder.class),uid);
            qr.query(sql, new ResultSetHandler<BsComStock>() {

                @Override
                public BsComStock handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        BsComStock goods=new BsComStock();
                        goods.setDescribe(rs.getString("s_describe"));
                        goods.setPrice(rs.getDouble("s_price"));
                        goods.setShowPicture(rs.getString("show_picture"));
                        goods.setSize(rs.getString("size"));
                        goods.setsID(rs.getString("s_id"));
                        goods.setStock(rs.getInt("stock"));
                        goods.setcID(rs.getString("c_id"));
                        orders.add(goods);
                    }
                    return null;
                }

            });
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public List<BsComStock> selectGoodsAll(String name) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_com_stock";
        List<BsComStock> orders=new ArrayList<>();
        try {
//            orders=qr.query(sql, new BeanListHandler<BsOrder>(BsOrder.class),uid);
            qr.query(sql, new ResultSetHandler<BsComStock>() {

                @Override
                public BsComStock handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        BsComStock goods=new BsComStock();
                        goods.setDescribe(rs.getString("s_describe"));
                        goods.setPrice(rs.getDouble("s_price"));
                        goods.setShowPicture(rs.getString("show_picture"));
                        goods.setSize(rs.getString("size"));
                        goods.setsID(rs.getString("s_id"));
                        goods.setStock(rs.getInt("stock"));
                        orders.add(goods);
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
