package com.mall.controller;

import com.mall.BS_user_account;
import com.mall.service.ListService;
import com.mall.service.impl.ListServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/do"})
public class RedirectServlet extends HttpServlet {
    public RedirectServlet() {
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ListService Service = new ListServiceImpl();
        List<BS_user_account> user_account = Service.queryAll();//查询所有list，赋值给emplist
        req.setAttribute("user_account", user_account);
        req.getRequestDispatcher("/user_list.jsp").forward(req, resp);
        //请求转发；由下一个Servlet完成响应体！当前Servlet可以设置响应头！（留头不留体）

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}