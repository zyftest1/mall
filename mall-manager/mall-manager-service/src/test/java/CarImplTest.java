import com.mall.service.BsShoppingCar;
import com.mall.service.ShoppingCarService;
import com.mall.service.impl.ShpopingCarServiceImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CarImplTest {
    public static void main(String[] args) {
        ShoppingCarService car = new ShpopingCarServiceImpl();
        List<BsShoppingCar> carList = new ArrayList<>();
        try {
            carList = car.getShopCar("100001");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        for(BsShoppingCar b: carList) {
            System.out.println(b);
        }
        System.out.println();

    }
}
