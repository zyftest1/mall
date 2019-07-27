package com.mall.manager.service;

import com.mall.manager.pojo.BS_order;
import com.mall.stock.ComStock;
import com.mall.stock.PageBean;

import java.util.List;

public interface IOrderService {
    public void orderCommit(BS_order bs_order, ComStock stock);
    public List<BS_order> selectAllServ();
    void getAll(PageBean<BS_order> pageBean);
}
