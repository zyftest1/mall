package com.mall.controller;

import com.mall.service.BsUserAddress;
import com.mall.service.IUserAddressService;
import com.mall.service.impl.IUserAddressServiceImpl;
import com.utils.MyUTF;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.List;

@WebServlet("/bsAddress.do")
public class BsUserAddresServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id = request.getParameter();
        String fun = request.getParameter("_method");
        switch (fun){
            case "add":
                add(request,response);
                break;
            case "delete":
                delete(request,response);
                break;
            case"save":
                save(request,response);
                break;
            case "update":
                update(request,response);
                break;
            case "up":
                up(request,response);
                break;
            case "address":
                System.out.println("000000000000");
                address(request,response);
                break;
            case "choose":
                choose(request,response);
                break;
            case "success":
                success(request,response);
                break;
        }
    }

    private void address(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("11111111111111111");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");


        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        int id = Integer.parseInt(request.getParameter("userId").trim());

        System.out.println(id);
        List<BsUserAddress> bsUserAddressList = iUserAddressService.findBsUserAddressByUserId(id);
        request.setAttribute("bsUserAddressList", bsUserAddressList);
        request.getRequestDispatcher("/address.jsp").forward(request, response);
    }

    private void up(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        BsUserAddress bsUserAddress = new BsUserAddress();
        int id = Integer.parseInt(request.getParameter("id"));
        bsUserAddress.setAddID(Integer.parseInt(request.getParameter("addID")));
        bsUserAddress.setAddress(MyUTF.getNewString(request.getParameter("address")));
        bsUserAddress.setName(MyUTF.getNewString(request.getParameter("name")));
        bsUserAddress.setTel(request.getParameter("tel"));

        System.out.println("aaaaa"+bsUserAddress);
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        iUserAddressService.modifyBsUserAddress(bsUserAddress);


        List<BsUserAddress> bsUserAddressList = iUserAddressService.findBsUserAddressByUserId(id);
        request.setAttribute("bsUserAddressList", bsUserAddressList);
        request.getRequestDispatcher("/address.jsp").forward(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();

        int addID = Integer.valueOf(request.getParameter("addID"));
        System.out.println(addID);

        BsUserAddress bsUserAddress = iUserAddressService.findBsUserAddressByAddID(addID);
        System.out.println("bsUserAddress"+bsUserAddress);
        request.setAttribute("bsUserAddress",bsUserAddress);
        request.getRequestDispatcher("/update.jsp").forward(request,response);
    }

    private void save(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("userId"));
        System.out.println(id);
        String address = MyUTF.getNewString(request.getParameter("address"));
        String name = MyUTF.getNewString(request.getParameter("name"));
        String tel = request.getParameter("tel");

        BsUserAddress bsUserAddress = new BsUserAddress();
        bsUserAddress.setID(id);
        bsUserAddress.setAddress(address);
        bsUserAddress.setName(name);
        bsUserAddress.setTel(tel);
        System.out.println(bsUserAddress);
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        iUserAddressService.addBsUserAddress(bsUserAddress);
        address(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int addID = Integer.valueOf(request.getParameter("addID"));
        System.out.println(addID);
        int id = Integer.parseInt(request.getParameter("id"));
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        iUserAddressService.removeBsUserAddressByAddid(addID);
        List<BsUserAddress> bsUserAddressList = iUserAddressService.findBsUserAddressByUserId(id);
        request.setAttribute("bsUserAddressList", bsUserAddressList);
        request.getRequestDispatcher("/address.jsp").forward(request, response);
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/add.jsp").forward(request,response);
    }

    private void choose(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("addID",request.getParameter(  "addID"));
        request.getRequestDispatcher("/mycart.jsp").forward(request,response);
    }

   private void success(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String ful = request.getParameter("ful");
       String addID = request.getParameter("addID");
       System.out.println("addID::::::"+addID);
       int addid = -1;
       if(addID!=null&&!addID.equals("")){
            addid = Integer.parseInt(addID);
       }
       System.out.println(addid);
       IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
       BsUserAddress bsUserAddress = new BsUserAddress();
       bsUserAddress = iUserAddressService.findBsUserAddressByAddID(addid);


       String address = bsUserAddress.getAddress();
       request.setAttribute("address",address);

       request.setAttribute("ful",ful);
       request.getRequestDispatcher("/successful.jsp").forward(request,response);
   }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

}
