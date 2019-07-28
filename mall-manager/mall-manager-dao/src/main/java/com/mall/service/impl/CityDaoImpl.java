package com.mall.service.impl;

import com.mall.City;
import com.mall.service.ICityDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CityDaoImpl implements ICityDao {
    @Override
    public List<City> getCitysByPid(int pid) throws SQLException {
        String sql = "select * from cities where provinceid = ? ";
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());

        return qr.query(sql,new BeanListHandler<>(City.class),pid);

    }

    @Override
    public City selectCityByCid(int cid) throws SQLException {
        String sql = "select * from cities where cityid = ?";
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());

        return qr.query(sql,new BeanHandler<>(City.class),cid);
    }
}
