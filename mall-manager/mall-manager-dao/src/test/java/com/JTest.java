package com;




import com.mall.impl.stock.ComModityDaoImpl;
import com.mall.stock.ComModity;
import com.mall.stock.IComModityDao;
import com.utils.JdbcUtils;
import com.utils.JdbcUtils_C3P0;
import org.junit.Test;

import java.sql.SQLException;

public class JTest {

    public static void main(String[] args) throws SQLException {
        System.out.println(JdbcUtils_C3P0.getConnection());
        System.out.println("lxf sdskfkdj修理费");
    }
    @Test
    public void aaa(){
        IComModityDao dao=new ComModityDaoImpl();
        ComModity com=dao.selectById("52122530");
        System.out.println(com);


    }

}
