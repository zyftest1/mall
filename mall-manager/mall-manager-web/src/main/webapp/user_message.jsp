<%--
  Created by IntelliJ IDEA.
  User: linqin
  Date: 2019/7/13
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="com.mall.shitiClass.BS_customer_Service" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>用户留言</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="style/adminStyle.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.js"></script>
    <script src="js/public.js"></script>
</head>
<body>
<%
    List<BS_customer_Service> bs_ = (List<BS_customer_Service>) request.getAttribute("customer");
%>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="user"></i><em>用户留言</em></span>
    </div>
    <table class="list-style Interlaced">
        <tr>
            <th>用户ID</th>
            <th>留言时间</th>
            <th>用户昵称</th>
            <th>用户留言</th>
            <th>管理员回复</th>
            <th>回复</th>
        </tr>

        <%for(BS_customer_Service bs : bs_){%>
        <tr>
            <td class="center"><%=bs.getUser_ID()%></td>
            <td class="center"><%=bs.getCs_date()%></td>
            <td class="center"><%=bs.getUser_name()%></td>
            <td class="center"><%=bs.getCs_content()%></td>
            <td class="center"><%=bs.getCs_ID()%></td>
            <td class="center"><a href="/selectCustomerById.do?user_ID=<%=bs.getUser_ID()%>" class="inline-block" title="回复">回复</a>
<%--                <a class="inline-block" title="移除"><img src="images/icon_drop.gif"></a>--%></td>
            <%}%>
        </tr>
    </table>
    <!-- BatchOperation -->
</div>
</body>
</html>
