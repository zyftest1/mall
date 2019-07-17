<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="com.mall.BS_user_account" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>左侧导航</title>
    <meta http-equiv="Content-Type" content="text/jsp; charset=utf-8">
<%--    <link href="style/adminStyle.css" rel="stylesheet" type="text/css">--%>
<%--    <script src="js/jquery.js"></script>--%>
<%--    <script src="js/public.js"></script>--%>
</head>
<body >
<%
    List<BS_user_account> bs_ = (List<BS_user_account>) request.getAttribute("user_account");
%>
<%--<div class="menu-list">--%>
    <!-- <a href="main.html" target="mainCont" class="block menu-list-title center" style="border:none;margin-bottom:8px;color:#fff;">起始页</a>-->
<%--    <ul>--%>
<%--          <li class="menu-list-title">--%>
<%--          <span>订单管理</span>--%>
<%--           <i>◢</i>--%>
<%--         </li>--%>
<%--          <li>--%>
<%--           <ul class="menu-children">--%>
<%--            <li><a href="#" title="商品列表" target="mainCont">订单列表</a></li>--%>
<%--           </ul>--%>
<%--         </li>--%>

<%--          <li class="menu-list-title">--%>
<%--          <span>商品管理</span>--%>
<%--           <i>◢</i>--%>
<%--         </li>--%>
<%--         <li>--%>
<%--          <ul class="menu-children">--%>
<%--     <li><a href="#" title="商品列表" target="mainCont">商品列表</a></li>--%>
<%--       <li><a href="#" title="商品分类" target="mainCont">商品分类</a></li>--%>
<%--        <li><a href="#" title="商品分类" target="mainCont">商品下架</a></li>--%>
<%--     </ul>--%>
<%--     </li>--%>


            <span>用户管理</span>
            <i>◢</i>

<li>
<%for(BS_user_account bs : bs_){%>

            <ul >
                <li style="color:#192118"><a href="/emp.do?_method=seleceAll" title="用户列表" target="">用户列表</a></li>

                <li style="color:#192118"><a href="/customerRedirect.do" title="用户留言" target="">用户留言</a></li>
            </ul>

<%}%>
<%--    </ul>--%>
<%--</div>--%>
</li>
<div class="menu-footer">© 版权所有 2015 "DeathGhost"</div>
</body>
</html>

