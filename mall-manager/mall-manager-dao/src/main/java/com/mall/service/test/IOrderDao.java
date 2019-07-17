package com.mall.service.test;

import com.mall.BsOrder;

import java.util.List;

public interface IOrderDao {
    //全部订单
    public List<BsOrder> selectAllOrderByUid(int uid);
    //待收货订单
    public List<BsOrder> selectUnreceiveOrderByUid(int uid);
    //待评价订单
    public List<BsOrder> selectUnEvaluateOrderByUid(int uid);

}
