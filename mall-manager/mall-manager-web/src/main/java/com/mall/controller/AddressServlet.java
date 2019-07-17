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

@WebServlet("/bsAddress.do")
public class AddressServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fun = request.getParameter("_method");
        switch (fun){
            case "add":
                add(request,response);
            case "delete":
                delete(request,response);
            case"save":
                save(request,response);
            case "update":
                update(request,response);
            case "up":
                up(request,response);

        }
    }

    public void add(HttpServletRequest request, HttpServletResponse response){
        try {
            request.getRequestDispatcher("/add.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void  delete(HttpServletRequest request, HttpServletResponse response){
        int addID = Integer.valueOf(request.getParameter("addID"));
        System.out.println(addID);
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        iUserAddressService.removeBsUserAddressByAddid(addID);
        try {
            response.sendRedirect("/address.do");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void save(HttpServletRequest request, HttpServletResponse response){
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        String address = request.getParameter("address");
        String name = request.getParameter("name");
        String tel = request.getParameter("tel");

        BsUserAddress bsUserAddress = new BsUserAddress();
//           bsUserAddress.setID(100003);
        bsUserAddress.setAddress(address);
        bsUserAddress.setName(name);
        bsUserAddress.setTel(tel);
        System.out.println(bsUserAddress);
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        iUserAddressService.addBsUserAddress(bsUserAddress);
        try {
            response.sendRedirect("/address.do");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void update(HttpServletRequest request, HttpServletResponse response){
        int addID = Integer.valueOf(request.getParameter("addID"));
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        BsUserAddress bsUserAddress = iUserAddressService.findBsUserAddressByAddID(addID);
        System.out.println("bsUserAddress"+bsUserAddress);
        request.setAttribute("bsUserAddress",bsUserAddress);
        try {
            request.getRequestDispatcher("/update.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void up(HttpServletRequest request, HttpServletResponse response){
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        BsUserAddress bsUserAddress = new BsUserAddress();
        bsUserAddress.setAddress(request.getParameter("address"));
        bsUserAddress.setName(request.getParameter("name"));
        bsUserAddress.setTel(request.getParameter("tel"));

        System.out.println("aaaaa"+bsUserAddress);
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        iUserAddressService.modifyBsUserAddress(bsUserAddress);
        try {
            response.sendRedirect("/address.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
