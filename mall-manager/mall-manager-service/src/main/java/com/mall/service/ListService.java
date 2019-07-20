package com.mall.service;


import com.mall.shitiClass.BS_user_account;

import java.sql.SQLException;
import java.util.List;

public interface ListService {
    //添加数据
    public void addList(BS_user_account emp);

    //根据id，删除数据
    public void deleteListById(Integer user_ID) throws SQLException;

    //修改数据
    public void modifyList(BS_user_account emp) throws SQLException;

    //查询数据，根据id
    public BS_user_account queryListById(Integer user_ID) throws SQLException;

    //查询所有的List
    public List<BS_user_account> queryAll();
}
