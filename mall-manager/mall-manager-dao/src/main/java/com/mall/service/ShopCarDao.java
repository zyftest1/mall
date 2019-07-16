package com.mall.service;

import java.sql.SQLException;
import java.util.List;

public interface ShopCarDao {
    public List<BsShoppingCar> selectShoppingCar(String ID) throws SQLException;
    void deleteShoppingCar(String carNumber);
    void updateShoppingCar(BsShoppingCar sCar) throws SQLException;
}
