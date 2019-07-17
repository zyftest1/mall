package com.mall.controller;

import com.mall.service.BsShoppingCar;
import com.mall.service.ShoppingCarService;
import com.mall.service.impl.ShpopingCarServiceImpl;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@WebServlet("/car.do")
public class ShoppingCarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        ShoppingCarService car = new ShpopingCarServiceImpl();
        List<BsShoppingCar> cList = null;
        try {
            cList = car.getShopCar("100001");

        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.getSession().setAttribute("cList", cList);

        req.getRequestDispatcher("/mycart.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
//        String method = req.getParameter("_method");
//        switch (method) {
//            case "cList" :
//                showList(req, resp);
//                showList(req, resp);
//                break;
//            case "":
//                break;
//
//        }

    }
//展示购物列表
//    public void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setAttribute("cList",cList);
//        request.getRequestDispatcher("/mycart.jsp").forward(request, response);
//
//    }
}
