package com.mall.controller;

import com.alibaba.fastjson.JSON;
import com.mall.Area;
import com.mall.City;
import com.mall.Province;
import com.mall.service.*;
import com.mall.service.impl.AreaServiceImpl;
import com.mall.service.impl.CityServiceImpl;
import com.mall.service.impl.IUserAddressServiceImpl;
import com.mall.service.impl.ProvinceServiceImpl;
import com.utils.MyUTF;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.sql.SQLException;
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
                address(request,response);
                break;
            case "choose":
                choose(request,response);
                break;
            case "success":
                success(request,response);
                break;
            case "pro":
                pro(request,response);
                break;
            case "city":
                city(request,response);
                break;
            case "area":
                area(request,response);
                break;
        }
    }

    private void address(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");


        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        String userId=request.getParameter("userId");

//        if(userId==null){
//
//        }
        if (userId != null&&!userId.trim().equals("")) {
            int id = Integer.parseInt(request.getParameter("userId").trim());
            if (request.getParameter("ful") != null && !request.getParameter("ful").equals("")) {
                String ful = request.getParameter("ful").trim();
                System.out.println(id);
                List<BsUserAddress> bsUserAddressList = iUserAddressService.findBsUserAddressByUserId(id);
                request.setAttribute("bsUserAddressList", bsUserAddressList);
                request.setAttribute("ful", ful);
                request.getRequestDispatcher("/address.jsp").forward(request, response);
            } else {
                List<BsUserAddress> bsUserAddressList = iUserAddressService.findBsUserAddressByUserId(id);
                request.setAttribute("bsUserAddressList", bsUserAddressList);
                request.getRequestDispatcher("/address.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }

    }

    private void up(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        BsUserAddress bsUserAddress = new BsUserAddress();
        int id = Integer.parseInt(request.getParameter("id"));
        bsUserAddress.setAddID(Integer.parseInt(request.getParameter("addID")));
        bsUserAddress.setAddress(MyUTF.getNewString(request.getParameter("address")));
        bsUserAddress.setName(MyUTF.getNewString(request.getParameter("name")));
        bsUserAddress.setTel(request.getParameter("tel"));


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

       // String address = MyUTF.getNewString(request.getParameter("address"));

        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String area = request.getParameter("area");

        IProvinceService iProvinceService = new ProvinceServiceImpl();
        IAreaService iAreaService = new AreaServiceImpl();
        ICityService iCityService = new CityServiceImpl();
        Province p = null;
        City c = null;
        Area a = null;
        try {
            p = iProvinceService.findProvinceByPid(Integer.valueOf(province));
            c = iCityService.findCityByCid(Integer.valueOf(city));
            a = iAreaService.findAreaByAid(Integer.valueOf(area));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String pr = p.getProvince();
        String ci = c.getCity();
        String ar = a.getArea();
        String address = pr+ci+ar;
        System.out.println(address);
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
//        request.setAttribute("ful",request.getParameter("ful"));
//        request.setAttribute("addID",request.getParameter(  "addID"));
        String ful = request.getParameter("ful");
        String addID = request.getParameter("addID");
        int addid = -1;
        if(addID!=null&&!addID.equals("")){
            addid = Integer.parseInt(addID);
        }
        //  System.out.println(addid);
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        BsUserAddress bsUserAddress = new BsUserAddress();
        bsUserAddress = iUserAddressService.findBsUserAddressByAddID(addid);


        String address = bsUserAddress.getAddress();
        String tel = bsUserAddress.getTel();
        request.setAttribute("address",address);
        request.setAttribute("tel",tel);
        request.setAttribute("ful",ful);
        request.setAttribute("addID",bsUserAddress.getAddID());
        request.getRequestDispatcher("/successful.jsp").forward(request,response);
//        request.getRequestDispatcher("/mycart.jsp").forward(request,response);
    }

    private void success(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ful = request.getParameter("ful");
        String addID = request.getParameter("addID");
        int addid = -1;
        if(addID!=null&&!addID.equals("")){
            addid = Integer.parseInt(addID);
        }
      //  System.out.println(addid);
        IUserAddressService iUserAddressService = new IUserAddressServiceImpl();
        BsUserAddress bsUserAddress = new BsUserAddress();
        bsUserAddress = iUserAddressService.findBsUserAddressByAddID(addid);


        String address = bsUserAddress.getAddress();
        String tel = bsUserAddress.getTel();
        request.setAttribute("address",address);
        request.setAttribute("tel",tel);
        request.setAttribute("ful",ful);
        request.setAttribute("addID",bsUserAddress.getAddID());
        request.getRequestDispatcher("/successful.jsp").forward(request,response);
    }

    private void pro(HttpServletRequest request, HttpServletResponse response) throws IOException {
        IProvinceService iProvinceService = new ProvinceServiceImpl();
        List<Province> list = null;
        try {
            list = iProvinceService.findProvinces();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String pListJson = JSON.toJSONString(list);
        out.print(pListJson);
    }

    private void city(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int pid = Integer.valueOf(request.getParameter("pid"));
        ICityService iCityService = new CityServiceImpl();
        List<City> list = null;
        try {
            list = iCityService.findCitiesByPid(pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String pListJson = JSON.toJSONString(list);
        out.print(pListJson);
    }

    private void area(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int cid = Integer.valueOf(request.getParameter("cid"));
        IAreaService iAreaService = new AreaServiceImpl();
        List<Area> list = null;
        try {
            list = iAreaService.findAreasByCid(cid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String pListJson = JSON.toJSONString(list);
        out.print(pListJson);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

}
