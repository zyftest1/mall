package com.mall.controller;

import com.mall.BsComStock;
import com.mall.BsOrder;
import com.mall.Order;
import com.mall.service.test.IOrderDao;
import com.mall.service.test.IOrderService;
import com.mall.service.test.IScheduleDao;
import com.mall.service.test.IStockDao;
import com.mall.service.test.impl.IOrderDaoImpl;
import com.mall.service.test.impl.IOrderServiceImpl;
import com.mall.service.test.impl.IScheduleDaoImpl;
import com.mall.service.test.impl.IStockDaoImpl;

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
        List<BsOrder> orderList=orderService.selectAllOrderByUid(100002);
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
        List<BsOrder> orderList=orderService.selectUnreceiveOrderByUid(100002);
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
        List<BsOrder> orderList=orderService.selectUnEvaluateOrderByUid(100002);
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
