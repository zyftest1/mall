package com.mall.impl;

import com.mall.ComColor;
import com.mall.IComColorDao;
import com.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ComColorDaoImpl implements IComColorDao {
    @Override
    public void insertColor(ComColor comcolor) {

    }

    @Override
    public void deleteComColorById(String colorID) {

    }

    @Override
    public void updateComColor(ComColor comcolor) {

    }

    @Override
    public List<ComColor> selectAll() {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        String sql="select * from bs_com_color";
        List<ComColor> colorList=null;
        try {
           colorList= qr.query(sql,new BeanListHandler<ComColor>(ComColor.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return colorList;
    }

    @Override
    public ComColor selectColorById(String colorID) {
        return null;
    }
}
