package com.mall.service;

import com.mall.Area;

import java.sql.SQLException;
import java.util.List;

public interface IAreaDao {
    public List<Area> getAreasByCid(int cid) throws SQLException;

    public Area selectAreaByAid(int aid) throws SQLException;
}
