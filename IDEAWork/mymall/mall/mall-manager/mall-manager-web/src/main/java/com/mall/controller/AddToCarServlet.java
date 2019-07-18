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
import java.util.List;

@WebServlet("/addToCar.do")
public class AddToCarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
        req.setCharacterEncoding("UTF-8");
        try {
            addCar(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    public void addCar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        ShoppingCarService car = new ShpopingCarServiceImpl();
        BsShoppingCar c = null;
        car.insertShopCar(c);
        req.getRequestDispatcher("/shopdetail.jsp").forward(req, resp);
    }
}
