package com.mall.service.impl;

import com.mall.service.CustomerService;
import com.mall.service.customer_reply;
import com.mall.shitiClass.BS_customer_Service;

import java.sql.SQLException;
import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    @Override
    public List<BS_customer_Service> queryAll() {
            customer_reply cus = new customerReply_Impl();
            List<BS_customer_Service> list = cus.selectAll();
              return list;
        }

    @Override
    public void modifyList(BS_customer_Service customer) throws SQLException {
       customer_reply sc= new customerReply_Impl();
        sc.updateList(customer);
    }

    @Override
    public BS_customer_Service queryListById(Integer user_ID) throws SQLException {
        customer_reply cu = new customerReply_Impl();
        BS_customer_Service user_a = cu.selectCustomerById(user_ID);
        return user_a;
    }
}

