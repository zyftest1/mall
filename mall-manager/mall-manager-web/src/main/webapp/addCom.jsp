<%--
  Created by IntelliJ IDEA.
  User: zjc
  Date: 2019/7/16
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>商品添加</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<h3>商品添加</h3>
<form action="addCom.do" method="post" class="form-inline">
    <p>
        商品ID

        <input type="text" name = "id" placeholder="请输入商品ID" autofocus="autofocus" class="form-control"/>
        <br /><br />
        &nbsp;&nbsp;&nbsp;类型
        <select name="ctype" class="form-control">
            <c:forEach items="${types}" var="type">

                <option value=${type.type_ID}>${type.type_describe}</option>
            </c:forEach>

        </select>
        <br /><br />
        &nbsp;&nbsp; 材质
        <select name="cmat" class="form-control">
            <c:forEach items="${mats}" var="mat">

                <option value=${mat.mat_ID}>${mat.cloth}</option>
            </c:forEach>

        </select>
        <br /><br />
        &nbsp;&nbsp; 品牌
        <select name="cbrand" class="form-control">
            <c:forEach items="${brands}" var="brand">

                <option value=${brand.brand_ID}>${brand.brand_describe}</option>
            </c:forEach>

        </select>
        <br /><br />
    </p>



    &nbsp;&nbsp; 详情


    <textarea name="describe" class="form-control" placeholder="输入商品描述"></textarea>
    <br /><br />
    <p>
        <input type="submit" value="提交" class="btn btn-primary"/>
        <input type="reset" value="重新填写" class="btn btn-primary"/>

    </p>

</form>


</body>
</html>
