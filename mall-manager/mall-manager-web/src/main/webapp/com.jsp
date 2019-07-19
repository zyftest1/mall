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
                <th colspan="2">操作</th>

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

        <c:choose>
            <c:when test="${not empty requestScope.pageBean.list}">
                <c:forEach items="${requestScope.pageBean.list}" var="com">
                    <tr>
                        <td>${com.c_id}</td>
                        <td>${com.type_id}</td>
                        <td>${com.mat_ID}</td>
                        <td>${com.brand_ID}</td>
                        <td>${com.edition}</td>
                        <td>${com.c_date}</td>
                        <td>${com.c_describe}</td>
                        <td><span ><a href="/updCom?c_id=${com.c_id}" class="pt-link-btn">修改</a></span></td>
                        <td><span ><a href="/delCom.do?c_id=${com.c_id}" class="pt-link-btn" >删除</a></span></td>
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
        <!-- turn page -->
        <div class="turnPage center fr">
            <a href="${pageContext.request.contextPath }/selectAll.do?currentPage=1">首页</a>
            <a href="${pageContext.request.contextPath }/selectAll.do?currentPage=${requestScope.pageBean.currentPage - 1}">上一页</a>
            <a href="${pageContext.request.contextPath }/selectAll.do?currentPage=${requestScope.pageBean.currentPage + 1}">下一页</a>
            <a href="${pageContext.request.contextPath }/selectAll.do?currentPage=${requestScope.pageBean.totalPage}">末页</a>

        </div>
    </div>
</div>
</body>
</html>
