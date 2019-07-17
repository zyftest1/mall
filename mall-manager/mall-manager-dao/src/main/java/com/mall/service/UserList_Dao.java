package com.mall.service;

import com.mall.BS_user_account;

import java.sql.SQLException;
import java.util.List;

public interface UserList_Dao {
    //通过id，删除表
    public void deleteListById(Integer user_ID) throws SQLException;

    public  void updateList(BS_user_account user_account) throws SQLException;

    BS_user_account selectUserById(Integer user_ID) throws SQLException;

    List<BS_user_account> selectAll();
}
