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
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i></i><em>库存信息</em></span>
        <span class="modular fr"><a href="/add.do" class="pt-link-btn" target="mainCont">+添加新库存</a></span>
<%--        <form class="form-inline" action="">--%>
<%--            <div class="form-group">--%>

<%--                <input type="text" class="form-control" id="exampleInputName2" placeholder="请输入库存id进行搜索">--%>
<%--            </div>--%>

<%--            <button type="submit" class="btn btn-primary">搜索</button>--%>
<%--        </form>--%>
    </div>

    <table class="list-style">
        <thead>
        <tr>
            <th>库存商品号</th>
            <th>商品种类号</th>
            <th>颜色</th>
            <th>尺寸</th>
            <th>库存量</th>
            <th>仓库号</th>
            <th>价格</th>
            <th>商品描述</th>
            <th colspan="2">操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${requestScope.pageBean.list}" var="coms">
            <tr>
                <td>${coms.s_id}</td>
                <td>${coms.c_id}</td>
                <td>${coms.color_id}</td>
                <td>${coms.size}</td>
                <td>${coms.stock}</td>
                <td>${coms.ware_id}</td>
                <td>${coms.s_price}</td>
                <td>${coms.s_describe}</td>
                <td><a href="${pageContext.request.contextPath}/update.do?s_id=${coms.s_id}" class="pt-link-btn">修改</a></td>
                <td><a href="javascript:if(confirm('确定删除吗')) location='${pageContext.request.contextPath}/delete.do?s_id=${coms.s_id}'" class="pt-link-btn">删除</a></td>
<%--                <td><a href="${pageContext.request.contextPath}/delete.do?s_id=${coms.s_id}" >删除</a></td>--%>
            </tr>
        </c:forEach>
<tr>



</tr>
        </tbody>
    </table>
    <div align="right">
       <span color="#33A6DC">第${requestScope.pageBean.currentPage}页，共${requestScope.pageBean.totalPage}页</span>
        <a href="${pageContext.request.contextPath }/select.do?currentPage=1">首页</a>
        <a href="${pageContext.request.contextPath }/select.do?currentPage=${requestScope.pageBean.currentPage - 1}">上一页</a>
        <a href="${pageContext.request.contextPath }/select.do?currentPage=${requestScope.pageBean.currentPage + 1}">下一页</a>
        <a href="${pageContext.request.contextPath }/select.do?currentPage=${requestScope.pageBean.totalPage}">末页</a>
    </div>
</div>
</body>
</html>
