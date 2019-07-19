package com.mall.impl.stock;

import com.mall.stock.ComColor;
import com.mall.stock.IComColorDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
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
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
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
    public ComColor selectColorById(String color_id) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_com_color where color_id=?";
        ComColor comColor=null;
        try {
         comColor =qr.query(sql,new BeanHandler<ComColor>(ComColor.class),color_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return comColor;
    }
}
