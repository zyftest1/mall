package Test;

import com.mall.service.BsShoppingCar;
import com.mall.service.ShopCarDao;
import com.mall.service.impl.ShopCarDaoImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CarTest {
    public static void main(String[] args) {
        ShopCarDao car = new ShopCarDaoImpl();
        List<BsShoppingCar> cList = new ArrayList<>();
        try {
            cList = car.selectShoppingCar("100001");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(cList);
    }
}
