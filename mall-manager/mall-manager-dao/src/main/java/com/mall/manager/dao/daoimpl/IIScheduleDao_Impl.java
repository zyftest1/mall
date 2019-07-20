package com.mall.manager.dao.daoimpl;




import com.mall.manager.dao.IScheduleDao;
import com.mall.manager.pojo.BS_schedule;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;


public class IIScheduleDao_Impl implements IScheduleDao {

    @Override
    public BS_schedule selectStateById(int sch_id) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_schedule where sch_id=?";
        BS_schedule bs_schedule=null;
        try {
        bs_schedule=qr.query(sql,new BeanHandler<BS_schedule>(BS_schedule.class),sch_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bs_schedule;
    }
}
