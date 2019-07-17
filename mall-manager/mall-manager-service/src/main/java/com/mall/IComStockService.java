package com.mall;

import com.mall.stock.ComStock;

import java.util.List;

public interface IComStockService {
    //新增库存信息
   public void addComStock(ComStock comstock);
    //删除库存信息
   public void removeComStock(String s_id);
   //修改库存信息
    public void modifyComStock(ComStock comstock);
    //查询库存信息（根据条件）
    public  ComStock  findComStock(String s_id);
    //查询所有的库存信息
    public List<ComStock> findAll();

}
