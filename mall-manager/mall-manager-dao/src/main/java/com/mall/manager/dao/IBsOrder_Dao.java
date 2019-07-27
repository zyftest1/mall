package com.mall.manager.dao;



import com.mall.manager.pojo.BS_order;
import com.mall.stock.PageBean;


import java.util.List;

public interface IBsOrder_Dao {
     List<BS_order> selectAll();
     BS_order selectByID(String o_id);
     void oUpdate(BS_order order);
     void selectAll(PageBean<BS_order> pageBean);
     int getTotalCount();
}
