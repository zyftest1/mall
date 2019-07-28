package com.mall.manager.dao;



import com.mall.manager.pojo.BS_order;
import com.mall.stock.PageBean;
import com.mysql.cj.x.protobuf.MysqlxCrud;


import java.util.List;

public interface IBsOrder_Dao {
    public  List<BS_order> selectAll();
    public void getAll(PageBean<BS_order> pageBean);
    public int getTotalCount();
    public BS_order selectByID(String o_id);
    public void oUpdate(BS_order order);
}
