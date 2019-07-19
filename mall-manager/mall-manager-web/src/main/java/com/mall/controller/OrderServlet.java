package com.mall.controller;

import com.mall.BS_order;
import com.mall.service.OrderService;
import com.mall.service.impl.OrderService_Impl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet({"/order.do"})
public class OrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        OrderService ordService = new OrderService_Impl();
        List<BS_order> empList = null;     //查询所有list，赋值给emplist
        try {
            empList = ordService.queryAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("orderList", empList);
        req.getRequestDispatcher("Order_List.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req, resp);
    }
}
