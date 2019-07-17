package com.mall.controller;

import com.mall.service.BsUserAccount;
import com.mall.service.IUserService;
import com.mall.service.impl.IUserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login.do")
public class BsLoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        IUserService iUserService = new IUserServiceImpl();
        String bsName =request.getParameter("bsName");
        String password = request.getParameter("password");
        if (password == "" || bsName == ""){
            System.out.println("密码为空,请重新登录");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }else {
            BsUserAccount bsUserAccount = iUserService.findBsUserAccountByName(bsName);
            if (bsUserAccount.getPassword() == password){
                System.out.println("登录成功");
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            }
        }
        request.getRequestDispatcher("/index.jsp").forward(request,response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
