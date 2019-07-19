package com.mall.impl.stock;

import com.mall.stock.IWareHouseDao;
import com.mall.stock.WareHouse;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;


import java.sql.SQLException;
import java.util.List;

public class WareHouseDaoImpl implements IWareHouseDao {
    @Override
    public void insertWareHouse(WareHouse wareHouse) {

    }

    @Override
    public void deleteWareHouseById(String wareId) {

    }

    @Override
    public List<WareHouse> selectAll() {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_warehouse";
        List<WareHouse> wareHouseList=null;
        try {
           wareHouseList=qr.query(sql,new BeanListHandler<WareHouse>(WareHouse.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return wareHouseList;
    }
}
