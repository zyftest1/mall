import com.mall.Area;
import com.mall.City;
import com.mall.Province;
import com.mall.service.IAreaService;
import com.mall.service.ICityService;
import com.mall.service.IProvinceService;
import com.mall.service.impl.AreaServiceImpl;
import com.mall.service.impl.CityServiceImpl;
import com.mall.service.impl.ProvinceServiceImpl;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

public class AddressTest {

    @Test
    public void provinceTest() throws SQLException {
        IProvinceService iProvinceService = new ProvinceServiceImpl();
        List<Province> provinceList = iProvinceService.findProvinces();
        System.out.println(provinceList);
    }
    @Test
    public void cityTest() throws SQLException {
        ICityService iCityService = new CityServiceImpl();
        List<City> list = iCityService.findCitiesByPid(140000);
        System.out.println(list);
    }
    @Test
    public void areaTest() throws SQLException {
        IAreaService iAreaService = new AreaServiceImpl();
        List<Area> list = iAreaService.findAreasByCid(140100);
        System.out.println(list);
    }
}
