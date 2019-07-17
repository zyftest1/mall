import com.mall.manager.dao.IBsComBrandDao;
import com.mall.manager.dao.IBsComMarerialDao;
import com.mall.manager.dao.IBsComTypeDao;
import com.mall.manager.dao.daoimpl.IBsComBrandDaoImpl;
import com.mall.manager.dao.daoimpl.IBsComMarerialDaoImpl;
import com.mall.manager.dao.daoimpl.IBsComTypeDaoImpl;
import com.mall.manager.pojo.BSCommodity;
import com.mall.manager.pojo.BScomBrand;
import com.mall.manager.pojo.BScomMaterial;
import com.mall.manager.pojo.BScomType;
import com.mall.manager.service.BScommunityService;
import com.mall.manager.service.servImpl.BScommunityServImpl;
import jdk.nashorn.internal.runtime.Debug;
import org.testng.annotations.Test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@WebServlet("/addCom.do")
public class addComServlet extends HttpServlet {
    static String string = null;
    @Override
    @Test
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BScommunityService bScommunityService = new BScommunityServImpl();
        IBsComTypeDao comTypeDao = new IBsComTypeDaoImpl();
        IBsComMarerialDao marerialDao = new IBsComMarerialDaoImpl();
        IBsComBrandDao comBrandDao = new IBsComBrandDaoImpl();
        List<String> types = new ArrayList<>();
        List<BScomType> scomTypes = comTypeDao.selectAll();

        List<String> mats = new ArrayList<>();
        List<BScomMaterial> bScomMaterials = marerialDao.selectAllmaterials();

        List<String> brands = new ArrayList<>();
        List<BScomBrand> bScomBrands = comBrandDao.selectAll();

        req.setAttribute("types",scomTypes);
        req.setAttribute("mats",bScomMaterials);
        req.setAttribute("brands",bScomBrands);
        req.getRequestDispatcher("/addCom.jsp").forward(req,resp);

        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
        String id = req.getParameter("id");
        String type = req.getParameter("ctype");
        String mat = req.getParameter("cmat");
        String brand = req.getParameter("cbrand");
        String desc = req.getParameter("describe");

        BSCommodity commodity = new BSCommodity();
        commodity.setC_id(id);
        commodity.setType_id(type);
        commodity.setMat_ID(mat);
        commodity.setBrand_ID(brand);
        commodity.setC_date(dateFormat.format(date));
        commodity.setC_describe(desc);
        commodity.setEdition("2019夏季新款");

        string = commodity.toString();
        bScommunityService.insertCom(commodity);




    }

    public static void main(String[] args) {
        BScommunityService bScommunityService = new BScommunityServImpl();
        IBsComTypeDao comTypeDao = new IBsComTypeDaoImpl();
        IBsComMarerialDao marerialDao = new IBsComMarerialDaoImpl();
        IBsComBrandDao comBrandDao = new IBsComBrandDaoImpl();
//        List<BScomType> scomTypes = comTypeDao.selectAll();
//        for (BScomType bScomType:scomTypes){
//            System.out.println(bScomType.toString());
//        }
        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
        System.out.println(dateFormat.format(date));
        BSCommodity commodity = new BSCommodity();
        commodity.setC_id("1234");
        commodity.setType_id("5202");
        commodity.setMat_ID("9301");
        commodity.setBrand_ID("7501");
        commodity.setC_date(dateFormat.format(date));
        commodity.setEdition("2019夏季新款");
        commodity.setC_describe("desc");
//        bScommunityService.insertCom(commodity);

        System.out.println(string);
    }
}
