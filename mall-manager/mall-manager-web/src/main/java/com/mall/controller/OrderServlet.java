package com.mall.controller;


import com.mall.Order;
import com.mall.service.BsOrder;
import com.mall.service.IOrderDao;
import com.mall.service.IScheduleDao;
import com.mall.service.IStockDao;
import com.mall.service.impl.IOrderDaoImpl;
import com.mall.service.impl.IOrderServiceImpl;
import com.mall.service.impl.IScheduleDaoImpl;
import com.mall.service.impl.IStockDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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

        }
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
        if(!id.equals("")){
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
            ordersDetailList.add(order);

        }
        request.setAttribute("orders", ordersDetailList);
        System.out.println("order-----"+ordersDetailList);
        request.getRequestDispatcher("/order_unshipped.jsp").forward(request, response);
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
            ordersDetailList.add(order);

        }
        request.setAttribute("orders", ordersDetailList);
        System.out.println("order-----"+ordersDetailList);
        request.getRequestDispatcher("/order_unshipped.jsp").forward(request, response);
    }
}
