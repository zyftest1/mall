package com.mall.service.impl;

import com.mall.BS_order;
import com.mall.service.OrderService;
import com.mall.service.bsOrder_Dao;

import java.sql.SQLException;
import java.util.List;

public class OrderService_Impl implements OrderService {
    @Override
    public List<BS_order> queryAll() throws SQLException {
        bsOrder_Dao dao = new bsOrder_DaoImpl();
        List<BS_order> list = dao.selectAll();
        return list;
    }
}
