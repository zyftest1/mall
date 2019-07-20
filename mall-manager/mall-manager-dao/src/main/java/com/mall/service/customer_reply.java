package com.mall.service;

import com.mall.shitiClass.BS_customer_Service;

import java.sql.SQLException;
import java.util.List;

public interface customer_reply {
    List<BS_customer_Service> selectAll();

    public  void updateList(BS_customer_Service customer) throws SQLException;

    BS_customer_Service selectCustomerById(Integer user_ID) throws SQLException;
}
