package com.mall.service;

import java.util.List;

public interface IStockDao {

    public String selectGoodsNameById(String id);

    //首页搜索图片
    public List<BsComStock> selectIndexGoods();

    //搜索所有的c_id代表的类型
    public List<String> selectCId();

    //根据c_id查找url地址
    public String selectImgUrl(String c_id);

    //根据s_id查询具体的商品
    public BsComStock selectOneGoodsById(String s_id);

    //根据c_id查询出某一种类所有商品
    public List<BsComStock> selectGoodsByCID(String c_id);
}
