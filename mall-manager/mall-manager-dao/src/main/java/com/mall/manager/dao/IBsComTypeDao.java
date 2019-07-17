package com.mall.manager.dao;

import com.mall.manager.pojo.BScomBrand;
import com.mall.manager.pojo.BScomType;

import java.util.List;

public interface IBsComTypeDao {
    public void insertCtype(BScomType type);
    public void deleteCtype(String tid);
    public void updateCtype(BScomType type);
    public BScomType selectbByid(String tid);
    public List<BScomType> selectAll();
}
