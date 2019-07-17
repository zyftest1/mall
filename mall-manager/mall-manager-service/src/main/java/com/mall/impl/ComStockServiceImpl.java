package com.mall.impl;

import com.mall.ComStock;
import com.mall.IComStockDao;
import com.mall.IComStockService;

import java.util.List;

public class ComStockServiceImpl implements IComStockService {
    @Override
    public void addComStock(ComStock comstock) {
        IComStockDao dao=new ComStockDaoImpl();
        dao.insertComStock(comstock);
    }

    @Override
    public void removeComStock(String s_id) {
        IComStockDao dao=new ComStockDaoImpl();
        dao.deleteComStockById(s_id);

    }

    @Override
    public void modifyComStock(ComStock comstock) {
        IComStockDao dao=new ComStockDaoImpl();
        dao.updateComStock(comstock);

    }

    @Override
    public ComStock findComStock(String s_id) {
        IComStockDao dao=new ComStockDaoImpl();
        ComStock comStock=dao.selectComStockById(s_id);
        return comStock;
    }

    @Override
    public List<ComStock> findAll() {
        IComStockDao dao=new ComStockDaoImpl();
        List<ComStock> comStockList = dao.selectAll();

        return comStockList;
    }
}
