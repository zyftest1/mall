package com.mall.controller;

import com.mall.service.IUserAddressService;
import com.mall.service.impl.IUserAddressServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete.do")
public class deleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int addID = Integer.valueOf(request.getParameter("addID"));
        System.out.println(addID);
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        iUserAddressService.removeBsUserAddressByAddid(addID);
        response.sendRedirect("/address.do");
    }
}
