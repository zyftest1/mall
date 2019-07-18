package com.mall.service;

import com.mall.BS_order;

import java.sql.SQLException;
import java.util.List;

public interface bsOrder_Dao {
    List<BS_order> selectAll() throws SQLException;
}
