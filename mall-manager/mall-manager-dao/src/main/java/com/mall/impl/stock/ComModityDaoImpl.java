package com.mall.impl.stock;

import com.mall.stock.ComModity;
import com.mall.stock.IComModityDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ComModityDaoImpl implements IComModityDao {
    @Override
    public List<ComModity> selectAll() {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_commodity";
        List<ComModity> comModityList=null;
        try {
           comModityList=qr.query(sql,new BeanListHandler<ComModity>(ComModity.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comModityList;
    }

    @Override
    public ComModity selectById(String c_id) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select c_id, c_describe from bs_commodity where c_id=?";
        ComModity comModity=null;
        try {
           comModity=qr.query(sql,new BeanHandler<ComModity>(ComModity.class),c_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return comModity;
    }
}
