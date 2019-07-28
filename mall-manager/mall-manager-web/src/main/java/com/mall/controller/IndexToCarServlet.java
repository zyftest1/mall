package com.mall.controller;

import com.mall.service.BsComComment;
import com.mall.service.BsComStock;
import com.mall.service.ICommentDao;
import com.mall.service.IStockDao;
import com.mall.service.impl.ICommentDaoImpl;
import com.mall.service.impl.IStockDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 将商品信息传到购买界面
 */
@WebServlet("/index2car.do")
public class IndexToCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        IStockDao stockDao=new IStockDaoImpl();
        String s_id=request.getParameter("sID");
//        System.out.println("sid:;;;;;;;"+s_id);
        BsComStock bsComStock=stockDao.selectOneGoodsById(s_id);
//        System.out.println("bsComStock=-=-=-==-"+bsComStock);
        request.setAttribute("goods",bsComStock);

        ICommentDao commentDao=new ICommentDaoImpl();
        //得到某一个商品的所有的评论
        List<BsComComment> bsComCommentList=commentDao.selectAllCommentBySid(s_id);
        request.setAttribute("allComment",bsComCommentList);

        System.out.println("allComment:"+bsComCommentList);

        System.out.println(bsComStock);
        String cID = bsComStock.getcID();


        BsComStock bsComStockS = stockDao.selectGoodsByCIDAndSize(cID,"S");
        BsComStock bsComStockM = stockDao.selectGoodsByCIDAndSize(cID,"M");
        BsComStock bsComStockL = stockDao.selectGoodsByCIDAndSize(cID,"L");
        BsComStock bsComStockXL = stockDao.selectGoodsByCIDAndSize(cID,"XL");
        BsComStock bsComStockXXL = stockDao.selectGoodsByCIDAndSize(cID,"XXL");


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
