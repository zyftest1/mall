package community;

import com.mall.impl.stock.ComStockDaoImpl;
import com.mall.manager.dao.IBsOrder_Dao;
import com.mall.manager.dao.IScheduleDao;
import com.mall.manager.dao.daoimpl.BsOrder_DaoImpl;
import com.mall.manager.dao.daoimpl.IIScheduleDao_Impl;
import com.mall.manager.pojo.BS_order;
import com.mall.manager.pojo.BS_schedule;
import com.mall.manager.service.IOrderService;
import com.mall.manager.service.servImpl.IOrderServicrImpl;
import com.mall.stock.ComStock;
import com.mall.stock.IComStockDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/order.do")
public class orderServlet2 extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String s_id = req.getParameter("s_id");
        String o_id = req.getParameter("o_id");

        IBsOrder_Dao order_dao = new BsOrder_DaoImpl();
        IComStockDao stockDao = new ComStockDaoImpl();
        BS_order order = order_dao.selectByID(o_id);
        ComStock comStock = stockDao.selectComStockById(s_id);
        comStock.setStock(comStock.getStock()-order.getQuantity());
        order.setSch_id(3);


        IOrderService service = new IOrderServicrImpl();
        service.orderCommit(order,comStock);
        resp.sendRedirect("/order");
    }
}
