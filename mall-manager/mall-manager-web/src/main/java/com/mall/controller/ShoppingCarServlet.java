package com.mall.controller;

import com.mall.service.*;
import com.mall.service.impl.IStockDaoImpl;
import com.mall.service.impl.ShpopingCarServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/car.do")
public class ShoppingCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fun = request.getParameter("_method");
        switch (fun) {
            case "showList":
                try {
                    showList(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "deleteCar":
                try {
                    deleteCar(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "addCar":
                try {
                    addCar(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "tocar":
                try {
                    tocar(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "stock":
                try {
                    stock(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }
    }

    private void tocar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");

        if (request.getParameter("id").equals("")) {
            request.getRequestDispatcher("/mycart.jsp").forward(request, response);
        }
        BsUserAccount bsUserAccount = (BsUserAccount) request.getSession().getAttribute("bsUserAccount");
        BsComStock bsComStock = (BsComStock) request.getSession().getAttribute("bsComStock");
        BsShoppingCar bsShoppingCar = new BsShoppingCar();
        System.out.println(bsComStock);
        bsShoppingCar.setID(bsUserAccount.getID());
        bsShoppingCar.setBsName(bsUserAccount.getBsName());
        bsShoppingCar.setsID(bsComStock.getsID());
        bsShoppingCar.setPrice(bsComStock.getPrice());
        bsShoppingCar.setColor(bsComStock.getColorID());
        bsShoppingCar.setSize(bsComStock.getSize());
        bsShoppingCar.setDescribe(bsComStock.getDescribe());
        bsShoppingCar.setPicture(bsComStock.getShowPicture());

        ShoppingCarService car1 = new ShpopingCarServiceImpl();
        car1.insertShopCar(bsShoppingCar);


        int id = Integer.parseInt(request.getParameter("id").trim());
        System.out.println(id);
        ShoppingCarService car = new ShpopingCarServiceImpl();

        List<BsShoppingCar> bsShoppingCarList = car.getShopCar(id);
        request.getSession().setAttribute("bsShoppingCarList", bsShoppingCarList);
        request.getRequestDispatcher("/mycart.jsp").forward(request, response);
    }

    private void stock(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();
        IStockDao stockDao = new IStockDaoImpl();
        String cID = request.getParameter("cID");

        String size = request.getParameter("size");
        System.out.println(size + "---" + cID);
        if (size.equals("S")) {
            BsComStock bsComStockS = stockDao.selectGoodsByCIDAndSize(cID, size);
            System.out.println(bsComStockS.getStock());
            request.getSession().setAttribute("bsComStockS", bsComStockS);
            System.out.println(bsComStockS);
            if (bsComStockS != null) {
                String msg = "S";
                out.print(msg);
            } else {
                String msg = "";
                out.print(msg);
            }
        } else if (size.equals("M")) {
            BsComStock bsComStockM = stockDao.selectGoodsByCIDAndSize(cID, size);
            request.getSession().setAttribute("bsComStockM", bsComStockM);
            System.out.println(bsComStockM);
            if (bsComStockM != null) {
                String msg = "M";
                out.print(msg);
            } else {
                String msg = "";
                out.print(msg);
            }
        } else if (size.equals("L")) {
            BsComStock bsComStockL = stockDao.selectGoodsByCIDAndSize(cID, size);
            System.out.println(bsComStockL);
            request.getSession().setAttribute("bsComStockL", bsComStockL);
            if (bsComStockL != null) {
                String msg = "L";
                out.print(msg);
            } else {
                String msg = "";
                out.print(msg);
            }
        } else if (size.equals("XL")) {
            BsComStock bsComStockXL = stockDao.selectGoodsByCIDAndSize(cID, size);
            request.getSession().setAttribute("bsComStockXL", bsComStockXL);
            System.out.println(bsComStockXL);
            if (bsComStockXL != null) {
                String msg = "XL";
                out.print(msg);
            } else {
                String msg = "";
                out.print(msg);
            }
        } else if (size.equals("XXL")) {
            BsComStock bsComStockXXL = stockDao.selectGoodsByCIDAndSize(cID, size);
            request.getSession().setAttribute("bsComStockXXL", bsComStockXXL);
            System.out.println(bsComStockXXL);
            if (bsComStockXXL != null) {
                String msg = "XXL";
                out.print(msg);
            } else {
                String msg = "";
                out.print(msg);
            }
        }
    }

        private void addCar (HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
            request.setCharacterEncoding("utf-8");
            response.setContentType("text/html;charset=utf-8");
            response.setCharacterEncoding("utf-8");
            BsUserAccount bsUserAccount = (BsUserAccount) request.getSession().getAttribute("bsUserAccount");
            BsComStock bsComStock = (BsComStock) request.getSession().getAttribute("bsComStock");
            ShoppingCarService car = new ShpopingCarServiceImpl();

            BsShoppingCar bsShoppingCar = new BsShoppingCar();
            bsShoppingCar.setID(bsUserAccount.getID());
            bsShoppingCar.setBsName(bsUserAccount.getBsName());
            bsShoppingCar.setsID(bsComStock.getsID());
            bsShoppingCar.setPrice(bsComStock.getPrice());
            bsShoppingCar.setColor(bsComStock.getColorID());
            bsShoppingCar.setSize(bsComStock.getSize());
            bsShoppingCar.setDescribe(bsComStock.getDescribe());
            bsShoppingCar.setPicture(bsComStock.getShowPicture());
            car.insertShopCar(bsShoppingCar);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }

        private void deleteCar (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
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

        private void showList (HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
            request.setCharacterEncoding("utf-8");
            response.setContentType("text/html;charset=utf-8");
            response.setCharacterEncoding("utf-8");

            if (request.getParameter("id").equals("")) {
                request.getRequestDispatcher("/mycart.jsp").forward(request, response);
            }

            int id = Integer.parseInt(request.getParameter("id").trim());
            System.out.println(id);
            ShoppingCarService car = new ShpopingCarServiceImpl();

            List<BsShoppingCar> bsShoppingCarList = car.getShopCar(id);
            request.getSession().setAttribute("bsShoppingCarList", bsShoppingCarList);
            request.getRequestDispatcher("/mycart.jsp").forward(request, response);
        }

        protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request, response);
        }
}