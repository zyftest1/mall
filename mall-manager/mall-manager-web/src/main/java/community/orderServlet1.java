package community;

import com.mall.manager.dao.daoimpl.IIScheduleDao_Impl;
import com.mall.manager.dao.IScheduleDao;
import com.mall.manager.pojo.BS_order;
import com.mall.manager.pojo.Pojo;
import com.mall.manager.service.IOrderService;
import com.mall.manager.service.servImpl.IOrderServicrImpl;

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
        IOrderService service = new IOrderServicrImpl();
        List<BS_order> oList = service.selectAllServ();
        IScheduleDao sDao = new IIScheduleDao_Impl();

   List<Pojo> list=new ArrayList<>();
   for (int i=0;i<oList.size();i++){
       Pojo pojo=new Pojo();
       pojo.setQuantity(oList.get(i).getQuantity());
       pojo.setO_price(oList.get(i).getO_price());
       pojo.setS_id(oList.get(i).getS_id());
       pojo.setUser_tel(oList.get(i).getUser_tel());
       pojo.setUser_id(oList.get(i).getUser_id());
       pojo.setO_address(oList.get(i).getO_address());
       pojo.setO_name(oList.get(i).getO_name());
       pojo.setSch(sDao.selectStateById(oList.get(i).getSch_id()).getSch_describe());
       pojo.setO_tel(oList.get(i).getO_tel());
       pojo.setO_id(oList.get(i).getO_id());
       pojo.setO_date(oList.get(i).getO_date());
       pojo.setSch_id(oList.get(i).getSch_id());
       list.add(pojo);

   }
        System.out.println(list);


        req.setAttribute("orders",list);
        req.setAttribute("orders2",oList);
        req.getRequestDispatcher("/order.jsp").forward(req,resp);

    }



}
