package com.mall.service;

import com.mall.Goods;

import java.util.List;

public interface IGoodsDao {
    //模糊查询
    public List<BsComStock> selectGoodsByLike(String name);
    //搜索内容输入为空
    public List<BsComStock> selectGoodsAll(String name);

}
