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

/**
 * 将商品信息传到购买界面
 */
@WebServlet("/index2car.do")
public class IndexToCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IStockDao stockDao=new IStockDaoImpl();
        String s_id=request.getParameter("sID");
        BsComStock bsComStock = stockDao.selectOneGoodsById(s_id);
        System.out.println(bsComStock);
        String cID = bsComStock.getcID();
        String size1 = "S";
        String size2 = "M";
        String size3 = "L";
        String size4 = "XL";
        String size5 = "XXL";

        BsComStock bsComStockS = stockDao.selectGoodsByCIDAndSize(cID,size1);
        BsComStock bsComStockM = stockDao.selectGoodsByCIDAndSize(cID,size2);
        BsComStock bsComStockL = stockDao.selectGoodsByCIDAndSize(cID,size3);
        BsComStock bsComStockXL = stockDao.selectGoodsByCIDAndSize(cID,size4);
        BsComStock bsComStockXXL = stockDao.selectGoodsByCIDAndSize(cID,size5);


        request.getSession().setAttribute("goods",bsComStock);
        request.getSession().setAttribute("bsComStockS",bsComStockS);
        request.getSession().setAttribute("bsComStockM",bsComStockM);
        request.getSession().setAttribute("bsComStockL",bsComStockL);
        request.getSession().setAttribute("bsComStockXL",bsComStockXL);
        request.getSession().setAttribute("bsComStockXXL",bsComStockXXL);


        request.getRequestDispatcher("/shopdetail.jsp").forward(request,response);


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
