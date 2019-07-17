package com.mall.controller;

import com.mall.IComStockService;
import com.mall.impl.ComStockServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/delete.do")
public class ComStockDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IComStockService service=new ComStockServiceImpl();
        String s_id=req.getParameter("s_id");
        service.removeComStock(s_id);
        resp.sendRedirect("/select.do");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
