package com.mall.manager.dao;

import com.mall.common.utils.PageBean;
import com.mall.manager.pojo.BSCommodity;

import java.sql.Connection;
import java.util.List;

public interface IBsCommodityDao {
    public void insertCom(BSCommodity commodity);
    public void deleteCombyID(String comID);
    public void updateCom(BSCommodity commodity);
    public BSCommodity selectCombyID(String comID);
    public BSCommodity selectCombyName(String comName);
    public List<BSCommodity> selectAllcom();
    /*
     * 分页查询数据
     * */
    public  void  getAll(PageBean<BSCommodity> pageBean);

    /*
     * 查询总记录数
     * */
    public int getTotalCount();
}
