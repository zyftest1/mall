package com.mall.manager.service.servImpl;


import com.mall.impl.stock.ComStockDaoImpl;
import com.mall.manager.dao.IBsOrder_Dao;
import com.mall.manager.dao.daoimpl.BsOrder_DaoImpl;
import com.mall.manager.pojo.BS_order;
import com.mall.manager.service.IOrderService;
import com.mall.stock.ComStock;
import com.mall.stock.IComStockDao;

import java.util.List;


public class IOrderServicrImpl implements IOrderService {


    @Override
    public void orderCommit(BS_order bs_order, String sch) {
        IBsOrder_Dao dao=new BsOrder_DaoImpl();
        dao.oUpdate(bs_order);
        IComStockDao dao1=new ComStockDaoImpl();

    }

    @Override
    public List<BS_order> selectAllServ() {
        IBsOrder_Dao dao=new BsOrder_DaoImpl();
        List<BS_order> bs_orderList=dao.selectAll();
        return bs_orderList;
    }
}
