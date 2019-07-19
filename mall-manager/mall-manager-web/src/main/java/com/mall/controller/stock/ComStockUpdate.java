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
@WebServlet("/update.do")
public class ComStockUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IComStockService service=new ComStockServiceImpl();
        String s_id=req.getParameter("s_id");
        s_id = new String(s_id.getBytes("iso-8859-1"), "utf-8");
        ComStock comStock= service.findComStock(s_id);
        req.setAttribute("comStock",comStock);
        req.getRequestDispatcher("/add.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
