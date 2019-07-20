<%--
  Created by IntelliJ IDEA.
  User: liuxiangfu
  Date: 2019/7/19
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link href="style/adminStyle.css" style="text:css" rel="stylesheet"/>
    <title>商品信息</title>
</head>

<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i></i><em>商品信息</em></span>
    </div>
    <form name="form" action="selectAll.do" method="post">
        <table class="list-style" >
            <thead>
            <tr>
                <th>订单号</th>
                <th>收件人姓名</th>
                <th>收货地址</th>
                <th>收件人电话</th>
                <th>订单进度</th>
                <th>购买用户的id</th>
                <th>用户电话</th>
                <th>库存商品的id</th>
                <th>价格</th>
                <th>数量</th>
                <th>创建时间</th>
                <th>操作</th>

            </tr>
            </thead>


            <tbody>

            <c:choose>
                <c:when test="${not empty requestScope.orders}">
                    <c:forEach items="${requestScope.orders}" var="order">
                        <tr>
                            <td>${order.o_id}</td>
                            <td>${order.o_name}</td>
                            <td>${order.o_address}</td>
                            <td>${order.o_tel}</td>
                            <td>${order.sch}</td>
                            <td>${order.user_id}</td>
                            <td>${order.user_tel}</td>
                            <td>${order.s_id}</td>
                            <td>${order.o_price}</td>
                            <td>${order.quantity}</td>
                            <td>${order.o_date}</td>
                            <c:if test="${order.sch_id==1}">
                            <td><span ><a href="/order.do?o_id=${order.o_id}&s_id=${order.s_id}" class="pt-link-btn" >发货</a></span></td>

                            </c:if>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="8">对不起，没有你要找的数据</td>
                    </tr>
                </c:otherwise>
            </c:choose>

            </tbody>
        </table>
    </form>
    <!-- BatchOperation -->
    <div style="overflow:hidden">
        <!-- Operation -->
        <div class="BatchOperation fl">

        </div>
    </div>
</div>
</body>

</html>
