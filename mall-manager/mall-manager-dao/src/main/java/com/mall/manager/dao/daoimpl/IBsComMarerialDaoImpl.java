package com.mall.manager.dao.daoimpl;

import com.mall.common.utils.C3p0Utils2;
import com.mall.manager.dao.IBsComMarerialDao;
import com.mall.manager.pojo.BSCommodity;
import com.mall.manager.pojo.BScomBrand;
import com.mall.manager.pojo.BScomMaterial;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class IBsComMarerialDaoImpl implements IBsComMarerialDao {
    @Override
    public void insertMat(BScomMaterial material) {
        QueryRunner qr = new QueryRunner(C3p0Utils2.getDs());

        String sql = "insert into bs_com_material(mat_id,cloth,origin,weight)" +
                "values(?,?,?,?)";

        try {
            qr.insert(sql,new BeanHandler<BScomMaterial>(BScomMaterial.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteMat(String mid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "delete from bs_com_material where c_id is ?";

        try {
            queryRunner.update(sql,mid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateMat(BScomMaterial material) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql = "update bs_com_material set cloth=?,origin=?,weight=?" +
                "where mat_id=?";

        try {
            queryRunner.update(sql,new BeanHandler<BScomMaterial>(BScomMaterial.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public BScomMaterial selectbByid(String mid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_com_material where mat_id=?";

        BScomMaterial material = new BScomMaterial();
        try {
            material = queryRunner.query(sql,new BeanHandler<BScomMaterial>(BScomMaterial.class),mid);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return material;
    }

    @Override
    public List<BScomMaterial> selectAllmaterials() {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils2.getDs());
        String sql="select* from bs_com_material";
        List<BScomMaterial> materials = null;
        try {
            materials =queryRunner.query(sql,new BeanListHandler<BScomMaterial>(BScomMaterial.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return materials;
    }
}
