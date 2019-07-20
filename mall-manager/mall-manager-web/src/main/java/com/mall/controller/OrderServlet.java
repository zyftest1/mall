package com.mall.controller;


import com.mall.Order;
import com.mall.service.*;
import com.mall.service.impl.*;
import com.utils.UUIDUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/order.do")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String method=request.getParameter("_method");
        switch (method){
            case "orderTotal":
                orderTotalServlet(request, response);
                break;
            case "orderUnreceive":
                orderUnreceiveServlet(request, response);
                break;
            case "waitEvaluate":
                waitEvaluateServlet(request,response);
                break;
            case "addOrder":
                try {
                    addOrder(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;

        }
    }

    private void addOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");

        if (request.getParameter("id").equals("")) {
            request.getRequestDispatcher("/mycart.jsp").forward(request, response);
        }

        int id = Integer.parseInt(request.getParameter("id").trim());
        String address = request.getParameter("oaddress");
        String tel = request.getParameter("tel");
        String usertel = request.getParameter("userTel");

        System.out.println(id);
        ShoppingCarService car = new ShpopingCarServiceImpl();

        List<BsShoppingCar> bsShoppingCarList = car.getShopCar(id);
//        List<BsOrder> bsOrderList = new ArrayList<BsOrder>();

        for (BsShoppingCar bsShoppingCar:bsShoppingCarList) {
            IOrderDao iOrderDao = new IOrderDaoImpl();
            BsOrder bsOrder = new BsOrder();
            bsOrder.setoID(UUIDUtils.createOrderId());
            bsOrder.setoName(bsShoppingCar.getBsName());
            bsOrder.setoAddress(address);
            bsOrder.setoTel(tel);
            bsOrder.setSchID(1);
            bsOrder.setID(bsShoppingCar.getID());
            bsOrder.setPrice(bsShoppingCar.getPrice());
            bsOrder.setTel(usertel);
            bsOrder.setsID(bsShoppingCar.getsID());
            bsOrder.setQuantity(bsShoppingCar.getQuantity());
            iOrderDao.addOrder(bsOrder);
            System.out.println(bsOrder);
            car.deletaShopCar(bsShoppingCar.getCarID());
        }
        orderTotalServlet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    //展示全部订单
    public void orderTotalServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IOrderDao orderService=new IOrderDaoImpl();
        String id=request.getParameter("id");
        int uid=-1;
        System.out.println("id----------====:"+id);
        if(id!=null&&!id.equals("")){
            uid=Integer.parseInt(id);
        }
        List<BsOrder> orderList=orderService.selectAllOrderByUid(uid);
        IStockDao stockDao=new IStockDaoImpl();
        IScheduleDao scheduleDao=new IScheduleDaoImpl();
        Map map=new HashMap();
        List<Order> ordersDetailList=new ArrayList<>();
        for (int i=0;i<orderList.size();i++){
           Order order=new Order();
           BsOrder bsOrder=orderList.get(i);
           order.setGoodsName(stockDao.selectGoodsNameById(bsOrder.getsID()));
           order.setSinglePrice(bsOrder.getPrice());
           order.setGoodsNum(bsOrder.getQuantity());
           order.setTotalPrice(bsOrder.getQuantity()*bsOrder.getPrice());
           order.setState(scheduleDao.selectDescribeBySchId(bsOrder.getSchID()));
           order.setOid(bsOrder.getoID());
           order.setSid(bsOrder.getsID());
           ordersDetailList.add(order);


        }
        request.setAttribute("orders", ordersDetailList);
//        System.out.println(orderList);
        request.getRequestDispatcher("/orderlist.jsp").forward(request, response);
    }

    //待收货订单
    public void orderUnreceiveServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IOrderDao orderService=new IOrderDaoImpl();
        String id=request.getParameter("id");
        int uid=-1;
        if(!id.equals("")){
            uid=Integer.parseInt(id);
        }
        List<BsOrder> orderList=orderService.selectUnreceiveOrderByUid(uid);
        IStockDao stockDao=new IStockDaoImpl();
        IScheduleDao scheduleDao=new IScheduleDaoImpl();
        Map map=new HashMap();
        List<Order> ordersDetailList=new ArrayList<>();
        for (int i=0;i<orderList.size();i++){
            Order order=new Order();
            BsOrder bsOrder=orderList.get(i);
            order.setGoodsName(stockDao.selectGoodsNameById(bsOrder.getsID()));
            order.setSinglePrice(bsOrder.getPrice());
            order.setGoodsNum(bsOrder.getQuantity());
            order.setTotalPrice(bsOrder.getQuantity()*bsOrder.getPrice());
            order.setState(scheduleDao.selectDescribeBySchId(bsOrder.getSchID()));
            order.setOid(bsOrder.getoID());
            order.setSid(bsOrder.getsID());
            ordersDetailList.add(order);

        }
        request.setAttribute("orders", ordersDetailList);
        System.out.println("order-----"+ordersDetailList);
        request.getRequestDispatcher("/order_received.jsp").forward(request, response);
    }

    //待评价订单
    public void waitEvaluateServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IOrderDao orderService=new IOrderDaoImpl();
        String id=request.getParameter("id");
        int uid=-1;
        if(!id.equals("")){
            uid=Integer.parseInt(id);
        }
        List<BsOrder> orderList=orderService.selectUnEvaluateOrderByUid(uid);
        IStockDao stockDao=new IStockDaoImpl();
        IScheduleDao scheduleDao=new IScheduleDaoImpl();
        Map map=new HashMap();
        List<Order> ordersDetailList=new ArrayList<>();
        for (int i=0;i<orderList.size();i++){
            Order order=new Order();
            BsOrder bsOrder=orderList.get(i);
            order.setGoodsName(stockDao.selectGoodsNameById(bsOrder.getsID()));
            order.setSinglePrice(bsOrder.getPrice());
            order.setGoodsNum(bsOrder.getQuantity());
            order.setTotalPrice(bsOrder.getQuantity()*bsOrder.getPrice());
            order.setState(scheduleDao.selectDescribeBySchId(bsOrder.getSchID()));
            order.setOid(bsOrder.getoID());
            order.setSid(bsOrder.getsID());
            ordersDetailList.add(order);

        }
//        request.setAttribute("oid",);
        request.setAttribute("orders", ordersDetailList);
        System.out.println("order-----"+ordersDetailList);
        request.getRequestDispatcher("/order_unshipped.jsp").forward(request, response);
    }
}
