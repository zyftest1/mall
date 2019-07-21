<%--
  Created by IntelliJ IDEA.
  User: linqin
  Date: 2019/7/13
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>

<%@ page import="com.mall.shitiClass.BS_user_account" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>用户列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="style/adminStyle.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.js"></script>
    <script src="js/public.js"></script>
</head>
<body>
<%
    List<BS_user_account> bsList =  (List<BS_user_account>)request.getAttribute("user_account");
%>
<%--<%BS_user_account bs = (BS_user_account) request.getAttribute("bs");%>--%>

<table class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="user"></i><em>用户列表</em></span>
    </div>

    <table class="list-style Interlaced">
    <tbody border="1px">
        <thead>
            <th>编号</th>
            <th>用户昵称</th>
            <th>邮件地址</th>
            <th>手机号码</th>
            <th>姓名    </th>
            <th>收货地址</th>
            <th>注册日期</th>
            <th>修改</th>
            <th>删除</th>
        </thead>
      <tbody>
      <%for(BS_user_account emp : bsList){%>
        <tr>

            <td class="middle"><%=emp.getUser_ID()%></td>
            <td class="center"><%=emp.getUser_name()%></td>
            <td class="center"><%=emp.getUser_email()%></td>
            <td class="center"><%=emp.getUser_tel()%></td>
            <td class="center"><%=emp.getUser_true_name()%></td>
            <td class="center"><%=emp.getUser_address()%></td>
            <td class="center"><%=emp.getUser_createDate()%></td>
            <td><a href="/emp.do?user_ID=<%=emp.getUser_ID()%>&_method=save" class="inline-block" title="编辑">修改</a></td>
            <td><a href="/emp.do?user_ID=<%=emp.getUser_ID()%>&_method=delete" class="inline-block" title="删除">删除</a></td>

        </tr>
        <%}%>
      </tbody>
    </table>

</table>

</body>
</html>