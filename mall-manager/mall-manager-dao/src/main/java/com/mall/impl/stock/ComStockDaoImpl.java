package com.mall.impl.stock;

import com.mall.stock.ComStock;
import com.mall.stock.IComStockDao;

import com.mall.stock.PageBean;
import com.utils.JdbcUtils;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;


import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class ComStockDaoImpl implements IComStockDao {
    @Override
    public void insertComStock(ComStock comstock) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql = "insert into bs_com_stock(s_id,c_id,color_id,size,stock,ware_id,s_price,s_describe) values(?,?,?,?,?,?,?,?)";
        try {
            qr.update(sql,comstock.getS_id(),comstock.getC_id(),comstock.getColor_id(),comstock.getSize(),comstock.getStock(),comstock.getWare_id(),comstock.getS_price(),comstock.getS_describe());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteComStockById(String s_id) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql = "delete from bs_com_stock where s_id=?";
        try {
            qr.update(sql,s_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void updateComStock(ComStock comtock) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="update bs_com_stock set c_id=? ,color_id=?,size=?,stock=?,ware_id=?,s_price=?,s_describe=? where s_id=?";
        try {
            qr.update(sql, comtock.getC_id(),comtock.getColor_id(),comtock.getSize(), comtock.getStock(),comtock.getWare_id(), comtock.getS_price(),comtock.getS_describe(), comtock.getS_id());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void selectAll(PageBean<ComStock> pageBean) {
        //查询总记录数，并设置保存到pageBean对象中
        int totalCount=getTotalCount();
        pageBean.setTotalCount(totalCount);
        /*
        * 如果当前页<=0，当前页设置为1，如果当前页>最大页数，当前页设置为最大页数
        * */

        if (pageBean.getCurrentPage()<=0){
            pageBean.setCurrentPage(1);
        }else if(pageBean.getCurrentPage()>pageBean.getTotalPage()){
            pageBean.setCurrentPage(pageBean.getTotalPage());
        }
        //获取当前页：计算查询的起始行、返回行数
        int currentPage=pageBean.getCurrentPage();
        int index=(currentPage-1)*pageBean.getPageCount();
        int count=pageBean.getPageCount();
        String sql="select * from bs_com_stock limit ?,?";
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        try {
            List<ComStock> list =qr.query(sql,new BeanListHandler<ComStock>(ComStock.class),index,count);
            pageBean.setList(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }


    @Override
    public ComStock selectComStockById(String s_id) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_com_stock where s_id=?";
        ComStock comStock=null;
        try {
             comStock=qr.query(sql,new BeanHandler<ComStock>(ComStock.class),s_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comStock;
    }

    @Override
    public int getTotalCount() {
        String sql="select count(*) from bs_com_stock";
QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        try {
            Long count =qr.query(sql,new ScalarHandler<Long>());
            return count.intValue();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
