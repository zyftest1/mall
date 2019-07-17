package com.mall.service.impl;

import com.mall.service.BsComStock;
import com.mall.service.IStockDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;

public class IStockDaoImpl implements IStockDao {
    @Override
    public String selectGoodsNameById(String id) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select s_describe from bs_com_stock where s_id=?";
        BsComStock stock=new BsComStock();
        try {
            qr.query(sql, new ResultSetHandler<BsComStock>() {

                @Override
                public BsComStock handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        stock.setDescribe(rs.getString("s_describe"));
                    }
                    return null;
                }

            },id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stock.getDescribe();
    }
}
