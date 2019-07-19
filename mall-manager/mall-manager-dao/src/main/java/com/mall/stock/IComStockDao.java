package com.mall.stock;

import java.util.List;

public interface IComStockDao {
    //增加库存信息
    public void insertComStock(ComStock comstock);
    //删除库存信息
    public void deleteComStockById(String s_id);
    //修改库存信息
    public void updateComStock(ComStock comtock);
    //查询所有的库存信息
    public void selectAll(PageBean<ComStock> pageBean);
    //根据条件查询库存信息
    public ComStock selectComStockById(String s_id);
    //查询总记录数
    public int getTotalCount();

}
