package com.mall.impl;

import com.mall.ComSize;
import com.mall.IComSizeDao;
import com.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ComSizeDaoImpl implements IComSizeDao {
    @Override
    public List<ComSize> selectAll() {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        String sql="select * from bs_com_size";
        List<ComSize> comSizeList=null;
        try {
            comSizeList=qr.query(sql,new BeanListHandler<ComSize>(ComSize.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comSizeList;
    }
}
