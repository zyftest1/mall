package com;

import com.mall.stock.ComStock;
import com.mall.stock.IComStockDao;
import com.mall.impl.stock.ComStockDaoImpl;
import org.junit.Test;

import java.util.List;

public class ComStockTest {
    @Test
    public void insert(){
        IComStockDao dao=new ComStockDaoImpl();
        ComStock com=new ComStock();
        com.setS_id("124558586234");
        com.setC_id("52110302");
        com.setColor_id("3001");
        com.setSize("M");
        com.setStock(20);
        com.setWare_id(2);
        com.setS_price(312);
        com.setS_describe("是傲娇RRJIGDJDF");
        dao.insertComStock(com);
    }

    @Test
    public void delete(){
        IComStockDao dao=new ComStockDaoImpl();
        dao.deleteComStockById("124558586234");
    }
    @Test
    public void update(){
        IComStockDao dao=new ComStockDaoImpl();
        ComStock com=new ComStock();

        com.setStock(87);

        com.setS_price(200);
        com.setS_id("123456789012");
        dao.updateComStock(com);
    }
    @Test
    public void selectDan(){
        IComStockDao dao =new ComStockDaoImpl();
        System.out.println(dao.selectComStockById("605252154865"));
        System.out.println("佳都科技SDK设计的");
    }
}
