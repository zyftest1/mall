package com.mall.manager.service.servImpl;

import com.mall.manager.dao.IBsCommodityDao;
import com.mall.manager.dao.daoimpl.IBsCommodityDaoImpl;
import com.mall.manager.pojo.BSCommodity;
import com.mall.manager.service.BScommunityService;

import java.util.List;

public class BScommunityServImpl implements BScommunityService {
    @Override
    public void insertCom(BSCommodity community) {
        IBsCommodityDao dao = new IBsCommodityDaoImpl();
        dao.insertCom(community);
    }

    @Override
    public void delComserv(String cID) {
        IBsCommodityDao dao = new IBsCommodityDaoImpl();
        dao.deleteCombyID(cID);
    }

    @Override
    public void updateComserv(BSCommodity commodity) {
        IBsCommodityDao dao = new IBsCommodityDaoImpl();
        dao.updateCom(commodity);
    }

    @Override
    public BSCommodity selectCombyIDserv(String comID) {
        IBsCommodityDao dao = new IBsCommodityDaoImpl();
        BSCommodity commodity = dao.selectCombyID(comID);
        return commodity;
    }

    @Override
    public BSCommodity selectCombyNameserv(String comName) {
        IBsCommodityDao dao = new IBsCommodityDaoImpl();
        BSCommodity commodity = dao.selectCombyName(comName);
        return commodity;
    }

    @Override
    public List<BSCommodity> selectAllcomserv() {
        IBsCommodityDao dao = new IBsCommodityDaoImpl();
        List<BSCommodity> commodities = dao.selectAllcom();
        return commodities;
    }
}
