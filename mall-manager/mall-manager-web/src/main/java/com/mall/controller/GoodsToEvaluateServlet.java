package com.mall.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/goodsToEvaluate.do")
public class GoodsToEvaluateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //商品oid
        String oid=request.getParameter("oid");
        System.out.println("goodsToEvaluate:oid"+oid);
        //购买者id
        String id=request.getParameter("id");
        System.out.println("goodsToEvaluate:id"+id);
        request.setAttribute("oid",oid);
        request.setAttribute("id",id);

        //评价页面显示商品名称
        String goodsName=request.getParameter("goodsName");
        System.out.println("goodsName"+goodsName);
        request.setAttribute("goodsName",goodsName);

        request.setCharacterEncoding("utf-8");
        request.getRequestDispatcher("/order_giveevaluate.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
