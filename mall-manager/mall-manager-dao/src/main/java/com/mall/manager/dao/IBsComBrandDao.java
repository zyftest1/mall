package com.mall.manager.dao;

import com.mall.manager.pojo.BScomBrand;

import java.util.List;

public interface IBsComBrandDao {
    public void insertBrand(BScomBrand brand);
    public void deleteBrand(String bid);
    public void updateBrand(BScomBrand brand);
    public BScomBrand selectbByid(String bid);
    public List<BScomBrand> selectAll();
}
