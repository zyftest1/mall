package com.mall.service.impl;

import com.mall.service.BsShoppingCar;
import com.mall.service.ShopCarDao;
import com.utils.DateFormat;
import com.utils.JdbcUtils;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.StatementConfiguration;
import org.apache.commons.dbutils.handlers.ArrayListHandler;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.utils.JdbcUtils.*;

public class ShopCarDaoImpl implements ShopCarDao {

    @Override
    public List<BsShoppingCar> selectShoppingCar(int ID) {
        List<BsShoppingCar> sList = new ArrayList<>();
        BsShoppingCar[] bCar = new BsShoppingCar[200];
        QueryRunner run = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql = "select * from bs_shopping_car where user_id ="+ID;
        try {
            run.query(sql, new ResultSetHandler<List<BsShoppingCar>>() {
                @Override
                public List<BsShoppingCar> handle(ResultSet rs) throws SQLException {
                    while (rs.next()) {
                        int i = 0;
                        bCar[i] = new BsShoppingCar();
                        bCar[i].setCarID(rs.getInt("car_id"));
                        bCar[i].setID(rs.getInt("user_id"));
                        bCar[i].setBsName(rs.getString("user_name"));
                        bCar[i].setsID(rs.getString("s_id"));
                        bCar[i].setPrice(rs.getDouble("price"));
                        bCar[i].setQuantity(rs.getInt("quantity"));
                        bCar[i].setColor(rs.getString("color"));
                        bCar[i].setSize(rs.getString("size"));
                        bCar[i].setDescribe(rs.getString("car_describe"));
                        bCar[i].setDate(rs.getDate("car_date"));
                        bCar[i].setPicture(rs.getString("car_picture"));
                        bCar[i].setAddID(rs.getString("add_id"));
                        bCar[i].setAddress(rs.getString("address"));
                        sList.add(bCar[i]);
                        i = i + 1;
                    }
                    return sList;
                }
            });
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sList;
    }

    @Override
    public void deleteShoppingCar(int carID) {
        QueryRunner run = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="delete from bs_shopping_car where car_id=" + carID;
        try {
            run.update(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void insertShoppingCar(BsShoppingCar sCar) throws SQLException {
        QueryRunner run = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql = "insert into bs_shopping_car(user_id,user_name,s_id,price,size,car_describe,car_date,car_picture,quantity) values(?,?,?,?,?,?,?,?,?)";
        Object[] params = {sCar.getID(), sCar.getBsName(), sCar.getsID(), sCar.getPrice(),  sCar.getSize(), sCar.getDescribe(), DateFormat.nowTime(), sCar.getPicture(),sCar.getQuantity()};
        run.update(sql, params);
//        try (Connection conn = getConnection()) {
//            PreparedStatement stmt = null;
//            String sql = "update bs_shopping_car set car_id=?,user_id=?,user_name=?,s_id=?,price=?,quantity=?,color=?,size=?,car_describe=?,car_date=?,car_picture=?,add_id=?,address=?";
//            try {
//                stmt = conn.prepareStatement(sql);
//                stmt.setString(1, sCar.getCarID());
//                stmt.setInt(2, sCar.getID());
//                stmt.setString(3, sCar.getBsName());
//                stmt.setString(4, sCar.getsID());
//                stmt.setDouble(5, sCar.getPrice());
//                stmt.setInt(6, sCar.getQuantity());
//                stmt.setString(7, sCar.getColor());
//                stmt.setString(8, sCar.getSize());
//                stmt.setString(9, sCar.getDescribe());
//                stmt.setDate(10, sCar.getDate());
//                stmt.setString(11, sCar.getPicture());
//                stmt.setString(12, sCar.getAddID());
//                stmt.setString(13, sCar.getAddress());
//                stmt.executeUpdate();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            } finally {
//                releaseSource(null, stmt, conn);
//            }
//        }
    }
}
