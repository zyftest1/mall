package com.mall.service.impl;

import com.mall.Area;
import com.mall.service.IAreaDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class AreaDaoImpl implements IAreaDao {
    @Override
    public List<Area> getAreasByCid(int cid) throws SQLException {
        String sql = "select * from areas where cityid = ?";
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());

        return qr.query(sql,new BeanListHandler<>(Area.class),cid);
    }

    @Override
    public Area selectAreaByAid(int aid) throws SQLException {
        String sql = "select * from areas where areaid = ?";
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        return  qr.query(sql,new BeanHandler<>(Area.class),aid);


    }
}
