package com.mall.service;

import com.mall.BS_customer_Service;


import java.sql.SQLException;
import java.util.List;

public interface CustomerService {
    //查询所有的List
    public List<BS_customer_Service> queryAll();

    //修改数据
    public void modifyList(BS_customer_Service customer) throws SQLException;

    //查询数据，根据id
    public BS_customer_Service queryListById(Integer user_ID) throws SQLException;
}
