package com.mall.service.impl;

import com.mall.Area;
import com.mall.service.IAreaDao;
import com.mall.service.IAreaService;

import java.sql.SQLException;
import java.util.List;

public class AreaServiceImpl implements IAreaService {
    @Override
    public List<Area> findAreasByCid(int cid) throws SQLException {
        IAreaDao iAreaDao = new AreaDaoImpl();
        List<Area> areaList = iAreaDao.getAreasByCid(cid);
        return areaList;
    }

    @Override
    public Area findAreaByAid(int aid) throws SQLException {
        IAreaDao iAreaDao = new AreaDaoImpl();
        Area area = iAreaDao.selectAreaByAid(aid);
        return area;
    }
}
