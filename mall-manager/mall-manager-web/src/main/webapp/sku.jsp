<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<%--
  Created by IntelliJ IDEA.
  User: liuxiangfu
  Date: 2019/7/14
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>库存信息</title>
    <link href="style\adminStyle.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i></i><em>库存信息</em></span>
        <span class="modular fr"><a href="/add.do" class="pt-link-btn" target="mainCont">+添加新库存</a></span>
    </div>

    <table class="list-style">
        <thead>
        <tr>
            <th>库存商品ID</th>
            <th>商品ID</th>
            <th>颜色ID</th>
            <th>尺寸</th>
            <th>库存量</th>
            <th>仓库ID</th>
            <th>价格</th>
            <th>商品描述</th>
            <th colspan="2">操作</th>
        </tr>
        </thead>
        <tbody>
<c:forEach items="${requestScope.comStockList}" var="coms">
        <tr>
            <td>${coms.s_id}</td>
            <td>${coms.c_id}</td>
            <td>${coms.color_id}</td>
            <td>${coms.size}</td>
            <td>${coms.stock}</td>
            <td>${coms.ware_id}</td>
            <td>${coms.s_price}</td>
            <td>${coms.s_describe}</td>
            <td><a href="${pageContext.request.contextPath}/update.do?s_id=${coms.s_id}">修改</a></td>
            <td><a href="${pageContext.request.contextPath}/delete.do?s_id=${coms.s_id}">删除</a></td>
        </tr>
</c:forEach>>
        </tbody>
    </table>
</div>
</body>
</html>