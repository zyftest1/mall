package com.mall.manager.service.servImpl;


import com.mall.impl.stock.ComStockDaoImpl;
import com.mall.manager.dao.IBsOrder_Dao;
import com.mall.manager.dao.daoimpl.BsOrder_DaoImpl;
import com.mall.manager.pojo.BS_order;
import com.mall.manager.service.IOrderService;
import com.mall.stock.ComStock;
import com.mall.stock.IComStockDao;
import com.mall.stock.PageBean;

import java.util.Date;
import java.util.List;


public class IOrderServicrImpl implements IOrderService {


    @Override
    public void orderCommit(BS_order bs_order, ComStock stock) {
        IBsOrder_Dao dao=new BsOrder_DaoImpl();
        dao.oUpdate(bs_order);
        IComStockDao dao1=new ComStockDaoImpl();
        dao1.updateComStock(stock);

    }

    @Override
    public List<BS_order> selectAllServ() {
        IBsOrder_Dao dao=new BsOrder_DaoImpl();
        List<BS_order> bs_orderList=dao.selectAll();
        return bs_orderList;
    }

    @Override
    public void getAll(PageBean<BS_order> pageBean) {
        IBsOrder_Dao dao=new BsOrder_DaoImpl();
        dao.selectAll(pageBean);
    }

    public static void main(String[] args) {

        BS_order order = new BS_order("1025130723","1","1","1",1,1,"1","1",1,1,new Date());
        IBsOrder_Dao dao=new BsOrder_DaoImpl();
        dao.oUpdate(order);
    }
}
