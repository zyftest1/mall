package com.mall.impl;

import com.mall.ComStock;
import com.mall.IComStockDao;

import com.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;


import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ComStockDaoImpl implements IComStockDao {
    @Override
    public void insertComStock(ComStock comstock) {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        String sql = "insert into bs_com_stock(s_id,c_id,color_id,size,stock,ware_id,s_price,s_describe) values(?,?,?,?,?,?,?,?)";
        try {
            qr.update(sql,comstock.getS_id(),comstock.getC_id(),comstock.getColor_id(),comstock.getSize(),comstock.getStock(),comstock.getWare_id(),comstock.getS_price(),comstock.getS_describe());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteComStockById(String s_id) {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        String sql = "delete from bs_com_stock where s_id=?";
        try {
            qr.update(sql,s_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void updateComStock(ComStock comtock) {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        String sql="update bs_com_stock set c_id=?,color_id=?,size=?,stock=?,ware_id=?,s_price=?,s_describe=? where s_id=?";
        try {
            qr.update(sql,comtock.getC_id(),comtock.getColor_id(),comtock.getSize(),comtock.getStock(),comtock.getWare_id(),comtock.getS_price(),comtock.getS_describe(),comtock.getS_id());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<ComStock> selectAll() {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        String sql = "select * from bs_com_stock";
        List<ComStock> comstock=null;
        try {
          comstock= qr.query(sql,new BeanListHandler<ComStock>(ComStock.class));
        } catch (SQLException e) {
            e.printStackTrace();
    }
        return comstock;
    }

    @Override
    public ComStock selectComStockById(String s_id) {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        String sql="select * from bs_com_stock where s_id=?";
        ComStock comStock=null;
        try {
             comStock=qr.query(sql,new BeanHandler<ComStock>(ComStock.class),s_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comStock;
    }
}
