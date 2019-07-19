package com.mall.controller.stock;


import com.mall.IComStockService;
import com.mall.impl.stock.*;
import com.mall.stock.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/add.do")
public class ComStockInsert extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IComSizeDao dao=new ComSizeDaoImpl();
        List<ComSize> comSizeList=dao.selectAll();

        IComColorDao dao1=new ComColorDaoImpl();
        List<ComColor> comColorList=dao1.selectAll();

        IWareHouseDao dao2=new WareHouseDaoImpl();
        List<WareHouse> wareHouseList=dao2.selectAll();


        IComModityDao dao3=new ComModityDaoImpl();
        List<ComModity> comModityList=dao3.selectAll();

        req.setAttribute("comSizeList",comSizeList);
        req.setAttribute("comColorList",comColorList);
        req.setAttribute("wareHouseList",wareHouseList);
        req.setAttribute("comModityList",comModityList);
        req.getRequestDispatcher("add.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
