package com.mall.controller;

import com.mall.service.ListService;
import com.mall.service.impl.ListServiceImpl;
import com.mall.shitiClass.BS_user_account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/emp.do")

public class ListControllerServlet extends HttpServlet {
    public ListControllerServlet() {
    }

    @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fun = req.getParameter("_method");
        byte var5 = -1;
        switch (fun.hashCode()) {
            case -1335458389:
                if (fun.equals("delete")) {
                    var5 = 1;
                }
                break;
            case -1068795718:
                if (fun.equals("modify")) {
                    var5 = 2;
                }
                break;
          case -1716450956:
                if (fun.equals("seleceAll")) {
                    var5 = 3;
                }
                break;
            case -838846263:
                if (fun.equals("update")) {
                    var5 = 4;
                }
                break;

//            case 96417:
//                if (fun.equals("add")) {
//                    var5 = 0;
//                }
//                break;
            case 3522941:
                if (fun.equals("save")) {
                    var5 = 5;
                }
        }

        switch(var5) {
            case 5:
                try {
                    this.save(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case 1:
                try {
                    this.delete(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case 2:
                try {
                    this.modify(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
//            case 3:
//                this.save(req, resp);
//                break;
            case 3:
                this.selectAll(req, resp);
                break;
            case 4:
                try {
                    this.update(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
        }

    }

      @Override
      public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                 this.doGet(req, resp);
    }
    public void save(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        ListService Service = new ListServiceImpl();
        String nom = req.getParameter("user_ID");
        BS_user_account emplist = Service.queryListById(Integer.parseInt(nom));
        req.setAttribute("modify",emplist);
        req.getRequestDispatcher("/edit_user.jsp").forward(req, resp);
        //        ListService Service = new ListServiceImpl();
//        BS_user_account emp = new BS_user_account();
////        System.out.println(req.getCharacterEncoding());
////        System.out.println(req.getParameter("empname"));
////        System.out.println(new String(req.getParameter("empname").getBytes("iso-8859-1"), "UTF-8"));
////        emp.setEmpNo(Integer.parseInt(req.getParameter("empno")));
//        emp.setBS_name(new String(req.getParameter("BS_name").getBytes("iso-8859-1"), "UTF-8"));
//        emp.setID(Integer.valueOf(req.getParameter("ID")));
//
////        emp.setMgr(1004);
//        emp.setEmail(req.getParameter("email"));
//        emp.setTel(req.getParameter("tel"));
//        emp.setAddress(req.getParameter("address"));
//        Service.addList(emp);
//        req.getRequestDispatcher("/").forward(req, resp);
    }

    public void selectAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ListService empService = new ListServiceImpl();
        List<BS_user_account> empList = empService.queryAll();//查询所有list，赋值给emplist
        req.setAttribute("user_account", empList);
        req.getRequestDispatcher("user_list.jsp").forward(req,resp);
    }

    public void update(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        ListService Service = new ListServiceImpl();
        String nom = req.getParameter("user_ID");

//        BS_user_account bs = Service.queryListById(nom);
//        UserList_Dao dao = new UserList_Impl_Dao();
////        List<BS_user_account> depts = dao.selectAll();
////        BS_user_account b = dao.selectListById(bs.getBS_name());
////        req.setAttribute("dept", b);
////        req.setAttribute("depts", depts);
//        req.setAttribute("user_name", bs);
        req.getRequestDispatcher("edit_user.jsp").forward(req, resp);
    }

    public void modify(HttpServletRequest req, HttpServletResponse resp) throws IOException, SQLException, ServletException {
        ListService Service = new ListServiceImpl();
        BS_user_account user_account = new BS_user_account();
        req.setCharacterEncoding("UTF-8");
        String name=req.getParameter("user_name");
        String email=req.getParameter("user_email");
        String tel=req.getParameter("user_tel");
        String address =req.getParameter("user_address");
//        System.out.println(req.getParameter("user_ID"));
        Integer id=Integer.parseInt(req.getParameter("user_ID"));
//        bs.setEmpNo(Integer.parseInt(req.getParameter("empno")));
//        user_account.setName(req.getParameter("name"));
//       String result = req.getParameter("ID");
//       int nom = Integer.valueOf(result);
//       user_account.setID(nom);
        user_account.setUser_name(name);
        user_account.setUser_email(email);
        user_account.setUser_tel(tel);
        user_account.setUser_address(address);
        user_account.setUser_ID(id);
//        bs.setMgr(1004);
//        bs.setDeptno(Integer.parseInt(req.getParameter("deptno")));
//        System.out.println(user_account);

        Service.modifyList(user_account);
//        System.out.println("修改成功");
        System.out.println(user_account);
        req.getRequestDispatcher("/do").forward(req, resp);
    }

    public   void delete(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        ListService Service = new ListServiceImpl();
        String nom = req.getParameter("user_ID");
        Service.deleteListById(Integer.parseInt(nom));
        req.getRequestDispatcher("/do").forward(req, resp);
    }




}
