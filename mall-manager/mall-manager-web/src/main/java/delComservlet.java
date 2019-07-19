import com.mall.manager.dao.IBsComBrandDao;
import com.mall.manager.dao.IBsCommodityDao;
import com.mall.manager.dao.daoimpl.IBsComBrandDaoImpl;
import com.mall.manager.dao.daoimpl.IBsCommodityDaoImpl;
import com.mall.manager.pojo.BSCommodity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/delCom.do")
public class delComservlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IBsCommodityDao commodityDao = new IBsCommodityDaoImpl();
        String id = req.getParameter("c_id");
        commodityDao.deleteCombyID(id);
        resp.sendRedirect("/selectAll.do");
    }
}
