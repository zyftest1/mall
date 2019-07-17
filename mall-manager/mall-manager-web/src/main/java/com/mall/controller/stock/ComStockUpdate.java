package com.mall.controller.stock;
import com.mall.IComStockService;
import com.mall.impl.stock.*;
import com.mall.stock.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/update.do")
public class ComStockUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IComStockService service=new ComStockServiceImpl();
        IComSizeDao dao=new ComSizeDaoImpl();
        List<ComSize> comSizeList=dao.selectAll();

        IComColorDao dao1=new ComColorDaoImpl();
        List<ComColor> comColorList=dao1.selectAll();

        IWareHouseDao dao2=new WareHouseDaoImpl();
        List<WareHouse> wareHouseList=dao2.selectAll();

        IComModityDao dao3=new ComModityDaoImpl();
        List<ComModity> comModityList=dao3.selectAll();

        String s_id=req.getParameter("s_id");
        s_id = new String(s_id.getBytes("iso-8859-1"), "utf-8");
        ComStock comStock= service.findComStock(s_id);
        req.setAttribute("comStock",comStock);
        req.setAttribute("comSizeList",comSizeList);
        req.setAttribute("comColorList",comColorList);
        req.setAttribute("wareHouseList",wareHouseList);
        req.setAttribute("comModityList",comModityList);
        req.getRequestDispatcher("/add.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
