package community;

import com.mall.manager.dao.daoimpl.IIScheduleDao_Impl;
import com.mall.manager.dao.IScheduleDao;
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
        IOrderService service = new IOrderServicrImpl();

        //获取当前页的参数（第一次访问当前页为null）
        String currPage=req.getParameter("currentPage");
//判断 第一次是设置默认值
        if (currPage==null||"".equals(currPage)){
            currPage="1";
        }
        //转换   从jsp获取的都是字符串型的    需转换为整形才能保存到javaBean中
        int currentPage=Integer.parseInt(currPage);
        PageBean<BS_order> pb=new PageBean<BS_order>();
        pb.setCurrentPage(currentPage);
         service.getAll(pb);
        IScheduleDao sDao = new IIScheduleDao_Impl();
//        for(BS_order bs:pb.getList()){
//            bs.setSch_id(sDao.selectStateById(bs.getSch_id()).getSch_describe());
//        }

//   List<Pojo> list=new ArrayList<>();
//   for (int i=0;i<pb.getList().size();i++){
//       Pojo pojo=new Pojo();
//       pojo.setQuantity(pb.getList().get(i).getQuantity());
//       pojo.setO_price(pb.getList().get(i).getO_price());
//       pojo.setS_id(pb.getList().get(i).getS_id());
//       pojo.setUser_tel(pb.getList().get(i).getUser_tel());
//       pojo.setUser_id(pb.getList().get(i).getUser_id());
//       pojo.setO_address(pb.getList().get(i).getO_address());
//       pojo.setO_name(pb.getList().get(i).getO_name());
//       pojo.setSch(sDao.selectStateById(pb.getList().get(i).getSch_id()).getSch_describe());
//       pojo.setO_tel(pb.getList().get(i).getO_tel());
//       pojo.setO_id(pb.getList().get(i).getO_id());
//       pojo.setO_date(pb.getList().get(i).getO_date());
//       pojo.setSch_id(pb.getList().get(i).getSch_id());
//       list.add(pojo);
//
//   }
        req.setAttribute("orders",pb);
        req.getRequestDispatcher("/order.jsp").forward(req,resp);

    }



}
