package com.mall.manager.dao;



import com.mall.manager.pojo.BS_order;


import java.util.List;

public interface IBsOrder_Dao {
    public  List<BS_order> selectAll();
    public BS_order selectByID(String o_id);
    public void oUpdate(BS_order order);
}
