package com.mall.service;

import com.mall.Province;

import java.sql.SQLException;
import java.util.List;

public interface IProvinceDao {
    List<Province> getProvinces() throws SQLException;
    Province selectProvinceByPid(int pid) throws SQLException;
}
