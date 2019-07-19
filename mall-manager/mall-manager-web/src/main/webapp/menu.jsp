<%--
  Created by IntelliJ IDEA.
  User: liuxiangfu
  Date: 2019/7/13
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>左侧导航</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="style\adminStyle.css" rel="stylesheet" type="text/css">
    <script src="js\jquery.js"></script>
    <script src="js\public.js"></script>
</head>
<body style="background:#313131">
<div class="menu-list">
     <a href="main.jsp" target="mainCont" class="block menu-list-title center" style="border:none;margin-bottom:8px;color:#fff;">起始页</a>
    <ul>
        <li class="menu-list-title">
            <span>订单管理</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
                <li><a href="#" title="商品列表" target="mainCont">订单查询列表</a></li>
                <li><a href="#" title="商品列表" target="mainCont">订单结算</a></li>
            </ul>
        </li>

        <li class="menu-list-title">
            <span>商品管理</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
                <li><a href="/selectAll.do?_method=selectAll" title="商品列表" target="mainCont">商品信息</a></li>
                <li><a href="/select.do" title="商品分类" target="mainCont">库存信息</a></li>
        </li>
        <li class="menu-list-title">
            <span>服务中心</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
                <li><a href="#" title="会话功能" target="mainCont">客服中心</a></li>
            </ul>
        </li>


    </ul>
</div>
<div class="menu-footer">© 版权所有 2019 "DeathGhost"</div>

</body>
</html>
