package community;

import com.mall.common.utils.PageBean;
import com.mall.manager.dao.IBsComBrandDao;
import com.mall.manager.dao.IBsComMarerialDao;
import com.mall.manager.dao.IBsComTypeDao;
import com.mall.manager.dao.IBsCommodityDao;
import com.mall.manager.dao.daoimpl.IBsComBrandDaoImpl;
import com.mall.manager.dao.daoimpl.IBsComMarerialDaoImpl;
import com.mall.manager.dao.daoimpl.IBsComTypeDaoImpl;
import com.mall.manager.dao.daoimpl.IBsCommodityDaoImpl;
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
        List<BSCommodity> bsCommodities = bScommunityService.selectAllcomserv(); //获取“当前页”参数(第一次访问时当前页为null)
        String currPage = req.getParameter("currentPage");

        //判断   第一次是设置默认值
        if(currPage == null || "".equals(currPage)){
            currPage = "1";
        }

        //转换   从jsp获取的都是字符串型的    需转换为整形才能保存到javaBean中
        int currentPage = Integer.parseInt(currPage);
        PageBean<BSCommodity> pb = new PageBean<BSCommodity>();
        pb.setCurrentPage(currentPage);
        //调用service层
        IBsCommodityDao dao = new IBsCommodityDaoImpl();
        dao.getAll(pb);
        //保存域对象



        for (BSCommodity commodity:pb.getList()){
            commodity.setType_id(comTypeDao.selectbByid(commodity.getType_id()).getType_describe());
            commodity.setMat_ID(marerialDao.selectbByid(commodity.getMat_ID()).getCloth());
            commodity.setBrand_ID(comBrandDao.selectbByid(commodity.getBrand_ID()).getBrand_describe());
        }

        req.setAttribute("pageBean", pb);

        req.setAttribute("bsCommodities",bsCommodities);
        req.getRequestDispatcher("/com.jsp").forward(req,resp);


    }


        public static void main(String[] args) {
        BScommunityService bScommunityService = new BScommunityServImpl();
        List<BSCommodity> bsCommodities = bScommunityService.selectAllcomserv();
            //转换   从jsp获取的都是字符串型的    需转换为整形才能保存到javaBean中


            PageBean<BSCommodity> pb = new PageBean<BSCommodity>();
            pb.setCurrentPage(1);

            //调用service层

            IBsCommodityDao dao = new IBsCommodityDaoImpl();
            dao.getAll(pb);
//        System.out.println(comTypeDao.selectbByid("5202").toString());
        for (BSCommodity c :pb.getList()){
            System.out.println(c.toString());
        }
//            bScommunityService.delComserv("123");
    }

}
