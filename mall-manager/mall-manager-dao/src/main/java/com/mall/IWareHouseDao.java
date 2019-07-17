package com.mall;

import java.util.List;

public interface IWareHouseDao {
    public void insertWareHouse(WareHouse wareHouse);
    public void deleteWareHouseById(String wareId);
    public List<WareHouse> selectAll();

}
