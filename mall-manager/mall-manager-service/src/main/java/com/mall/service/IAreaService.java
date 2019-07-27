package com.mall.service;

import com.mall.Area;

import java.sql.SQLException;
import java.util.List;

public interface IAreaService {
    public List<Area> findAreasByCid(int cid) throws SQLException;
    public Area findAreaByAid(int aid) throws SQLException;

}
