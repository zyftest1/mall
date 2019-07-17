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

@WebServlet({"/selectCustomerById.do"})
public class SelectCustomerByID extends HttpServlet {

    BS_customer_Service emplist = null;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CustomerService Service = new CustomerServiceImpl();
        String nom = req.getParameter("user_ID");

        try {
            emplist = Service.queryListById(Integer.parseInt(nom));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ;
        req.setAttribute("cust",emplist);
        req.getRequestDispatcher("reply_message.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
