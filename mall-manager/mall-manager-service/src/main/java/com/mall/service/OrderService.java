package com.mall.service;

import com.mall.BS_order;

import java.sql.SQLException;
import java.util.List;

public interface OrderService {
    //查询所有的List
    public List<BS_order> queryAll() throws SQLException;
}
