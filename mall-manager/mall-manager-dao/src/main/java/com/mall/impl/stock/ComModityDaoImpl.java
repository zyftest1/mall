package com.mall.impl.stock;

import com.mall.stock.ComModity;
import com.mall.stock.IComModityDao;
import com.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ComModityDaoImpl implements IComModityDao {
    @Override
    public List<ComModity> selectAll() {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        String sql="select * from bs_commodity";
        List<ComModity> comModityList=null;
        try {
           comModityList=qr.query(sql,new BeanListHandler<ComModity>(ComModity.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comModityList;
    }
}
