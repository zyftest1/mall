<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/7/16
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.mall.service.BsUserAddress" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加</title>
    <style type="text/css">
       form{
           margin: 100px;
       }
    </style>
    <link rel="stylesheet" type="text/css" href="pc\css\base.css?1607170150.25">
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div id="com-topbar">
    <div class="inner">
        <ul>
            <li class="drop">
                <c:choose>
                    <c:when test="${sessionScope.bsUserAccount != null}">
                        <img class="face" src="new1\v1\bdefaultavatar\03.jpg">
                        ${sessionScope.bsUserAccount.bsName}
                        <a href="#"></a>
                        <ul class="down" style="width: 100px">
                            <li>
                                <a href="setPersonal.jsp">账号与安全</a></li>
                            <li>
                                <a href="login.jsp">退出</a></li>
                        </ul>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${sessionScope.bsUserAccount == null}">
                        <img class="face" src="new1\v1\bdefaultavatar\03.jpg">
                        <a href="/login.jsp">请登录</a>
                    </c:when>
                </c:choose>
            </li>
            <li class="drop">
                &nbsp;&nbsp;&nbsp;&nbsp;我的收藏
                <ul class="down" style="width: 100px">
                    <li>
                        <a href="mylike.jsp" >收藏宝贝</a>
                    </li>
                    <li>
                        <a href="mylikestore.jsp">收藏店铺</a>
                    </li>
                </ul>
            </li>
            <li class="drop cart-wrapper"><a href="#"></a>
                <a href="/car.do">我的购物车</a>
            </li>
            <li class="drop">
                <a href="orderlist.jsp">我的订单</a>
            </li>
            <li class="drop">帮助中心
                <ul class="down" style="width: 100px">
                    <li>
                        <a href="noviceGuide.jsp">新手指南</a></li>
                    <li>
                        <a href="serviceEnsure.jsp">服务保障</a></>
                    <li>
                        <a href="helpCommon.jsp">常见问题</a></li>
                    <li>
                        <a href="shoppingHelp.jsp">购物帮助</a></li>
                </ul>
            </li>
            <li class="drop"><a href="#"></a>
                <a href="#" class="last">进入后台</a></li>
        </ul>
    </div>
</div>
<%--<form method="post" action="/save.do" >--%>
<%--          地址<input type="text" name="address"><br>--%>
<%--          姓名<input type="text" name="name"><br>--%>
<%--          电话<input type="text" name="tel"><br>--%>
<%--          <input type="submit"value="保存"><input type="reset" value="重置">--%>
<%--      </form>--%>
<form class="form-horizontal" method="post" action="/save.do">
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">地址</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="address" id="inputEmail3" placeholder="地址">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">姓名</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name" id="inputPassword3" placeholder="姓名">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">电话</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="tel" id="inputPassword" placeholder="电话">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">保存</button>
            <button type="reset" class="btn btn-default">重置</button>
        </div>
    </div>
</form>

</body>
</html>
