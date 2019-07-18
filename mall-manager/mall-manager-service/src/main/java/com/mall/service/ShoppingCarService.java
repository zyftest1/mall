package com.mall.service;

import java.sql.SQLException;
import java.util.List;

public interface ShoppingCarService {
    public List<BsShoppingCar> getShopCar(int ID) throws SQLException;

    public void deletaShopCar(int carID);

    public void insertShopCar(BsShoppingCar bsCar) throws SQLException;
}
