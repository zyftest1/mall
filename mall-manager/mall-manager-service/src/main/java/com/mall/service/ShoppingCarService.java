package com.mall.service;

import java.sql.SQLException;
import java.util.List;

public interface ShoppingCarService {
    List<BsShoppingCar> getShoppingCar(String ID) throws SQLException;
}
