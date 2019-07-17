package com.mall.service.impl;

import com.mall.service.BsUserAddress;
import com.mall.service.IUserAddressDao;
import com.utils.JdbcUtils;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IUserAddressDaoImpl implements IUserAddressDao {

    @Override
    public List<BsUserAddress> selectBsUserAddressByName(String name) {
//        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
//        String sql="select receiving_address,receiving_name,receiving_tel from bs_user_address where user_id = ?";
//        List<BsUserAddress> bsUserAddressList = null;
//        try {
//            qr.query(sql,new ResultSetHandler<List<BsUserAddress>>(){
//
//                @Override
//                public List<BsUserAddress> handle(ResultSet resultSet) throws SQLException {
//                    while (resultSet.next()){
//                        BsUserAddress bsUserAddress = new BsUserAddress();
//                        bsUserAddress.setID(resultSet.getInt("user_id"));
//                        bsUserAddress.setAddress(resultSet.getString("receiving_address"));
//                        bsUserAddress.setName(resultSet.getString("receiving_name"));
//                        bsUserAddress.setTel(resultSet.getString("receiving_tel"));
//                        bsUserAddressList.add(bsUserAddress);
//                    }
//                    return bsUserAddressList;
//
//                }
//            },ID);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//       return bsUserAddressList;

        Connection conn = JdbcUtils.getConnection();
//        String sql="select receiving_address,receiving_name,receiving_tel from bs_user_address where user_id = ?";
        String sql = "select * from bs_user_address where receiving_name = ?";
        PreparedStatement pstmt = null;
        ResultSet res=null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,name);
            res = pstmt.executeQuery();
            List<BsUserAddress> bsUserAddressList = new ArrayList<BsUserAddress>();
            while (res.next()){
                BsUserAddress bsUserAddress = new BsUserAddress();
                bsUserAddress.setAddID(res.getInt("add_id"));
                bsUserAddress.setID(res.getInt("user_id"));
                bsUserAddress.setAddress(res.getString("receiving_address"));
                bsUserAddress.setName(res.getString("receiving_name"));
                bsUserAddress.setTel(res.getString("receiving_tel"));
                bsUserAddressList.add(bsUserAddress);
            }
            return bsUserAddressList;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JdbcUtils.releaseSource(null,pstmt,conn);
        }
        return null;
    }

    @Override
    public BsUserAddress selestBsUserAddressByAddID(int addID) {
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql = "select * from bs_user_address where add_id = ?";
        BsUserAddress bsUserAddress = new BsUserAddress();
        try {
            qr.query(sql, new ResultSetHandler<BsUserAddress>() {

                @Override
                public BsUserAddress handle(ResultSet rs) throws SQLException {
                    while (rs.next()){
                        bsUserAddress.setAddID(rs.getInt("add_id"));
                        bsUserAddress.setID(rs.getInt("user_id"));
                        bsUserAddress.setAddress(rs.getString("receiving_address"));
                        bsUserAddress.setName(rs.getString("receiving_name"));
                        bsUserAddress.setTel(rs.getString("receiving_tel"));
                    }
                    return null;
                }
            },addID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bsUserAddress;

//        try {
//            qr.update(sql,bsUserAddress.getAddID(),bsUserAddress.getID(),bsUserAddress.getAddress(),bsUserAddress.getName(),bsUserAddress.getTel());
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return bsUserAddress;

    }


    @Override
    public void insertBsUserAddress(BsUserAddress bsUserAddress) {
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql = "insert into bs_user_address(user_id,receiving_address,receiving_name,receiving_tel) values(?,?,?,?)";

        try {
            qr.update(sql,100021,bsUserAddress.getAddress(),bsUserAddress.getName(),bsUserAddress.getTel());
        } catch (SQLException e) {
            e.printStackTrace();
        }

//        Connection conn = JdbcUtils.getConnection();
//        PreparedStatement pstmt = null;
//        String sql = "insert into bs_user_address(add_id,user_id,receiving_address,receiving_name,receiving_tel) values(?,?,?,?,?)";
//        try {
//            pstmt = conn.prepareStatement(sql);
//
//            pstmt.setString(1,bsUserAddress.getAddress());
//            pstmt.setString(2,bsUserAddress.getName());
//            pstmt.setString(3,bsUserAddress.getTel());
//            pstmt.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }finally {
//            JdbcUtils.releaseSource(null,pstmt,conn);
//        }

    }

    @Override
    public void deleteBsUserAddress(int addID) {
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql = "delete from bs_user_address where add_id=?";
        try {
            qr.update(sql,addID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateBsUserAddress(BsUserAddress bsUserAddress) {
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql = "update bs_user_address set receiving_address=?,receiving_name=?,receiving_tel=? where add_id=?";
        try {
            qr.update(sql,bsUserAddress.getAddress(),bsUserAddress.getName(),bsUserAddress.getTel(),bsUserAddress.getAddID());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
