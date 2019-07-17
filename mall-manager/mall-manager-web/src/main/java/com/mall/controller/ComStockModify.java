package com.mall.controller;

import com.mall.ComStock;
import com.mall.IComStockService;
import com.mall.impl.ComStockServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/modify.do")
public class ComStockModify extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String s_id = req.getParameter("s_id");
        s_id = new String(s_id.getBytes("iso-8859-1"), "utf-8");
        String c_id = req.getParameter("c_id");
        c_id = new String(c_id.getBytes("iso-8859-1"), "utf-8");
        String color_id = req.getParameter("color_id");
        color_id = new String(color_id.getBytes("iso-8859-1"), "utf-8");
        String size= req.getParameter("size");
        size=new String(size.getBytes("iso-8859-1"),"utf-8");
        int stock=Integer.valueOf(req.getParameter("stock"));
        int ware_id=Integer.valueOf(req.getParameter("ware_id"));
        int price=Integer.valueOf(req.getParameter("price"));
        String s_describe=req.getParameter("s_describe");
        s_describe=new String(s_describe.getBytes("iso-8859-1"),"utf-8");

        ComStock comStock=new ComStock();
        comStock.setS_id(s_id);
        comStock.setC_id(c_id);
        comStock.setColor_id(color_id);
        comStock.setSize(size);
        comStock.setStock(stock);
        comStock.setWare_id(ware_id);
        comStock.setS_price(price);
        comStock.setS_describe(s_describe);
        IComStockService service=new ComStockServiceImpl();
        service.modifyComStock(comStock);
        resp.sendRedirect("/select.do");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
