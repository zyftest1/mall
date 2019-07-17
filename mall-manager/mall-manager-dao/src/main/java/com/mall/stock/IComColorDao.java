package com.mall.stock;

import java.util.List;

public interface IComColorDao {
    //增加商品颜色信息
    public void insertColor(ComColor comcolor);
    //删除商品颜色信息
    public void deleteComColorById(String colorID);
    //修改商品颜色信息
    public void updateComColor(ComColor comcolor);
    //查询商品颜色信息
    public List<ComColor> selectAll();
    //根据条件查询商品颜色信息
    public ComColor selectColorById(String colorID);
}
