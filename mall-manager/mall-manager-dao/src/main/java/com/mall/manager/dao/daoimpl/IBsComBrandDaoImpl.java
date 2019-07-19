package com.mall.manager.dao.daoimpl;

import com.mall.common.utils.C3p0Utils2;
import com.mall.manager.dao.IBsComBrandDao;
import com.mall.manager.pojo.BScomBrand;
import com.mall.manager.pojo.BScomMaterial;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class IBsComBrandDaoImpl implements IBsComBrandDao {
    @Override
    public void insertBrand(BScomBrand brand) {
        QueryRunner qr = new QueryRunner(C3p0Utils2.getDs());

        String sql = "insert into bs_com_brand(brand_id,brand_describe,brand_picture_url)" +
                "values(?,?,?)";

        try {
            qr.insert(sql,new BeanHandler<BScomBrand>(BScomBrand.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteBrand(String bid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "delete from bs_com_material where c_id is ?";

        try {
            queryRunner.update(sql,bid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateBrand(BScomBrand brand) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "update bs_com_brand set brand_id=?,brand_describe=?,brand_picture_url=?" +
                "where mat_id=?";

        try {
            queryRunner.update(sql,new BeanHandler<BScomBrand>(BScomBrand.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public BScomBrand selectbByid(String bid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_com_brand where brand_id=?";

        BScomBrand brand = new BScomBrand();
        try {
            brand = queryRunner.query(sql,new BeanHandler<BScomBrand>(BScomBrand.class),bid);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return brand;
    }

    @Override
    public List<BScomBrand> selectAll() {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_com_brand";
        List<BScomBrand> brands = null;
        try {
            brands =queryRunner.query(sql,new BeanListHandler<BScomBrand>(BScomBrand.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return brands;
    }
}
