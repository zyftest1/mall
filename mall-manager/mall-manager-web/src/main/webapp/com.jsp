<%--
  Created by IntelliJ IDEA.
  User: zjc
  Date: 2019/7/16
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mall.manager.pojo.BSCommodity" %>
<%@ page import="java.util.List" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link href="style/adminStyle.css" style="text:css" rel="stylesheet"/>
    <title>商品信息</title>
</head>
<body>
<%--<%List<BSCommodity> bsCommodities = (List<BSCommodity>)request.getAttribute("bsCommodities");%>--%>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i></i><em>商品信息</em></span>
        <span class="modular fr"><a href="addCom.do" class="pt-link-btn">+添加新商品</a></span>
    </div>
    <form action="selectAll.do" method="post">
        <table class="list-style" >
            <thead>
            <tr>
                <th>商品</th>
                <th>类型</th>
                <th>材质</th>
                <th>品牌</th>
                <th>款式</th>
                <th>创建日期</th>
                <th>商品描述</th>
                <th>操作</th>

            </tr>
            </thead>
<%--            <tbody>--%>
<%--            <%for(BSCommodity com:bsCommodities){%>--%>
<%--            <tr>--%>
<%--                <td><%=com.getC_id()%></td>--%>
<%--                <td><%=com.getType_id()%></td>--%>
<%--                <td><%=com.getMat_ID()%></td>--%>
<%--                <td><%=com.getBrand_ID()%></td>--%>
<%--                <td><%=com.getEdition()%></td>--%>
<%--                <td><%=com.getC_date()%></td>--%>
<%--                <td><%=com.getC_describe()%></td>--%>
<%--            </tr>--%>
<%--            <%}%>--%>
<%--            </tbody>--%>

        <tbody>

        <c:forEach items="${bsCommodities}" var="com">
            <tr>
                <td>${com.c_id}</td>
                <td>${com.type_id}</td>
                <td>${com.mat_ID}</td>
                <td>${com.brand_ID}</td>
                <td>${com.edition}</td>
                <td>${com.c_date}</td>
                <td>${com.c_describe}</td>
                <td>
                    <span class="modular fr"><a href="" class="pt-link-btn">删除</a></span>
                    <span class="modular fr"><a href="" class="pt-link-btn">修改</a></span>
                </td>
            </tr>
        </c:forEach>
        </tbody>
        </table>
    </form>

    <!-- BatchOperation -->
    <div style="overflow:hidden">
        <!-- Operation -->
        <div class="BatchOperation fl">
            <input type="checkbox" user_id="del">
            <label for="del" class="btnStyle middle">全选</label>
            <input type="button" value="批量删除" class="btnStyle">
        </div>
        <!-- turn page -->
        <div class="turnPage center fr">
            <a>第一页</a>
            <a>1</a>
            <a>最后一页</a>
        </div>
    </div>
</div>
</body>
</html>
