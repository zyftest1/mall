package com.mall.service;

import com.mall.Province;

import java.sql.SQLException;
import java.util.List;

public interface IProvinceService {
    public List<Province> findProvinces() throws SQLException;

    public Province findProvinceByPid(int pid) throws SQLException;
}
