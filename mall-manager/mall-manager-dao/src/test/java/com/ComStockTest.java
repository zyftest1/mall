package com;

import com.mall.ComStock;
import com.mall.IComStockDao;
import com.mall.impl.ComStockDaoImpl;
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
    public void selectAll(){
        IComStockDao dao=new ComStockDaoImpl();
        List<ComStock> com=dao.selectAll();
        for(ComStock c:com){
            System.out.println(c);
        }

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
        com.setC_id("52110302");
        com.setColor_id("3002");
        com.setSize("L");
        com.setStock(20);
        com.setWare_id(1);
        com.setS_price(200);
        com.setS_describe("衣香丽影2019夏秋新款韩版宽松格子连衣裙女中长款流行小香风裙子黄色L号");
        com.setS_id("605252110302");
        dao.updateComStock(com);
    }
    @Test
    public void selectDan(){
        IComStockDao dao =new ComStockDaoImpl();
        System.out.println(dao.selectComStockById("605252154865"));
    }
}
