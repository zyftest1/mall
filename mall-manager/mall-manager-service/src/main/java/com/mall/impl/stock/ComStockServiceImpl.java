package com.mall.impl.stock;

import com.mall.stock.ComStock;
import com.mall.stock.IComStockDao;
import com.mall.IComStockService;
import com.mall.stock.PageBean;



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
    public void getAll(PageBean<ComStock> pageBean) {
        IComStockDao dao=new ComStockDaoImpl();
        dao.selectAll(pageBean);
    }


}
