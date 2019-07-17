package com.mall.controller;

import com.mall.BS_customer_Service;
import com.mall.service.CustomerService;
import com.mall.service.impl.CustomerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet({"/customer.do"})
public class CustomerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CustomerService cus = new CustomerServiceImpl();
        String sa=req.getParameter("user_ID");
        BS_customer_Service li = null;
        try {
            li = cus.queryListById(Integer.parseInt(sa));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("customer",li);
        req.getRequestDispatcher("/user_message.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }


}
