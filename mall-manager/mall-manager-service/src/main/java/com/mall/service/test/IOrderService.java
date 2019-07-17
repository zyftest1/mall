package com.mall.service.test;



import com.mall.service.BsOrder;

import java.util.List;

public interface IOrderService {
    public List<BsOrder> selectAllOrderByUid(int uid);
}
