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
        form{
            margin: 100px;
        }
    </style>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>

<%--<form method="post" action="/up.do?${bsUserAddress.addID}" >--%>
<%--    地址<input type="text" name="address" value="${bsUserAddress.address}"><br>--%>
<%--    姓名<input type="text" name="name" value="${bsUserAddress.name}"><br>--%>
<%--    电话<input type="text" name="tel" value="${bsUserAddress.tel}"><br>--%>
<%--    <input type="submit"value="保存"><input type="reset" value="重置">--%>
<%--</form>--%>

<form class="form-horizontal" method="post" action="/up.do">
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">地址</label>
        <div class="col-sm-10">
            <input type="text" value="${bsUserAddress.address}" class="form-control" name="address" id="inputEmail3" placeholder="地址">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">姓名</label>
        <div class="col-sm-10">
            <input type="text" value="${bsUserAddress.name}" class="form-control" name="name" id="inputPassword3" placeholder="姓名">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">电话</label>
        <div class="col-sm-10">
            <input type="text" value="${bsUserAddress.tel}" class="form-control" name="tel" id="inputPassword" placeholder="电话">
            <input type="hidden" value="${bsUserAddress.addID}" name="addID" >
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
