<%--
  Created by IntelliJ IDEA.
  User: linqin
  Date: 2019/7/13
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="com.mall.BS_customer_Service" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>管理员回复</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="style/adminStyle.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.js"></script>
    <script src="js/public.js"></script>
</head>
<body>
<%
    BS_customer_Service bs = (BS_customer_Service) request.getAttribute("cust");
%>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="user"></i><em>管理员回复</em></span>
    </div>

    <form action="/customerModify.do?user_ID=<%=bs.getUser_ID()%>" METHOD="post">
    <tr>

        用户昵称: <th class="R-userTitle"><%=bs.getUser_name()%></th><br/>
        用户评论: <th class="R-userCont"><%=bs.getCs_content()%></th><br/>
        管理员回复:<input type="text" size="20px" name="cs_ID" value="<%=bs.getCs_ID()%>"><br/>

    <hr>

        <input type="submit" value="回复 " class="tdBtn" style="margin:8px 0;">

    </tr>
    </form>
</div>
</body>
</html>
