package com.mall.service.impl;


import com.mall.service.BsOrder;
import com.mall.service.IOrderDao;
import com.mall.service.IOrderService;

import java.util.List;

public class IOrderServiceImpl implements IOrderService {


    @Override
    public List<BsOrder> selectAllOrderByUid(int uid) {
        IOrderDao orderDao=new IOrderDaoImpl();
        return orderDao.selectAllOrderByUid(uid);
    }
}
