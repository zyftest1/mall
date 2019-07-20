package community;

import com.mall.manager.dao.IBsOrder_Dao;
import com.mall.manager.dao.IScheduleDao;
import com.mall.manager.dao.daoimpl.BsOrder_DaoImpl;
import com.mall.manager.dao.daoimpl.IIScheduleDao_Impl;
import com.mall.manager.pojo.BS_order;
import com.mall.manager.service.IOrderService;
import com.mall.manager.service.servImpl.IOrderServicrImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class orderServlet2 extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String c_id = req.getParameter("sch");
        String o_id = req.getParameter("o_id");
        IBsOrder_Dao order_dao = new BsOrder_DaoImpl();
        IScheduleDao scheduleDao = new IIScheduleDao_Impl();
        BS_order order = order_dao.selectByID(o_id);

        IOrderService service = new IOrderServicrImpl();
        service.orderCommit(order,);
    }
}
