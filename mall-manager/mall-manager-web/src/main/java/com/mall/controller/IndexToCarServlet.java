package com.mall.controller;

import com.mall.service.BsComStock;
import com.mall.service.IStockDao;
import com.mall.service.impl.IStockDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/index2car.do")
public class IndexToCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IStockDao stockDao=new IStockDaoImpl();
        String s_id=request.getParameter("sID");
        BsComStock bsComStock=stockDao.selectOneGoodsById(s_id);
        request.setAttribute("goods",bsComStock);
        request.getRequestDispatcher("/shopdetail.jsp").forward(request,response);
    }
}
