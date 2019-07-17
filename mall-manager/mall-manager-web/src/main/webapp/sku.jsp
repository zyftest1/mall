<%@ page import="java.util.List" %>
<%@ page import="com.mall.ComStock" %><%--
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
<%List<ComStock> comStock = (List<ComStock>)request.getAttribute("comStockList");%>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i></i><em>库存信息</em></span>
        <span class="modular fr"><a href="add_category.html" class="pt-link-btn">+添加新库存</a></span>
    </div>
<form action="/selectAll.do" method="post">
    <table class="list-style" >
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
        </tr>
        </thead>
        <tbody>
        <%for(ComStock coms:comStock){%>
        <tr>
            <td><%=coms.getsID()%></td>
            <td><%=coms.getcID()%></td>
            <td><%=coms.getColorID()%></td>
            <td><%=coms.getSize()%></td>
            <td><%=coms.getStock()%></td>
            <td><%=coms.getWareID()%></td>
            <td><%=coms.getPrice()%></td>
            <td><%=coms.getDescribe()%></td>
        </tr>
        <%}%>
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
