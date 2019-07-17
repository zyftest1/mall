package com.mall.manager.dao.daoimpl;

import com.mall.common.utils.C3p0Utils2;
import com.mall.manager.dao.IBsComTypeDao;
import com.mall.manager.pojo.BSCommodity;
import com.mall.manager.pojo.BScomBrand;
import com.mall.manager.pojo.BScomType;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class IBsComTypeDaoImpl implements IBsComTypeDao {

    @Override
    public void insertCtype(BScomType type) {
        QueryRunner qr = new QueryRunner(C3p0Utils2.getDs());

        String sql = "insert into bs_com_type(type_id,type_describe,style)" +
                "values(?,?,?)";

        try {
            qr.insert(sql,new BeanHandler<BScomType>(BScomType.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteCtype(String tid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "delete from bs_com_type where type_id is ?";

        try {
            queryRunner.update(sql,tid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateCtype(BScomType type) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "update bs_com_type set type_id=?, type_describe=?,style=? " +
                "where empno=?";

        try {
            queryRunner.update(sql,new BeanHandler<BScomType>(BScomType.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public BScomType selectbByid(String tid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_com_type where type_id=?";

        BScomType type = new BScomType();
        try {
            type = queryRunner.query(sql,new BeanHandler<BScomType>(BScomType.class),tid);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return type;
    }

    @Override
    public List<BScomType> selectAll() {

        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_com_type";
        List<BScomType> types = null;
        try {
            types=queryRunner.query(sql,new BeanListHandler<BScomType>(BScomType.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return types;
    }
}
