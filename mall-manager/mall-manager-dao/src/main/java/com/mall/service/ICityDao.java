package com.mall.service;

import com.mall.City;

import java.sql.SQLException;
import java.util.List;

public interface ICityDao {
    public List<City> getCitysByPid(int pid) throws SQLException;

    public City selectCityByCid(int cid) throws SQLException;

}
