import com.mall.manager.dao.IBsComBrandDao;
import com.mall.manager.dao.IBsComMarerialDao;
import com.mall.manager.dao.IBsComTypeDao;
import com.mall.manager.dao.daoimpl.IBsComBrandDaoImpl;
import com.mall.manager.dao.daoimpl.IBsComMarerialDaoImpl;
import com.mall.manager.dao.daoimpl.IBsComTypeDaoImpl;
import com.mall.manager.pojo.BSCommodity;
import com.mall.manager.service.BScommunityService;
import com.mall.manager.service.servImpl.BScommunityServImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet( "/selectAll.do")

public class comServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //req.getRequestDispatcher("").forward("/");
        //resp.sendRedirect("");

        BScommunityService bScommunityService = new BScommunityServImpl();
        IBsComTypeDao comTypeDao = new IBsComTypeDaoImpl();
        IBsComMarerialDao marerialDao = new IBsComMarerialDaoImpl();
        IBsComBrandDao comBrandDao = new IBsComBrandDaoImpl();
        List<BSCommodity> bsCommodities = bScommunityService.selectAllcomserv();
        for (BSCommodity commodity:bsCommodities){
            commodity.setType_id(comTypeDao.selectbByid(commodity.getType_id()).getType_describe());
            commodity.setMat_ID(marerialDao.selectbByid(commodity.getMat_ID()).getCloth());
            commodity.setBrand_ID(comBrandDao.selectbByid(commodity.getBrand_ID()).getBrand_describe());
        }
        req.setAttribute("bsCommodities",bsCommodities);
        req.getRequestDispatcher("/com.jsp").forward(req,resp);


    }


        public static void main(String[] args) {
        BScommunityService bScommunityService = new BScommunityServImpl();
        List<BSCommodity> bsCommodities = bScommunityService.selectAllcomserv();
        BSCommodity commodity = bScommunityService.selectCombyIDserv("52110302");
        IBsComTypeDao comTypeDao = new IBsComTypeDaoImpl();
        System.out.println(comTypeDao.selectbByid("5202").toString());
        for (BSCommodity c :bsCommodities){
            System.out.println(c.toString());
        }
    }

}
