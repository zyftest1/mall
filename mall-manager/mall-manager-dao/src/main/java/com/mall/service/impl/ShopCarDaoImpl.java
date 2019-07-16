package com.mall.service.impl;

import com.mall.service.BsShoppingCar;
import com.mall.service.ShopCarDao;
import com.utils.JdbcUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ShopCarDaoImpl implements ShopCarDao {

    @Override
    public List<BsShoppingCar> selectShoppingCar(String ID) {
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet res = null;
        List<BsShoppingCar> slist = null;
        BsShoppingCar bCar;
        try {
            con = JdbcUtils.getConnection();
            String sql = String.format("select * from bs_shopping_car c where c.carID = '%s'", ID);
            stmt = con.prepareStatement(sql);
            res = stmt.executeQuery();
            while(res.next()) {
                bCar = new BsShoppingCar();
                bCar.setCarID(res.getString("car_id"));
                bCar.setID(res.getInt("user_id"));
                bCar.setBsName(res.getString("user_name"));
                bCar.setsID(res.getString("s_id"));
                bCar.setPrice(res.getDouble("price"));
                bCar.setQuantity(res.getInt("quantity"));
                bCar.setColor(res.getString("color"));
                bCar.setSize(res.getString("size"));
                bCar.setDescribe(res.getString("car_describe"));
                bCar.setDate(res.getDate("car_date"));
                bCar.setPicture(res.getString("car_picture"));
                bCar.setAddID(res.getString("add_id"));
                bCar.setAddress(res.getString("address"));
                slist.add(bCar);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.releaseSource(res, stmt, con);
        }
        return slist;
    }

    @Override
    public void deleteShoppingCar(String carNumber) {
        Connection con = JdbcUtils.getConnection();
        String sql="delete from bs_shopping_car where car_id=?";
        PreparedStatement stmt=null;
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, carNumber);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.releaseSource(null, stmt, con);
        }
    }

    @Override
    public void updateShoppingCar(BsShoppingCar sCar) throws SQLException {
        try (Connection conn = JdbcUtils.getConnection()) {
            PreparedStatement stmt = null;
            String sql = "update bs_shopping_car set car_id=?,user_id=?,user_name=?,s_id=?,price=?,quantity=?,color=?,size=?,car_describe=?,car_date=?,car_picture=?,add_id=?,address=?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, sCar.getCarID());
                stmt.setInt(2, sCar.getID());
                stmt.setString(3, sCar.getBsName());
                stmt.setString(4, sCar.getsID());
                stmt.setDouble(5, sCar.getPrice());
                stmt.setInt(6, sCar.getQuantity());
                stmt.setString(7, sCar.getColor());
                stmt.setString(8, sCar.getSize());
                stmt.setString(9, sCar.getDescribe());
                stmt.setDate(10, sCar.getDate());
                stmt.setString(11, sCar.getPicture());
                stmt.setString(12, sCar.getAddID());
                stmt.setString(13, sCar.getAddress());
                stmt.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                JdbcUtils.releaseSource(null, stmt, conn);
            }
        }
    }
}
