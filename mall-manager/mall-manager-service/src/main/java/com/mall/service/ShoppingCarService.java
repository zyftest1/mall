package com.mall.service;

import java.sql.SQLException;
import java.util.List;

public interface ShoppingCarService {
    public List<BsShoppingCar> getShopCar(String ID) throws SQLException;
    public void deletaShopCar(String carNumber);
    public void updateShopCar(BsShoppingCar bsCar) throws SQLException;
}
