package com.mall.service;

import com.mall.shitiClass.BS_schedule;

import java.sql.SQLException;
import java.util.List;

public interface scheduleDao {

    List<BS_schedule> selectStateById(Integer user_ID) throws SQLException;
}
