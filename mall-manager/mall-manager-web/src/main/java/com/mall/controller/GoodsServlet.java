package com.mall.controller;

import com.mall.Goods;
import com.mall.service.IGoodsDao;
import com.mall.service.impl.IGoodsDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/goods.do")
public class GoodsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IGoodsDao  goodsDao=new IGoodsDaoImpl();
        String goodsName=request.getParameter("goodsNameInput");
        System.out.println("goodsName:"+goodsName);
        List<Goods> goodsList=goodsDao.selectGoodsByLike(goodsName);
        System.out.println("goodsList:"+goodsList);
        request.setAttribute("goods",goodsList);
        request.getRequestDispatcher("list-2.jsp").forward(request, response);


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
