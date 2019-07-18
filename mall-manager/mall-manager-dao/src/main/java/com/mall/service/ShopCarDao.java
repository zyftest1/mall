package com.mall.service;

import java.sql.SQLException;
import java.util.List;

public interface ShopCarDao {
    public List<BsShoppingCar> selectShoppingCar(int ID) throws SQLException;

    public void deleteShoppingCar(int carID);

    public void insertShoppingCar(BsShoppingCar sCar) throws SQLException;
}
