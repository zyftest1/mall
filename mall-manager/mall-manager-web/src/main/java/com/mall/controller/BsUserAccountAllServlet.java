package com.mall.controller;

import com.mall.service.BsUserAccount;
import com.mall.service.BsUserAddress;
import com.mall.service.IUserAddressService;
import com.mall.service.impl.IUserAddressServiceImpl;
import com.mall.service.impl.IUserServiceImpl;
import com.mall.service.IUserService;
import com.utils.MyUTF;
import com.wf.captcha.utils.CaptchaUtil;

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

/**
 * 有关用户表的一些操作,包含注册登录等
 */
@WebServlet("/BsUserAccount.do")
public class BsUserAccountAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fun = request.getParameter("_method");
        switch (fun){
            case "sign":
                sign(request,response);
                break;
            case "codeImg":
                codeImg(request,response);
                break;
            case "delete":
                delete(request,response);
                break;
            case "modify":
                modify(request,response);
                break;
            case "modifyPassword":
                modifyPassword(request,response);
                break;
            case "checkBsName":
                try {
                    checkBsName(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "login":
                login(request,response);
                break;
        }
    }


    private void codeImg(HttpServletRequest request, HttpServletResponse response) throws IOException {
        CaptchaUtil.outPng(request, response);
    }


    private void checkBsName(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();

        IUserService userService = new IUserServiceImpl();
        List<String> bsNameList = userService.findBsUserAccountColumnListAll();
        String bsName = request.getParameter("bsName");
        String msg = "";
        if (bsNameList.contains(bsName)){
            msg = "用户名被占用";
        }else{
            msg = "用户名可用";
        }
        out.print(msg);
    }

    /**
     * 修改我的信息界面
     * @param request
     * @param response
     * @throws IOException
     */
    private void modify(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");

        IUserService iUserService = new IUserServiceImpl();

        String oldBsName = MyUTF.getNewString(request.getParameter("oldBsName"));
        System.out.println(oldBsName);
        String bsName2 = MyUTF.getNewString(request.getParameter("bsName2"));
        System.out.println(bsName2);
        String name = MyUTF.getNewString(request.getParameter("name"));

        int age = Integer.parseInt(request.getParameter("age"));
        String birthday = request.getParameter("birthday");
        String idCard = MyUTF.getNewString(request.getParameter("idCard"));
        String address = MyUTF.getNewString(request.getParameter("address"));
        String job = MyUTF.getNewString(request.getParameter("job"));
        String email = MyUTF.getNewString(request.getParameter("email"));
        String tel = request.getParameter("tel");
        String password = request.getParameter("password");
        String payKey = request.getParameter("payKey");


        BsUserAccount bsUserAccount = new BsUserAccount();
        bsUserAccount.setBsName(bsName2);
        bsUserAccount.setName(name);
        bsUserAccount.setAge(age);
        bsUserAccount.setTel(tel);
        bsUserAccount.setBirthday(birthday);
        bsUserAccount.setIdCard(idCard);
        bsUserAccount.setAddress(address);
        bsUserAccount.setJob(job);
        bsUserAccount.setEmail(email);
        bsUserAccount.setPassword(password);
        bsUserAccount.setPayKey(payKey);

        iUserService.modifyBsUserAccount(bsUserAccount,oldBsName);
        BsUserAccount bsUserAccount2 = iUserService.findBsUserAccountByName(bsName2);
        request.getSession().setAttribute("bsUserAccount",bsUserAccount2);
        request.getRequestDispatcher("/setPersonal.jsp").forward(request,response);
    }

    /**
     * 修改用户密码
     * @param request
     * @param response
     */
    private void modifyPassword(HttpServletRequest request, HttpServletResponse response) {

    }

    /**
     * 登录
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");
        IUserService iUserService = new IUserServiceImpl();
        String bsName = MyUTF.getNewString(request.getParameter("bsName"));
        String password = MyUTF.getNewString(request.getParameter("password"));
        BsUserAccount bsUserAccount = iUserService.findBsUserAccountByName(bsName,password);
//        System.out.println(bsName+"--"+password);
//        System.out.println(bsUserAccount.toString());
        if (bsUserAccount.getID() == 0){
            request.setAttribute("message","中文乱码问题!");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }else if (bsUserAccount != null){
            bsUserAccount.setBsName(bsName);
            request.getSession().setAttribute("bsUserAccount",bsUserAccount);
//            System.out.println(bsUserAccount.getBsName()+"--"+bsUserAccount.getID());
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }else {
            request.setAttribute("message","用户名或密码有误,请重新输入!");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");
    }


    /**
     * 注册
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    private void sign(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");

        IUserService UserService = new IUserServiceImpl();
        String bsName = MyUTF.getNewString(request.getParameter("bsName"));
        String password = MyUTF.getNewString(request.getParameter("password"));
        String password2 = MyUTF.getNewString(request.getParameter("password2"));
        String tel = request.getParameter("tel");

        BsUserAccount bsUserAccount = new BsUserAccount();
        bsUserAccount.setBsName(bsName);
        System.out.println(bsName+"---"+password+"--"+password2);

        String code = MyUTF.getNewString(request.getParameter("code"));

        if (password.equals("")||password2.equals("")|| !password.equals(password2)){
            System.out.println("两次输入的密码不一致");
            request.getRequestDispatcher("/sign-in.jsp").forward(request,response);
        }else if (tel.equals("")) {
            System.out.println("电话号码为空");
            request.getRequestDispatcher("/sign-in.jsp").forward(request, response);
        }else{
            bsUserAccount.setPassword(password);
            bsUserAccount.setTel(tel);
            System.out.println(bsUserAccount.getPassword()+"---"+bsUserAccount.getBsName());
            UserService.addBsUserAccount(bsUserAccount);
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
        request.getRequestDispatcher("/login.jsp").forward(request,response);
        //        }else if (!CaptchaUtil.ver(code,request)){
//            System.out.println("验证不通过");
//            request.getRequestDispatcher("/sign-in.jsp").forward(request,response);
//        }
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");
        doPost(request, response);
    }
}
