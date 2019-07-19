package community;

import com.mall.manager.pojo.BSCommodity;
import com.mall.manager.service.BScommunityService;
import com.mall.manager.service.servImpl.BScommunityServImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updCom.do")
public class updComServlet2 extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String type = req.getParameter("ctype");
        String mat = req.getParameter("cmat");
        String brand = req.getParameter("cbrand");
        String desc2 = req.getParameter("describe");

        BScommunityService service = new BScommunityServImpl();
        BSCommodity commodity = service.selectCombyIDserv(id);

        commodity.setType_id(type);
        commodity.setMat_ID(mat);
        commodity.setBrand_ID(brand);
        commodity.setC_describe(desc2);

        service.updateComserv(commodity);

        resp.sendRedirect("/selectAll.do");
    }
}
