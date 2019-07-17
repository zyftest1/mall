package com.mall.controller.stock;

import com.mall.stock.ComStock;
import com.mall.IComStockService;
import com.mall.impl.stock.ComStockServiceImpl;

import javax.servlet.ServletException;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/select.do")
public  class ComStockFindAll extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IComStockService service =new ComStockServiceImpl();
        List<ComStock> comStockList=service.findAll();
        req.setAttribute("comStockList",comStockList);
        req.getRequestDispatcher("/sku.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
