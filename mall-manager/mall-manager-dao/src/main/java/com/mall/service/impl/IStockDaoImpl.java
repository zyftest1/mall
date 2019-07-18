package com.mall.service.impl;

import com.mall.service.BsComStock;
import com.mall.service.BsShoppingCar;
import com.mall.service.IStockDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IStockDaoImpl implements IStockDao {
    @Override
    public String selectGoodsNameById(String id) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select s_describe from bs_com_stock where s_id=?";
        BsComStock stock = new BsComStock();
        try {
            qr.query(sql, new ResultSetHandler<BsComStock>() {

                @Override
                public BsComStock handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        stock.setDescribe(rs.getString("s_describe"));
                    }
                    return null;
                }

            },id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stock.getDescribe();
    }

    @Override
    public List<BsComStock> selectIndexGoods() {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_com_stock";
        List<BsComStock> stock = new ArrayList<>();
        try {
            qr.query(sql, new ResultSetHandler<BsComStock>() {

                @Override
                public BsComStock handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        BsComStock bsComStock=new BsComStock();
                        bsComStock.setsID(rs.getString("s_id"));
                        bsComStock.setDescribe(rs.getString("s_describe"));
                        bsComStock.setPrice(rs.getDouble("s_price"));
                        bsComStock.setShowPicture(rs.getString("show_picture"));
                        bsComStock.setSize(rs.getString("size"));
                        bsComStock.setcID(rs.getString("c_id"));
                        stock.add(bsComStock);
                    }
                    return null;
                }

            });
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stock;
    }

    @Override
    public List<String> selectCId() {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select distinct(c_id) from bs_com_stock";
        List<String> stock = new ArrayList<>();
        try {
            qr.query(sql, new ResultSetHandler<BsComStock>() {

                @Override
                public BsComStock handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        stock.add(rs.getString("c_id"));
                    }
                    return null;
                }

            });
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stock;
    }

    @Override
    public String selectImgUrl(String c_id) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select show_picture from bs_com_stock where c_id=?";
        BsComStock stock = new BsComStock();
        try {
            qr.query(sql, new ResultSetHandler<String >() {

                @Override
                public String  handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        stock.setShowPicture(rs.getString("show_picture"));
                    }
                    return null;
                }

            },c_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stock.getShowPicture();
    }

    @Override
    public BsComStock selectOneGoodsById(String s_id) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_com_stock where s_id=?";
        BsComStock stock = new BsComStock();

        try {
            qr.query(sql, new ResultSetHandler<BsComStock>() {

                @Override
                public BsComStock  handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {

                        stock.setShowPicture(rs.getString("show_picture"));
                        stock.setsID(rs.getString("s_id"));
                        stock.setDescribe(rs.getString("s_describe"));
                        stock.setPrice(rs.getDouble("s_price"));
                        stock.setShowPicture(rs.getString("show_picture"));
                        stock.setSize(rs.getString("size"));
                        stock.setcID(rs.getString("c_id"));
                        stock.setStock(rs.getInt("stock"));
                    }
                    return null;
                }

            },s_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stock;
    }

    @Override
    public List<BsComStock> selectGoodsByCID(String c_id) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_com_stock where c_id=?";
        List<BsComStock> stock = new ArrayList<>();
        try {
            qr.query(sql, new ResultSetHandler<BsComStock>() {

                @Override
                public BsComStock handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        BsComStock bsComStock=new BsComStock();
                        bsComStock.setsID(rs.getString("s_id"));
                        bsComStock.setDescribe(rs.getString("s_describe"));
                        bsComStock.setPrice(rs.getDouble("s_price"));
                        bsComStock.setShowPicture(rs.getString("show_picture"));
                        bsComStock.setSize(rs.getString("size"));
                        bsComStock.setcID(rs.getString("c_id"));
                        stock.add(bsComStock);
                    }
                    return null;
                }

            },c_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stock;
    }

    @Override
    public BsComStock selectGoodsByCIDAndSize(String c_id,String size) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_com_stock where c_id=? and size=?";
        BsComStock bsComStock = new BsComStock();
        try {
            qr.query(sql, new ResultSetHandler<BsComStock>() {

                @Override
                public BsComStock handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        bsComStock.setsID(rs.getString("s_id"));
                        bsComStock.setDescribe(rs.getString("s_describe"));
                        bsComStock.setPrice(rs.getDouble("s_price"));
                        bsComStock.setShowPicture(rs.getString("show_picture"));
                        bsComStock.setSize(rs.getString("size"));
                        bsComStock.setcID(rs.getString("c_id"));
                        bsComStock.setStock(rs.getInt("stock"));
                    }
                    return null;
                }
            },c_id,size);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bsComStock;
    }
}
