package com.mall.service;

import com.mall.Goods;

import java.util.List;

public interface IGoodsDao {
    public List<BsComStock> selectGoodsByLike(String name);
}
