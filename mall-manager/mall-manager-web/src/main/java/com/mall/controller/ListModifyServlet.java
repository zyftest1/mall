package com.mall.controller;

import com.mall.service.ListService;
import com.mall.service.impl.ListServiceImpl;
import com.mall.shitiClass.BS_user_account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/modify.do")
public class ListModifyServlet extends HttpServlet {
    public ListModifyServlet() {
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ListService Service = new ListServiceImpl();
        BS_user_account bs = new BS_user_account();
        req.setCharacterEncoding("UTF-8");
        System.out.println(req.getCharacterEncoding());
        bs.setUser_name(req.getParameter("user_name"));
        bs.setUser_email(req.getParameter("user_email"));
        bs.setUser_tel(req.getParameter("user_tel"));
        bs.setUser_address(req.getParameter("user_address"));
//        bs.setMgr(1004);
//        bs.setDeptno(Integer.parseInt(req.getParameter("deptno")));
        try {
            Service.modifyList(bs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("修改成功");
        req.getRequestDispatcher("/").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
