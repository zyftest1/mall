package com.mall.controller;

import com.mall.service.ICommentDao;
import com.mall.service.impl.ICommentDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/confrimEvaluate.do")
public class ConfirmEvaluateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //评价内容
        String content=request.getParameter("evaluateContent");
        System.out.println("评论内容："+content);
        ICommentDao commentDao=new ICommentDaoImpl();
        //评论的订单号
        String oid=request.getParameter("oid");
        commentDao.giveCommentByOid(oid,content);
        //用户id
        String id=request.getParameter("id");
        request.setAttribute("id",id);
        System.out.println("confrimEvaluate:id"+id);
        request.setAttribute("oid",oid);
        System.out.println("confrimEvaluate:oid"+oid);

        //查询出某个商品所有的评论
        request.getRequestDispatcher("/order.do?_method=waitEvaluate&id="+id+"&oid="+oid).forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
