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
import java.util.List;

@WebServlet("/indexGoods.do")
public class IndexGoodsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IStockDao stockDao=new IStockDaoImpl();
        List<BsComStock> bsComStocks=stockDao.selectIndexGoods();
        request.setAttribute("indexGoods",bsComStocks);
        request.getRequestDispatcher("/shopdetail.jsp").forward(request,response);
    }
}
