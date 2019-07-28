package com.mall.service.impl;

import com.mall.Province;
import com.mall.service.IProvinceDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ProvinceDaoImpl implements IProvinceDao {
    @Override
    public List<Province> getProvinces() throws SQLException {
        String sql = "select * from provinces";
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());

        return qr.query(sql,new BeanListHandler<>(Province.class));

    }

    @Override
    public Province selectProvinceByPid(int pid) throws SQLException {
        String sql = "select * from provinces where provinceid = ?";
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        return qr.query(sql,new BeanHandler<>(Province.class),pid);
    }
}
