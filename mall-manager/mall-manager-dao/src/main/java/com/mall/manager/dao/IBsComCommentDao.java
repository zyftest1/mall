package com.mall.manager.dao;

import com.mall.manager.pojo.BScomBrand;
import com.mall.manager.pojo.BScomComment;

import java.util.List;

public interface IBsComCommentDao {
    public void insertCcomment(BScomBrand brand);
    public void deleteCcomment(String cid);
    public void updateCcomment(BScomBrand brand);
    public BScomComment selectbByid(String cid);
    public List<BScomComment> selectAll();
}
