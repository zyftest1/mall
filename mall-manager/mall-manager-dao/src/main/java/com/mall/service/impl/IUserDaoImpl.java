package com.mall.service.impl;


import com.mall.service.BsUserAccount;
import com.mall.service.IUserDao;
import com.utils.JdbcUtils;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class IUserDaoImpl implements IUserDao {
    @Override
    public BsUserAccount selectBsUserAccountByName(String bsName) {
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_user_account where user_name=?";
        BsUserAccount bsUserAccount = new BsUserAccount();
        try {
            qr.query(sql, new ResultSetHandler<BsUserAccount>() {

                @Override
                public BsUserAccount handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        bsUserAccount.setID(rs.getInt("user_id"));
                        bsUserAccount.setBsName(rs.getString("user_name"));
                        bsUserAccount.setPassword(rs.getString("user_password"));
                    }
                    return null;
                }

            },bsName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bsUserAccount;
//		Emp emp=null;
//		try {
//			emp=qr.query(sql, new BeanHandler<Emp>(Emp.class),empno);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return emp;

//        Connection conn = JdbcUtils.getConnection();
//        // 创建sql语句的执行器
//        PreparedStatement pstmt  = null;
//        String sql="select * from bs_user_account where user_name=?";
//        BsUserAccount bsUserAccount = new BsUserAccount();
//        try {
//            pstmt =  conn.prepareStatement(sql);
//            pstmt.setString(1,bsName);
//            ResultSet res = pstmt.executeQuery();
//            while(res.next()) {
//                bsUserAccount.setID(res.getInt("user_id"));
//                bsUserAccount.setBsName(res.getString("user_name"));
//                bsUserAccount.setPassword(res.getString("user_password"));
//            }
//            return bsUserAccount;
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }finally {
//            JdbcUtils.releaseSource(null, pstmt, conn);
//        }
//        return null;
    }
}
