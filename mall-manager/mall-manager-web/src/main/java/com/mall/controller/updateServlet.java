package com.mall.controller;

import com.mall.service.BsUserAddress;
import com.mall.service.IUserAddressService;
import com.mall.service.impl.IUserAddressServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update.do")
public class updateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int addID = Integer.valueOf(request.getParameter("addID"));
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        BsUserAddress bsUserAddress = iUserAddressService.findBsUserAddressByAddID(addID);
        System.out.println("bsUserAddress"+bsUserAddress);
        request.setAttribute("bsUserAddress",bsUserAddress);
        request.getRequestDispatcher("/update.jsp").forward(request,response);
    }

}
