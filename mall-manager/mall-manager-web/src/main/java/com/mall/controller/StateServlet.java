package com.mall.controller;

import com.mall.service.StateService;
import com.mall.service.impl.StateService_Impl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/StateServlet.do")
public class StateServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StateService sdf = new StateService_Impl();
        String eer=req.getParameter("sch_id");

//        List<BS_schedule> =
        try {
            req.setAttribute("State",sdf.queryListById(Integer.parseInt(eer)));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
