package com.mall.service;


import com.mall.shitiClass.BS_schedule;

import java.sql.SQLException;
import java.util.List;

public interface StateService {

    //查询数据，根据id
    public List<BS_schedule> queryListById(Integer sch_id) throws SQLException;

}
