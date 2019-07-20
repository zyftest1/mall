package com.mall.controller;

import com.mall.service.ListService;
import com.mall.service.impl.ListServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/delete.do")
public class ListDeleteServlet extends HttpServlet {
    public ListDeleteServlet() {  //构造方法
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //String id = Integer.valueOf(req.getParameter("ID"));
        ListService Service = new ListServiceImpl();
        String nom = req.getParameter("user_ID");  //传入ID；
        try {
            Service.deleteListById(Integer.parseInt(nom));//根据ID，删除信息
        } catch (SQLException e) {
            e.printStackTrace();
        }

        req.getRequestDispatcher("user_list.jsp").forward(req, resp);//转到主servlet；
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
