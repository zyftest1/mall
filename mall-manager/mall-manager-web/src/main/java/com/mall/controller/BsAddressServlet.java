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
import java.io.UnsupportedEncodingException;
import java.util.List;

@WebServlet("/address.do")
public class BsAddressServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
//        int ID = Integer.valueOf(request.getParameter("ID"));

        List<BsUserAddress> bsUserAddressList = iUserAddressService.findBsUserAddressByName("as");
        request.setAttribute("bsUserAddressList", bsUserAddressList);
        request.getRequestDispatcher("/address.jsp").forward(request, response);

    }
}
