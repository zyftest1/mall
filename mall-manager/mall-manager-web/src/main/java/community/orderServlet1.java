package community;

import com.mall.manager.dao.IBsCommodityDao;
import com.mall.manager.dao.IBsOrder_Dao;
import com.mall.manager.dao.daoimpl.BsOrder_DaoImpl;
import com.mall.manager.dao.daoimpl.IBsCommodityDaoImpl;
import com.mall.manager.dao.daoimpl.IIScheduleDao_Impl;
import com.mall.manager.dao.IScheduleDao;
import com.mall.manager.pojo.BSCommodity;
import com.mall.manager.pojo.BS_order;
import com.mall.manager.pojo.Pojo;
import com.mall.manager.service.IOrderService;
import com.mall.manager.service.servImpl.IOrderServicrImpl;
import com.mall.stock.PageBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/order")
public class orderServlet1 extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        IOrderService service = new IOrderServicrImpl();
//        List<BS_order> oList = service.selectAllServ();

        IScheduleDao sDao = new IIScheduleDao_Impl();
        String currPage = req.getParameter("currentPage");

        //判断   第一次是设置默认值
        if(currPage == null || "".equals(currPage)){
            currPage = "1";
        }

        //转换   从jsp获取的都是字符串型的    需转换为整形才能保存到javaBean中
        int currentPage = Integer.parseInt(currPage);
        com.mall.stock.PageBean<BS_order> pb = new PageBean<>();
        pb.setCurrentPage(currentPage);
        //调用service层
        IBsOrder_Dao dao = new BsOrder_DaoImpl();
        dao.getAll(pb);
        //保存域对象

        req.setAttribute("pageBean", pb);


   List<Pojo> list=new ArrayList<>();
   for (int i=0;i<pb.getList().size();i++){
       Pojo pojo=new Pojo();
       pojo.setQuantity(pb.getList().get(i).getQuantity());
       pojo.setO_price(pb.getList().get(i).getO_price());
       pojo.setS_id(pb.getList().get(i).getS_id());
       pojo.setUser_tel(pb.getList().get(i).getUser_tel());
       pojo.setUser_id(pb.getList().get(i).getUser_id());
       pojo.setO_address(pb.getList().get(i).getO_address());
       pojo.setO_name(pb.getList().get(i).getO_name());
       pojo.setSch(sDao.selectStateById(pb.getList().get(i).getSch_id()).getSch_describe());
       pojo.setO_tel(pb.getList().get(i).getO_tel());
       pojo.setO_id(pb.getList().get(i).getO_id());
       pojo.setO_date(pb.getList().get(i).getO_date());
       pojo.setSch_id(pb.getList().get(i).getSch_id());
       list.add(pojo);

   }


        req.setAttribute("orders",list);
        req.setAttribute("orders2",pb.getList());
        req.setAttribute("PageBean",pb);
        req.getRequestDispatcher("/order.jsp").forward(req,resp);

    }



}
