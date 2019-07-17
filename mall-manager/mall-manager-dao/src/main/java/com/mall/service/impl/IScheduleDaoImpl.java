package com.mall.service.impl;

import com.mall.service.BsComStock;
import com.mall.service.BsSchedule;
import com.mall.service.IScheduleDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;

public class IScheduleDaoImpl implements IScheduleDao {
    @Override
    public String selectDescribeBySchId(int schId) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select state from bs_schedule where sch_id=?";
        BsSchedule stock = new BsSchedule();
        try {
            qr.query(sql, new ResultSetHandler<BsComStock>() {

                @Override
                public BsComStock handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        stock.setDescribe(rs.getString("state"));
                    }
                    return null;
                }

            },schId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stock.getDescribe();
    }
}
