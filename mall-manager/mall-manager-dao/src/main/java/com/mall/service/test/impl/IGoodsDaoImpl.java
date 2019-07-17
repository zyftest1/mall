package com.mall.service.test.impl;

import com.mall.BsOrder;
import com.mall.Goods;
import com.mall.service.test.IGoodsDao;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IGoodsDaoImpl implements IGoodsDao {
    @Override
    public List<Goods> selectGoodsByLike(String name) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from goods where goodsName like '%"+name+"%'";
        List<Goods> orders=new ArrayList<>();
        try {
//            orders=qr.query(sql, new BeanListHandler<BsOrder>(BsOrder.class),uid);
            qr.query(sql, new ResultSetHandler<Goods>() {

                @Override
                public Goods handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        Goods goods=new Goods();
                        goods.setGoodsName(rs.getString("goodsName"));
                        goods.setPrice(rs.getDouble("price"));
                        goods.setImgUrl(rs.getString("imgUrl"));
                        orders.add(goods);
                    }
                    return null;
                }

            });
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }
}
