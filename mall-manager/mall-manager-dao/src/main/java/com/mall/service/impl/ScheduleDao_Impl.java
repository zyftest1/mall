package com.mall.service.impl;

import com.mall.shitiClass.BS_schedule;
import com.malls.JDBCUtils;
import com.mall.service.scheduleDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ScheduleDao_Impl implements scheduleDao {
    @Override
    public List<BS_schedule> selectStateById(Integer user_ID) throws SQLException {
        Connection conn = JDBCUtils.getConnection();
        PreparedStatement pstmt = null;
        ArrayList List = new ArrayList();
        ResultSet resultSet = null;
        BS_schedule user_account = new BS_schedule();
//        ArrayList Li = new ArrayList();
        String sql = "select * from BS_schedule where sch_id = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, user_ID);
            resultSet = pstmt.executeQuery();

            while (resultSet.next()) {
                user_account.setSch_id(resultSet.getInt("sch_id"));
                user_account.setState(resultSet.getString("state"));
//                user_account.setSch_describe(resultSet.getString("sch_describe"));
//                user_account.setCs_content(resultSet.getString("cs_content"));
//                user_account.setCs_date(resultSet.getDate("cs_date"));
//                user_account.setEmail(resultSet.getString("email"));
//                Date createDate = resultSet.getDate("hiredate");
//                String createDateStr = "";
//                if ( createDate!= null) {
//                    createDateStr = createDate.toString();
//                }
//
//                user_account.setUser_createDate(createDate);
//                user_account.setUser_address(resultSet.getString("user_address"));
//                user_account.setComm(resultSet.getDouble("comm"));
//                user_account.setDeptno(resultSet.getInt("deptno"));
               List.add(user_account);
                return List;
            }

        } catch (SQLException var12) {
            var12.printStackTrace();
        } finally {
            JDBCUtils.releaseSource(resultSet, pstmt, conn);
        }

        return null;
    }
}
