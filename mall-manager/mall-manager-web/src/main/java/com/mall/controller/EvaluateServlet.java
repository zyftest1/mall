package com.mall.controller;

import com.mall.service.ICommentDao;
import com.mall.service.impl.ICommentDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/evaluate.do")
public class EvaluateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ICommentDao iCommentDao=new ICommentDaoImpl();
        //订单的oid
        String oid=request.getParameter("oid");
        System.out.println("oid:"+oid);
        //用户id
        String id=request.getParameter("id");
        System.out.println("id"+id);
        request.setAttribute("oid",oid);
        request.setAttribute("id",id);
        request.getRequestDispatcher("/order_giveevaluate.jsp?id="+id+"&oid="+oid).forward(request,response);
    }
}
