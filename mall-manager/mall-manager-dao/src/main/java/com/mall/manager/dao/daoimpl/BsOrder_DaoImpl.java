package com.mall.manager.dao.daoimpl;


import com.mall.common.utils.C3p0Utils;
import com.mall.manager.dao.IBsOrder_Dao;
import com.mall.manager.pojo.BS_order;
import com.mall.manager.pojo.BS_schedule;
import com.mall.stock.ComStock;
import com.mall.stock.PageBean;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;


import java.sql.SQLException;

import java.util.List;

public class BsOrder_DaoImpl implements IBsOrder_Dao {


    @Override
    public List<BS_order> selectAll() {
        QueryRunner qr=new QueryRunner(C3p0Utils.getDataSourse());
        String sql="select * from bs_order";
        List<BS_order> bs_order=null;
        try {
          bs_order=qr.query(sql,new BeanListHandler<BS_order>(BS_order.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bs_order;
    }

    @Override
    public void getAll(PageBean<BS_order> pageBean) {

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
        String sql="select * from BS_order limit ?,?";
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        try {
            List<BS_order> list =qr.query(sql,new BeanListHandler<BS_order>(BS_order.class),index,count);
            pageBean.setList(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int getTotalCount() {
        String sql="select count(*) from BS_order";
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        try {
            Long count =qr.query(sql,new ScalarHandler<Long>());
            return count.intValue();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }


    @Override
    public BS_order selectByID(String o_id) {
        QueryRunner qr=new QueryRunner(C3p0Utils.getDataSourse());
        String sql = "select* from BS_order where o_id = ?";
        BS_order bs_order = new BS_order();
        try {
            bs_order = qr.query(sql,new BeanHandler<BS_order>(BS_order.class),o_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bs_order;
    }

    @Override
    public void oUpdate(BS_order order) {
        QueryRunner qr = new QueryRunner(C3p0Utils.getDataSourse());
        String sql = "update BS_order set sch_id = ? where o_id = ?";
        try {
            qr.update(sql,order.getSch_id(),order.getO_id());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
