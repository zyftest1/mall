package com.mall.service.impl;

import com.mall.BS_customer_Service;
import com.mall.JDBCUtils;
import com.mall.service.customer_reply;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class customerReply_Impl implements customer_reply {

    @Override
    public List<BS_customer_Service> selectAll() {
        Connection conn = null;
        Statement statement = null;
        ResultSet resultSet = null;
        BS_customer_Service bs = null;
        ArrayList List = new ArrayList();

        try {
            conn = JDBCUtils.getConnection();
            statement = conn.createStatement();
            String sql = "select * from BS_customer_Service";
            resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                bs = new BS_customer_Service();
                bs.setUser_ID(resultSet.getInt("user_ID"));
                bs.setUser_name(resultSet.getString("user_name"));
                bs.setCs_content(resultSet.getString("cs_content"));
                bs.setCs_ID(resultSet.getString("cs_ID"));
                Date date = resultSet.getDate("cs_date");
                String createDateStr = "";
                if (date != null) {
                    createDateStr = date.toString();
                }

                bs.setCs_date(date);
//                bs.setName(resultSet.getString("name"));
//                bs.setAddress(resultSet.getString("address"));
//                user_account.setDeptno(resultSet.getInt("deptno"));
                List.add(bs);
            }
        } catch (SQLException var9) {
            var9.printStackTrace();
        }
        JDBCUtils.releaseSource(resultSet, statement, conn);
        return List;
    }

    @Override
    public void updateList(BS_customer_Service customer) throws SQLException {
        Connection conn = JDBCUtils.getConnection(); //获取连接
        PreparedStatement pstmt = null;
//        BS_user_account bs = new BS_user_account();
        String sql = "update BS_customer_Service set cs_id=? where user_ID = ?";

        try {
            pstmt = conn.prepareStatement(sql);
//            System.out.println("333:"+bs.getUser_address());
            pstmt.setString(1, customer.getCs_ID());  //设置参数
//            pstmt.setString(2, customer.getUser_email());
//            pstmt.setString(3, customer.getUser_tel());
//            pstmt.setString(4, customer.getUser_address());
            pstmt.setInt(2,customer.getUser_ID());
//            pstmt.setDate(5, (Date) bs.getCreateDate());
//            pstmt.setInt(6, BS_user_account.getDeptno());
//            pstmt.setInt(7, BS_user_account.getEmpNo());
            pstmt.executeUpdate();
        } catch (SQLException var9) {
            var9.printStackTrace();
        } finally {
            JDBCUtils.releaseSource((ResultSet)null, pstmt, conn);
        }
    }

    @Override
    public BS_customer_Service selectCustomerById(Integer user_ID) throws SQLException {
        Connection conn = JDBCUtils.getConnection();
        PreparedStatement pstmt = null;
        ResultSet resultSet = null;
        BS_customer_Service user_account = new BS_customer_Service();
        ArrayList Li = new ArrayList();
        String sql = "select * from BS_customer_Service where user_ID = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, user_ID);
            resultSet = pstmt.executeQuery();

            while (resultSet.next()) {
                user_account.setUser_ID(resultSet.getInt("user_ID"));
                user_account.setCs_ID(resultSet.getString("cs_ID"));
                user_account.setUser_name(resultSet.getString("user_name"));
                user_account.setCs_content(resultSet.getString("cs_content"));
                user_account.setCs_date(resultSet.getDate("cs_date"));
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
                return user_account;
            }

        } catch (SQLException var12) {
            var12.printStackTrace();
        } finally {
            JDBCUtils.releaseSource(resultSet, pstmt, conn);
        }

        return null;
    }
    }

