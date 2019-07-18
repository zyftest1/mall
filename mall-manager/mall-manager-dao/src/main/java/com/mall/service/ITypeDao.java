package com.mall.service;

import java.util.List;

public interface ITypeDao {

    public List<String> selecteDescribe(String style);

    //获取所有风格
    public List<String> selectType();
}
