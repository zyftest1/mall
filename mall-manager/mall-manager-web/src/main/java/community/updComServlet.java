package community;

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

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet("/updCom")
public class updComServlet extends HttpServlet {
    @Override
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

        String id = req.getParameter("c_id");
        System.out.println(id);
        BSCommodity commodity = bScommunityService.selectCombyIDserv(id);
        String desc = commodity.getC_describe();


        req.setAttribute("id",id);
        req.setAttribute("types",scomTypes);
        req.setAttribute("mats",bScomMaterials);
        req.setAttribute("brands",bScomBrands);
        req.setAttribute("desc",desc);

        req.getRequestDispatcher("/updCom.jsp").forward(req,resp);






    }

    public static void main(String[] args) {
        BScommunityService bScommunityService = new BScommunityServImpl();
        BSCommodity commodity = bScommunityService.selectCombyIDserv("");
        commodity.setC_describe("test123");
        commodity.setBrand_ID("7506");
        bScommunityService.updateComserv(commodity);
        System.out.println(commodity.toString());
    }
}