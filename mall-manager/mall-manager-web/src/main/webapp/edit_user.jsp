<%--
  Created by IntelliJ IDEA.
  User: linqin
  Date: 2019/7/13
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="com.mall.BS_user_account" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>编辑用户资料</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="style/adminStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
    BS_user_account bsList = (BS_user_account)request.getAttribute("modify");
%>

<%--    <form method="post" action="/emp.do?user_ID=<%=emp.getUser_ID()%>&_method=modify">--%>


<form action="/emp.do?user_ID=<%=bsList.getUser_ID()%>&_method=modify" METHOD="post">
<%--<%--%>
<%--    BS_user_account bs = (BS_user_account) request.getAttribute("bs");--%>
<%--%>--%>

<%--    编号：<input type="text" size="20px" name="ID" value="<%=bs.getID()%>"><br/>--%>
    ID： <th class="R-userTitle"><%=bsList.getUser_ID()%></th><br/>
    用户昵称：<input type="text" size="20px" name="user_name" value="<%=bsList.getUser_name()%>"><br/>
    电子邮件：<input type="text" size="20px" name="user_email" value="<%=bsList.getUser_email()%>"><br/>
    手机号码：<input type="text" size="20px" name="user_tel" value="<%=bsList.getUser_tel()%>"><br/>
    收货地址：<input type="text" size="20px" name="user_address" value="<%=bsList.getUser_address()%>"><br/>
<%--</form>--%>
<br/>
    <input type="submit" value="提交">

</form>

</body>
</html>
