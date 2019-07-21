package com.mall.controller;

import com.mall.service.CustomerService;
import com.mall.service.impl.CustomerServiceImpl;
import com.mall.shitiClass.BS_customer_Service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/customerRedirect.do")

public class CustomerRedirect extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CustomerService sfsc= new CustomerServiceImpl();
        List<BS_customer_Service> sf= sfsc.queryAll();
        req.setAttribute("customer",sf);
        req.getRequestDispatcher("/user_message.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
