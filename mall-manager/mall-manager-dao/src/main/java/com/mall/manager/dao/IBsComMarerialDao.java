package com.mall.manager.dao;

import com.mall.manager.pojo.BScomBrand;
import com.mall.manager.pojo.BScomMaterial;

import java.util.List;

public interface IBsComMarerialDao {
    public void insertMat(BScomMaterial material);
    public void deleteMat(String mid);
    public void updateMat(BScomMaterial material);
    public BScomMaterial selectbByid(String mid);
    public List<BScomMaterial> selectAllmaterials();

}
