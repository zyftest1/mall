package com.mall.service.test.impl;

import com.mall.BsOrder;
import com.mall.service.test.IOrderDao;
import com.mall.service.test.IOrderService;

import java.util.List;

public class IOrderServiceImpl implements IOrderService {


    @Override
    public List<BsOrder> selectAllOrderByUid(int uid) {
        IOrderDao orderDao=new IOrderDaoImpl();
        return orderDao.selectAllOrderByUid(uid);
    }
}
