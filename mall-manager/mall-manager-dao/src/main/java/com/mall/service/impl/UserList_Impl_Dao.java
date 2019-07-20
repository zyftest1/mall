package com.mall.service.impl;


import com.mall.shitiClass.BS_user_account;
import com.malls.JDBCUtils;
import com.mall.service.UserList_Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserList_Impl_Dao implements UserList_Dao {
    @Override
    public void deleteListById(Integer user_ID) throws SQLException {
        Connection conn = JDBCUtils.getConnection();  //创建连接
        PreparedStatement pstmt = null;
        String sql = "delete from BS_user_account where user_ID = ?";  //sql删除语句

        try {
            pstmt = conn.prepareStatement(sql);//执行SQL语句
            pstmt.setInt(1, user_ID);//设置参数
            pstmt.executeUpdate();
        } catch (SQLException var9) {
            var9.printStackTrace();
        } finally {
            JDBCUtils.releaseSource((ResultSet)null, pstmt, conn);//释放资源
        }
    }

    @Override
    public void updateList(BS_user_account bs) throws SQLException {
        Connection conn = JDBCUtils.getConnection(); //获取连接
        PreparedStatement pstmt = null;
//        BS_user_account bs = new BS_user_account();
        String sql = "update bs_user_account set user_name =?,user_email =?,user_tel =?,user_address=? where user_ID = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            System.out.println("333:"+bs.getUser_address());
            pstmt.setString(1, bs.getUser_name());  //设置参数
            pstmt.setString(2, bs.getUser_email());
            pstmt.setString(3, bs.getUser_tel());
            pstmt.setString(4, bs.getUser_address());
            pstmt.setInt(5,bs.getUser_ID());
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
    public BS_user_account selectUserById(Integer user_ID) throws SQLException {
        Connection conn = JDBCUtils.getConnection();
        PreparedStatement pstmt = null;
        ResultSet resultSet = null;
        BS_user_account user_account = new BS_user_account();
        ArrayList Li = new ArrayList();
        String sql = "select * from BS_user_account where user_ID = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, user_ID);
            resultSet = pstmt.executeQuery();

            while (resultSet.next()) {
                user_account.setUser_ID(resultSet.getInt("user_ID"));
                user_account.setUser_name(resultSet.getString("user_name"));
                user_account.setUser_email(resultSet.getString("user_email"));
                user_account.setUser_tel(resultSet.getString("user_tel"));
//                user_account.setCreateDate(resultSet.getDate("createDate"));
//                user_account.setEmail(resultSet.getString("email"));
//                Date createDate = resultSet.getDate("hiredate");
//                String createDateStr = "";
//                if ( createDate!= null) {
//                    createDateStr = createDate.toString();
//                }
//
//                user_account.setUser_createDate(createDate);
                user_account.setUser_address(resultSet.getString("user_address"));
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

    @Override
    public List<BS_user_account> selectAll() {
        Connection conn = null;
        Statement statement = null;
        ResultSet resultSet = null;
        BS_user_account bs = null;
        ArrayList List = new ArrayList();

        try {
            conn = JDBCUtils.getConnection();
            statement = conn.createStatement();
            String sql = "select * from BS_user_account";
            resultSet = statement.executeQuery(sql);

            while(resultSet.next()) {
                bs = new BS_user_account();
                bs.setUser_ID(resultSet.getInt("user_ID"));
                bs.setUser_name(resultSet.getString("user_name"));
                bs.setUser_email(resultSet.getString("user_email"));
                bs.setUser_tel(resultSet.getString("user_tel"));
                Date createDate = resultSet.getDate("user_create_Date");
                String createDateStr = "";
                if (createDate != null) {
                    createDateStr = createDate.toString();
                }

                bs.setUser_createDate(createDate);
                bs.setUser_true_name(resultSet.getString("user_true_name"));
                bs.setUser_address(resultSet.getString("user_address"));
//                user_account.setDeptno(resultSet.getInt("deptno"));
                List.add(bs);
            }
        } catch (SQLException var9) {
            var9.printStackTrace();
        }

        JDBCUtils.releaseSource(resultSet, statement, conn);
        return List;
    }
    }

