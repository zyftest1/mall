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

@WebServlet("/sign.do")
public class BsSignInServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        IUserService UserService = new IUserServiceImpl();
        String bsName =request.getParameter("bsName");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        String tel = request.getParameter("tel");
        String code = request.getParameter("code");
        BsUserAccount bsUserAccount = new BsUserAccount();
        bsUserAccount.setBsName(bsName);
        System.out.println(password+"--"+password2);
        if (password.equals("")||password2.equals("")|| !password.equals(password2)){
            System.out.println("两次输入的密码不一致");
            request.getRequestDispatcher("/sign-in.jsp").forward(request,response);
        }else if (tel.equals("")){
            System.out.println("电话号码为空");
            request.getRequestDispatcher("/sign-in.jsp").forward(request,response);
        }else{
            bsUserAccount.setPassword(password);
            bsUserAccount.setTel(tel);
            System.out.println(bsUserAccount.getPassword()+"---"+bsUserAccount.getBsName());
            UserService.addBsUserAccount(bsUserAccount);
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
        request.getRequestDispatcher("/login.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);


    }
}
