<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/7/17
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>修改</title>
    <style type="text/css">
        .form-horizontal{
            margin-left:249px;
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
                                <a href="exit.jsp" target="_top">退出</a></li>
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
                <a href="/car.do?_method=showList&id=${sessionScope.bsUserAccount.ID}">我的购物车</a>
            </li>
            <li class="drop">
                <a href="/order.do?_method=orderTotal&id=${sessionScope.bsUserAccount.ID}">我的订单</a>
            </li>
            <li class="drop">帮助中心
                <ul class="down" style="width: 100px">
                    <li>
                        <a href="noviceGuide.jsp">新手指南</a></li>
                    <li>
                        <a href="serviceEnsure.jsp">服务保障</a></li>
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
<div id="com-search">
    <div class="inner">
        <a href="index.do" class="logo">
            <img src="pic/bs-logo.png" ></a>
        <a href="" class="sublogo"></a>
        <div class="search">
            <div class="search-tab">
                <span class="active">宝贝</span>
                <span>店铺</span></div>
            <div class="search-box">
                <form action="/goods.do">
                    <input type="text" class="search-txt" name="goodsNameInput">
                    <%--								<a href="/goods.do">--%>
                    <%--									<input type="button" value="" class="search-btn">--%>
                    <%--								</a>--%>
                    <input type="submit" class="search-btn" value="" style="height: 28px ;width: 70px ;border: none">
                    <div class="suggest-box"></div>
                </form>
            </div>
            <div class="hotword"></div>
        </div>

    </div>
</div>
<%--<form method="post" action="/up.do?${bsUserAddress.addID}" >--%>
<%--    地址<input type="text" name="address" value="${bsUserAddress.address}"><br>--%>
<%--    姓名<input type="text" name="name" value="${bsUserAddress.name}"><br>--%>
<%--    电话<input type="text" name="tel" value="${bsUserAddress.tel}"><br>--%>
<%--    <input type="submit"value="保存"><input type="reset" value="重置">--%>
<%--</form>--%>

<form class="form-horizontal" method="post" action="/bsAddress.do?_method=up&id=${sessionScope.bsUserAccount.ID}">
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">地址</label>
        <div class="col-sm-6">
            <input type="text" value="${bsUserAddress.address}" class="form-control" name="address" id="inputEmail3" placeholder="地址">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">姓名</label>
        <div class="col-sm-6">
            <input type="text" value="${bsUserAddress.name}" class="form-control" name="name" id="inputPassword3" placeholder="姓名">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">电话</label>
        <div class="col-sm-6">
            <input type="text" value="${bsUserAddress.tel}" class="form-control" name="tel" id="inputPassword" placeholder="电话">
            <input type="hidden" value="${bsUserAddress.addID}" name="addID" >
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default" style="margin-left: 150px">保存</button>
            <button type="reset" class="btn btn-default" style="margin-left: 100px">重置</button>
        </div>
    </div>
</form>

</body>
</html>
