package com.mall.controller;//package com.mall.controller;

import com.mall.BS_user_account;
import com.mall.service.ListService;
import com.mall.service.impl.ListServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
@WebServlet("/update.do")
public class listUpdateServlet extends HttpServlet {
    public listUpdateServlet() {
        }

        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            ListService listService = new ListServiceImpl();
            String ID = req.getParameter("user_ID");
            BS_user_account user_account = null;
            try {
                user_account = listService.queryListById(Integer.parseInt(ID));
            } catch (SQLException e) {
                e.printStackTrace();
            }
//            DeptDao dao = new DeptImpl();
//            List<Dept> depts = dao.selectAll();
//            Dept dept = dao.selectDeptByNo(emp.getDeptno());
//            req.setAttribute("dept", dept);
//            req.setAttribute("depts", depts);
            req.setAttribute("BS_user_account", user_account);
            req.getRequestDispatcher("edit_user.jsp").forward(req, resp);
        }

        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            doGet(req, resp);
        }
    }