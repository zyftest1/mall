package com.mall.service;

import com.mall.City;

import java.sql.SQLException;
import java.util.List;

public interface ICityService {
    public List<City> findCitiesByPid(int pid) throws SQLException;
    public City findCityByCid(int cid) throws SQLException;
}
