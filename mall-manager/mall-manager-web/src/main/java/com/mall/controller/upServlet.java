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

@WebServlet("/up.do")
public class upServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        int addID = Integer.valueOf(request.getParameter("addID"));
        request.setAttribute("name",name);
        System.out.println(name);
        BsUserAddress bsUserAddress = new BsUserAddress();

        bsUserAddress.setAddID(addID);
        bsUserAddress.setAddress(request.getParameter("address"));
        bsUserAddress.setName(request.getParameter("name"));
        bsUserAddress.setTel(request.getParameter("tel"));

        System.out.println("aaaaa"+bsUserAddress);
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        iUserAddressService.modifyBsUserAddress(bsUserAddress);
        response.sendRedirect("/address.do");
    }
}
