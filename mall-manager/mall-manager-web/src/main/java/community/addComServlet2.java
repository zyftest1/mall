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
import java.text.SimpleDateFormat;
import java.util.Date;
@WebServlet("/addCom.do")
public class addComServlet2 extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        BScommunityService service = new BScommunityServImpl();

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

        service.insertCom(commodity);
        req.getRequestDispatcher("/selectAll.do").forward(req,resp);
    }
}
