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
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/BsUserAccount.do")
public class BsUserAccountAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fun = request.getParameter("_method");
        switch (fun){
            case "add":
                add(request,response);
                break;
            case "delete":
                delete(request,response);
                break;
            case "modify":
                modify(request,response);
                break;
            case "checkBsName":
                try {
                    checkBsName(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "update":
                update(request,response);
                break;
            case "select":
                select(request,response);
                break;
        }
    }

    private void checkBsName(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();

        IUserService userService = new IUserServiceImpl();
        List<String> bsNameList = userService.findBsUserAccountColumnListAll();
        String bsName = request.getParameter("bsName");
        String msg = "";
        if (bsNameList.contains(bsName)){
            msg = "用户名被占用";
        }else{
            msg = "用户名可用";
        }
        out.print(msg);
    }

    private void modify(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");

    }

    private void select(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
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

    private void delete(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");

        IUserService UserService = new IUserServiceImpl();
        String bsName =request.getParameter("bsName");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        String tel = request.getParameter("tel");
        String code = request.getParameter("code");
        BsUserAccount bsUserAccount = new BsUserAccount();
        bsUserAccount.setBsName(bsName);
        System.out.println(bsName+"---"+password+"--"+password2);
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
        doPost(request, response);
    }
}
