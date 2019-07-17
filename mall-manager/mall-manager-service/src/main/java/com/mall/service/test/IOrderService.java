package com.mall.service.test;

import com.mall.BsOrder;

import java.util.List;

public interface IOrderService {
    public List<BsOrder> selectAllOrderByUid(int uid);
}
