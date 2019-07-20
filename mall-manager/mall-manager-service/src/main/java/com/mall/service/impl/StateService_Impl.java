package com.mall.service.impl;


import com.mall.service.StateService;
import com.mall.service.scheduleDao;
import com.mall.shitiClass.BS_schedule;

import java.sql.SQLException;
import java.util.List;

public class StateService_Impl implements StateService {
    @Override
    public List<BS_schedule> queryListById(Integer sch_id) throws SQLException {
        scheduleDao sf = new ScheduleDao_Impl();
        List<BS_schedule> df =sf.selectStateById(sch_id);
        return df;
    }
}
