package Test;

import com.mall.service.BsShoppingCar;
import com.mall.service.ShopCarDao;
import com.mall.service.impl.ShopCarDaoImpl;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CarTest {
//    public static void main(String[] args) throws SQLException, ParseException {
//        //查询功能测试
//        ShopCarDao car = new ShopCarDaoImpl();
//        List<BsShoppingCar> cList = new ArrayList<>();
//        try {
//            cList = car.selectShoppingCar("100001");
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        for(BsShoppingCar a: cList ) {
//            System.out.println(a);
//        }
//
//        //插入功能测试
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//
//        Date date = sdf.parse("2011-02-02");
//        java.sql.Date date1 = new java.sql.Date(date.getTime());
//        BsShoppingCar cc = new BsShoppingCar("1234567865", 100001, "aaa", "604202551568", 125, 1, "red", "L", "asdasdasdasd",  date1, "","1011","山西" );
//        car.insertShoppingCar(cc);
//        cList = null;
//        cList = car.selectShoppingCar("100001");
//        for(BsShoppingCar a: cList ) {
//            System.out.println(a);
//        }
//
//        //删除功能测试
//        cList = null;
//        car.deleteShoppingCar("1234567865");
//        cList = null;
//        cList = car.selectShoppingCar("100001");
//        for(BsShoppingCar a: cList ) {
//            System.out.println(a);
//        }
//    }
}
