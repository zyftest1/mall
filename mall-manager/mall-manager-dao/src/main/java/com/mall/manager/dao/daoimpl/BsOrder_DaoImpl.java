package com.mall.manager.dao.daoimpl;


import com.mall.common.utils.C3p0Utils;
import com.mall.manager.dao.IBsOrder_Dao;
import com.mall.manager.pojo.BS_order;
import com.mall.manager.pojo.BS_schedule;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;


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
    public BS_order selectByID(String o_id) {
        QueryRunner qr=new QueryRunner(C3p0Utils.getDataSourse());
        String sql = "select* from BS_order where id = ?";
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
