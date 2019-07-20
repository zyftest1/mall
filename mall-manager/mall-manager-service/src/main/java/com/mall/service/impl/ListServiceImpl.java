package com.mall.service.impl;


import com.mall.service.ListService;
import com.mall.service.UserList_Dao;
import com.mall.service.impl.UserList_Impl_Dao;
import com.mall.shitiClass.BS_user_account;

import java.sql.SQLException;
import java.util.List;

public class ListServiceImpl implements ListService {   //实现接口
    public ListServiceImpl() {
    }
      //添加数据
    @Override
    public void addList(BS_user_account emp) {
        UserList_Dao dao=new UserList_Impl_Dao();

    }

    //根据ID，删除数据
    @Override
    public void deleteListById(Integer user_ID) throws SQLException {
        UserList_Dao dao=new UserList_Impl_Dao();
        dao.deleteListById(user_ID);
    }
       //修改数据
    @Override
    public void modifyList(BS_user_account user_account) throws SQLException {
        UserList_Dao dao=new UserList_Impl_Dao();
        dao.updateList(user_account);
    }
      //根据ID ，查询数据
    @Override
    public BS_user_account queryListById(Integer user_ID) throws SQLException {
        UserList_Dao dao=new UserList_Impl_Dao();
        BS_user_account user_account = dao.selectUserById(user_ID);
        return user_account;
    }
      //查询所有的list
    @Override
    public List<BS_user_account> queryAll() {
        UserList_Dao dao = new UserList_Impl_Dao();
        List<BS_user_account> list = dao.selectAll();
        return list;
    }
}
