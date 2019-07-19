package com.mall.controller.stock;

import com.mall.stock.ComStock;
import com.mall.IComStockService;
import com.mall.impl.stock.ComStockServiceImpl;
import com.mall.stock.PageBean;

import javax.servlet.ServletException;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/select.do")
public  class ComStockFindAll extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IComStockService service =new ComStockServiceImpl();
//获取当前页的参数（第一次访问当前页为null）
        String currPage=req.getParameter("currentPage");
//判断 第一次是设置默认值
        if (currPage==null||"".equals(currPage)){
            currPage="1";
        }
        //转换   从jsp获取的都是字符串型的    需转换为整形才能保存到javaBean中
int currentPage=Integer.parseInt(currPage);
        PageBean<ComStock> pb=new PageBean<ComStock>();
        pb.setCurrentPage(currentPage);
        //调用service层
        service.getAll(pb);
        System.out.println(pb);
        req.setAttribute("pageBean",pb);
        req.getRequestDispatcher("/sku.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
