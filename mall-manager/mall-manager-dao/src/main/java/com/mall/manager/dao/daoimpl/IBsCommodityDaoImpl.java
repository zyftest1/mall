package com.mall.manager.dao.daoimpl;

import com.mall.common.utils.C3p0Utils2;
import com.mall.common.utils.PageBean;
import com.mall.manager.dao.IBsCommodityDao;
import com.mall.manager.pojo.BSCommodity;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

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
        String sql = "delete from bs_commodity where c_id = ?";

        try {
            queryRunner.update(sql,comID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateCom(BSCommodity commodity) {

        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "update bs_commodity set type_ID=?,mat_ID=?,brand_ID=?,c_describe=? " +
            "where c_ID=?";

        try {
            queryRunner.update(sql,commodity.getType_id(),commodity.getMat_ID(),commodity.getBrand_ID(),commodity.getC_describe(),commodity.getC_id());
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

    public void getAll(PageBean<BSCommodity> pageBean){
        //查询总记录数；  并设置保存到pageBean对象中
        int totalCount = getTotalCount();
        pageBean.setTotalCount(totalCount);

        /*
         * 问题： jsp页面，如果当前页为首页，再点击上一页报错！
         *              如果当前页为末页，再点下一页显示有问题！
         * 解决：
         *        1. 如果当前页 <= 0;       当前页设置当前页为1;
         *        2. 如果当前页 > 最大页数；  当前页设置为最大页数
         */

        if(pageBean.getCurrentPage() <= 0){
            pageBean.setCurrentPage(1);
        }else if(pageBean.getCurrentPage() > pageBean.getTotalPage()){
            pageBean.setCurrentPage(pageBean.getTotalPage());
        }

        //获取当前页：计算查询的起始行、返回行数
        int currentPage = pageBean.getCurrentPage();
        int index = (currentPage - 1)*pageBean.getPageCount();
        int count = pageBean.getPageCount();

        String sql = "select * from bs_commodity limit ?,?";

        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());

        try {
            List<BSCommodity> list = queryRunner.query(sql, new BeanListHandler<BSCommodity>(BSCommodity.class),index,count);
            pageBean.setList(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public int getTotalCount() {

        String sql = "select count(*) from bs_commodity";

        try {
            Long count = new QueryRunner(C3p0Utils2.getDs()).query(sql, new ScalarHandler<Long>());

            return count.intValue();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
