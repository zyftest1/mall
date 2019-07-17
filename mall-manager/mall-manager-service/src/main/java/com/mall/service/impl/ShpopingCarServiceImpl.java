package com.mall.service.impl;

import com.mall.service.BsShoppingCar;
import com.mall.service.ShopCarDao;
import com.mall.service.ShoppingCarService;
import org.apache.commons.lang3.ObjectUtils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShpopingCarServiceImpl implements ShoppingCarService {

    @Override
    public List<BsShoppingCar> getShopCar(String ID) throws SQLException {
        ShopCarDao carDao = new ShopCarDaoImpl();
        List<BsShoppingCar> carList = new ArrayList<>();
        carList = carDao.selectShoppingCar(ID);
        return carList;
    }

    @Override
    public void deletaShopCar(String carNumber) {
        ShopCarDao carDao = new ShopCarDaoImpl();
        carDao.deleteShoppingCar(carNumber);
    }

    @Override
    public void updateShopCar(BsShoppingCar bsCar) throws SQLException {
        ShopCarDao carDao = new ShopCarDaoImpl();
        carDao.updateShoppingCar(bsCar);
    }
}
