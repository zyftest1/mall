package com.mall.stock;

import java.util.List;

public interface IComModityDao {
    public List<ComModity> selectAll();
    public ComModity selectById(String c_id);
}