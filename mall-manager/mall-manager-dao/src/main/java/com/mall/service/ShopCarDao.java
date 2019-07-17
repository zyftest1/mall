package com.mall.service;

import java.sql.SQLException;
import java.util.List;

public interface ShopCarDao {
    public List<BsShoppingCar> selectShoppingCar(String ID) throws SQLException;
    public void deleteShoppingCar(String carNumber);
    public void updateShoppingCar(BsShoppingCar sCar) throws SQLException;
}
