package com.mall.manager.dao.daoimpl;

import com.mall.common.utils.C3p0Utils2;
import com.mall.manager.dao.IBsCommodityDao;
import com.mall.manager.pojo.BSCommodity;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class IBsCommodityDaoImpl implements IBsCommodityDao {

    @Override
    public void insertCom(BSCommodity commodity) {
        QueryRunner qr = new QueryRunner(C3p0Utils2.getDs());

        String sql = "insert into bs_commodity(c_id,type_id,mat_id,brand_id,edition,c_date,c_describe)" +
                "values(?,?,?,?,?,?,?)";

        try {
            qr.update(sql,commodity.getC_id(),commodity.getType_id(),commodity.getMat_ID(),commodity.getBrand_ID(),commodity.getEdition()
            ,commodity.getC_date(),commodity.getC_describe());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteCombyID(String comID) {

        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "delete from bs_commodity where c_id is ?";

        try {
            queryRunner.update(sql,comID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateCom(BSCommodity commodity) {

        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "update bs_commodity set c_ID=?, type_ID=?,mat_ID=?,brand_ID=?,edition=?,c_date=?,c_describe=? " +
            "where c_ID=?";

        try {
            queryRunner.update(sql,new BeanHandler<BSCommodity>(BSCommodity.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    @Override
    public BSCommodity selectCombyID(String comID) {

        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_commodity where c_id = ?";

        BSCommodity commodity = new BSCommodity();
        try {
            commodity = queryRunner.query(sql,new BeanHandler<BSCommodity>(BSCommodity.class),comID);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return commodity;
    }

    @Override
    public BSCommodity selectCombyName(String comName) {

        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_commodity";
        BSCommodity commodity = new BSCommodity();
        try {
            commodity = queryRunner.query(sql,new BeanHandler<BSCommodity>(BSCommodity.class),comName);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return commodity;
    }

    @Override
    public List<BSCommodity> selectAllcom() {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_commodity";
        List<BSCommodity> commodities = null;
        try {
            commodities =queryRunner.query(sql,new BeanListHandler<BSCommodity>(BSCommodity.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return commodities;
    }
}
