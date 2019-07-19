package com.mall.controller;

import com.mall.service.ICommentDao;
import com.mall.service.impl.ICommentDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/confirm.do")
public class ConfirmGetGoodsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ICommentDao iCommentDao=new ICommentDaoImpl();
        //订单的oid
        String oid=request.getParameter("oid");
        iCommentDao.confirmGetGoodsByOid(oid);
        //用户id
        String id=request.getParameter("id");
        request.getRequestDispatcher("/order.do?_method=orderUnreceive&id="+id).forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
