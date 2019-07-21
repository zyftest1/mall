<<<<<<< HEAD
<%@ page import="java.util.List" %>
<%@ page import="com.mall.shitiClass.BS_order" %><%--
=======
<%@ page import="com.mall.BS_order" %>
<%@ page import="java.util.List" %><%--
>>>>>>> ab3227607e95ccabc95db2b3dcba3f695e28fd74
  Created by IntelliJ IDEA.
  User: linqin
  Date: 2019/7/18
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<%--    <link href="style/adminStyle.css" rel="stylesheet" type="text/css">--%>
<%--    <script src="js/jquery.js"></script>--%>
<%--    <script src="js/public.js"></script>--%>

</head>
<body>
<%
    List<BS_order> bsList =  (List<BS_order>)request.getAttribute("orderList");
%>

<table class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="user"></i><em>订单列表</em></span>
    </div>

    <tbody border="1px">
    <thead>
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
    <th>修改</th>
    <th>删除</th>
    </thead>
    <tbody>
        <%for(BS_order emp : bsList){%>
        <tr>

            <td class="middle"><%=emp.getO_ID()%></td>
            <td class="center"><%=emp.getO_name()%></td>
            <td class="center"><%=emp.getO_address()%></td>
            <td class="center"><%=emp.getO_tel()%></td>
            <td class="center"><%=emp.getSch_ID()%></td>
            <td class="center"><%=emp.getUser_ID()%></td>
            <td class="center"><%=emp.getUser_tel()%></td>
            <td class="center"><%=emp.getS_ID()%></td>
            <td class="center"><%=emp.getO_price()%></td>
            <td class="center"><%=emp.getQuantity()%></td>
            <td class="center"><%=emp.getO_date()%></td>
            <td><a href="#" class="inline-block" title="编辑">修改</a></td>
            <td><a href="#" class="inline-block" title="删除">删除</a></td>
        </tr>
            <%}%>
    </tbody>


</table>
</body>
</html>
