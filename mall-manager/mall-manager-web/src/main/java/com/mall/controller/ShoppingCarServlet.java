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
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/car.do")
public class ShoppingCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fun = request.getParameter("_method");
        switch (fun){
            case "showList":
                try {
                    showList(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "deleteCar":
                try {
                    deleteCar(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "addCar":
                try {
                    addCar(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }
    }

    private void addCar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");

        ShoppingCarService car = new ShpopingCarServiceImpl();
        BsShoppingCar c = null;
        car.insertShopCar(c);
        request.getRequestDispatcher("/shopdetail.jsp").forward(request, response);
    }

    private void deleteCar(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");

        int carID = Integer.parseInt(request.getParameter("carID"));
        int id = Integer.parseInt(request.getParameter("id"));
        ShoppingCarService car = new ShpopingCarServiceImpl();
        car.deletaShopCar(carID);

        List<BsShoppingCar> bsShoppingCarList = car.getShopCar(id);
        request.getSession().setAttribute("bsShoppingCarList", bsShoppingCarList);
        request.getRequestDispatcher("/mycart.jsp").forward(request, response);
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");
        if (request.getParameter("id").equals("")){
            request.getRequestDispatcher("/mycart.jsp").forward(request, response);
        }
        int id = Integer.parseInt(request.getParameter("id").trim());
        System.out.println(id);
        ShoppingCarService car = new ShpopingCarServiceImpl();

        List<BsShoppingCar> bsShoppingCarList = car.getShopCar(id);
        request.getSession().setAttribute("bsShoppingCarList", bsShoppingCarList);
        request.getRequestDispatcher("/mycart.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
