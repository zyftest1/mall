package com.mall.service.impl;

import com.mall.service.BsShoppingCar;
import com.mall.service.ShopCarDao;
import com.mall.service.ShoppingCarService;
import org.apache.commons.lang3.ObjectUtils;

import java.sql.SQLException;
import java.util.List;

public class ShpopingCarServiceImpl implements ShoppingCarService {

    @Override
    public List<BsShoppingCar> getShoppingCar(String ID) throws SQLException {
        ShopCarDao carDao = new ShopCarDaoImpl();
        List<BsShoppingCar> carList = null;
        carList = carDao.selectShoppingCar(ID);
        return carList;
    }
}
