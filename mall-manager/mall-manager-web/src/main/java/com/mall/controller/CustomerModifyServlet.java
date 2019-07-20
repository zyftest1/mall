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
import java.sql.SQLException;

@WebServlet("/customerModify.do")
public class CustomerModifyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CustomerService sdfd = new CustomerServiceImpl();
//        SelectCustomerByID sdz=new SelectCustomerByID();
        BS_customer_Service sd = null;
        req.setCharacterEncoding("UTF-8");
        String id = req.getParameter("user_ID");
        String sdv = req.getParameter("cs_ID");
//        String aff = req.getParameter("cs_date");
//        String faf=req.getParameter("cs_content");
//        String df = req.getParameter("user_name");
//        Integer id=Integer.parseInt(req.getParameter("user_ID"));
        try {
            sd=sdfd.queryListById(Integer.parseInt(id));
            System.out.println(id);
            System.out.println(sdv);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        sd.setCs_ID(sdv);
//        sd.setUser_ID(Integer.parseInt(id));
//        sd.setCs_content(faf);
//        sd.setUser_name(df);
        try {
            sdfd.modifyList(sd);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            System.out.println(sd);
            System.out.println(sdfd.queryListById(Integer.parseInt(id)));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        req.getRequestDispatcher("/customerRedirect.do").forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }


}
