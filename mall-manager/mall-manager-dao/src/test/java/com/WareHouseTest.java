package com;

import com.mall.IWareHouseDao;
import com.mall.WareHouse;
import com.mall.impl.WareHouseDaoImpl;
import org.junit.Test;

import java.util.List;

public class WareHouseTest {
    @Test
    public void ddd(){
        IWareHouseDao dao=new WareHouseDaoImpl();
        List<WareHouse> wareHouseList=dao.selectAll();
        for(WareHouse w:wareHouseList){
            System.out.println(w);
        }
    }
}
