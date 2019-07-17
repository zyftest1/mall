package com.mall.manager.service;

import com.mall.manager.pojo.BSCommodity;

import java.util.List;

public interface BScommunityService {
    public void insertCom(BSCommodity community);
    public void delComserv(String cID);
    public void updateComserv(BSCommodity commodity);
    public BSCommodity selectCombyIDserv(String comID);
    public BSCommodity selectCombyNameserv(String comName);
    public List<BSCommodity> selectAllcomserv();
}
