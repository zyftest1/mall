package com.mall.controller;


import com.mall.service.BsUserAccount;
import com.mall.service.BsUserAddress;
import com.mall.service.IUserAddressService;
import com.mall.service.impl.IUserAddressServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/save.do")
public class SaveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           request.setCharacterEncoding("UTF-8");
          String address = request.getParameter("address");
           String name = request.getParameter("name");
           String tel = request.getParameter("tel");

           BsUserAddress bsUserAddress = new BsUserAddress();
           bsUserAddress.setID(100003);
           bsUserAddress.setAddress(address);
           bsUserAddress.setName(name);
           bsUserAddress.setTel(tel);
           System.out.println(bsUserAddress);
           IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
           iUserAddressService.addBsUserAddress(bsUserAddress);
           response.sendRedirect("/address.do");
    }
}
