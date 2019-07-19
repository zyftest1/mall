package com.mall.manager.dao.daoimpl;

import com.mall.common.utils.C3p0Utils2;
import com.mall.manager.pojo.BSCommodity;
import com.mall.manager.pojo.BScomBrand;
import com.mall.manager.pojo.BScomComment;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class IBsComCommentDaoImpl implements com.mall.manager.dao.IBsComCommentDao {
    @Override
    public void insertCcomment(BScomBrand brand) {
        QueryRunner qr = new QueryRunner(C3p0Utils2.getDs());

        String sql = "insert into bs_com_comment(com_id,user_id,user_name,content,comment_date,s_id)" +
                "values(?,?,?,?,?,?)";

        try {
            qr.insert(sql,new BeanHandler<BScomComment>(BScomComment.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteCcomment(String cid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "delete from bs_com_brand where brand_id is ?";

        try {
            queryRunner.update(sql,cid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateCcomment(BScomBrand brand) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "update bs_com_brand set brand_id=?, brand_describe=?,brand_picture_url=?" +
                "where brand_id=?";

        try {
            queryRunner.update(sql,new BeanHandler<BScomComment>(BScomComment.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public BScomComment selectbByid(String cid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_com_brand";
        BScomComment cCommodity = new BScomComment();
        try {
            cCommodity = queryRunner.query(sql,new BeanHandler<BScomComment>(BScomComment.class),cid);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cCommodity;
    }

    @Override
    public List<BScomComment> selectAll() {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_com_brand";
        List<BScomComment> commodities = null;
        try {
            commodities =queryRunner.query(sql,new BeanListHandler<BScomComment>(BScomComment.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return commodities;
    }
}
