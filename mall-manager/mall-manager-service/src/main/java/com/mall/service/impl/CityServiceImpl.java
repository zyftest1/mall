package com.mall.service.impl;

import com.mall.City;
import com.mall.service.ICityDao;
import com.mall.service.ICityService;

import java.sql.SQLException;
import java.util.List;

public class CityServiceImpl implements ICityService {
    @Override
    public List<City> findCitiesByPid(int pid) throws SQLException {
        ICityDao cityDao = new CityDaoImpl();
        List<City> cityList = cityDao.getCitysByPid(pid);
        return cityList;
    }

    @Override
    public City findCityByCid(int cid) throws SQLException {
        ICityDao cityDao = new CityDaoImpl();
        City city = cityDao.selectCityByCid(cid);
        return city;
    }
}
