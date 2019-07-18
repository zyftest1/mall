package com.mall.controller;

import com.mall.service.BsComStock;
import com.mall.service.IStockDao;
import com.mall.service.ITypeDao;
import com.mall.service.impl.IStockDaoImpl;
import com.mall.service.impl.ITypeDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 首页图片访问数据库
 */
@WebServlet("/index.do")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");

        ITypeDao typeDao=new ITypeDaoImpl();
        List<String> styles=typeDao.selectType();
        List<String> list1=typeDao.selecteDescribe(styles.get(0));
        List<String> list2=typeDao.selecteDescribe(styles.get(1));
        List<String> list3=typeDao.selecteDescribe(styles.get(2));
        List<String> list4=typeDao.selecteDescribe(styles.get(3));
        List<String> list5=typeDao.selecteDescribe(styles.get(4));
        List<String> list6=typeDao.selecteDescribe(styles.get(5));
        List<String> list7=typeDao.selecteDescribe(styles.get(6));
        List<String> list8=typeDao.selecteDescribe(styles.get(7));
        List<String> list9=typeDao.selecteDescribe(styles.get(8));
        List<String> list10=typeDao.selecteDescribe(styles.get(9));
        List<String> list11=typeDao.selecteDescribe(styles.get(10));
        List<String> list12=typeDao.selecteDescribe(styles.get(11));
        list1.add(0,styles.get(0));
        list2.add(0,styles.get(1));
        list3.add(0,styles.get(2));
        list4.add(0,styles.get(3));
        list5.add(0,styles.get(4));
        list6.add(0,styles.get(5));
        list7.add(0,styles.get(6));
        list8.add(0,styles.get(7));
        list9.add(0,styles.get(8));
        list10.add(0,styles.get(9));
        list11.add(0,styles.get(10));
        list12.add(0,styles.get(11));
        request.setAttribute("list1",list1);
        request.setAttribute("list2",list2);
        request.setAttribute("list3",list3);
        request.setAttribute("list4",list4);
        request.setAttribute("list5",list5);
        request.setAttribute("list6",list6);
        request.setAttribute("list7",list7);
        request.setAttribute("list8",list8);
        request.setAttribute("list9",list9);
        request.setAttribute("list10",list10);
        request.setAttribute("list11",list11);
        request.setAttribute("list12",list12);

        //首页图片
        IStockDao stockDao=new IStockDaoImpl();
//        List<BsComStock> bsComStocks=stockDao.selectIndexGoods();
//        request.setAttribute("indexGoods",bsComStocks);
//        System.out.println("bsComStocks:-----"+bsComStocks);
        //所有的c_id
        List<String> allCId=stockDao.selectCId();
        List<BsComStock> bsComStocks=new ArrayList<>();
        for (int i=0;i<allCId.size();i++){
            bsComStocks.add(stockDao.selectGoodsByCID(allCId.get(i)).get(0));
        }
        request.setAttribute("indexGoods",bsComStocks);

        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }


}
