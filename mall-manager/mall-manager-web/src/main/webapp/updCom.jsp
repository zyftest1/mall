<%--
  Created by IntelliJ IDEA.
  User: zjc
  Date: 2019/7/18
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改商品</title>
</head>

<body>
<h3>商品修改</h3>
<form action="/updCom.do" method="post">
    <p>
        商品ID<br />
        <input type="text" name = "id" value="${id}" readonly="readonly" autofocus="autofocus" />
        <br />
        <br />
        类型<br />
        <select name="ctype" >
            <c:forEach items="${types}" var="type">

                <option value=${type.type_ID}>${type.type_describe}</option>
            </c:forEach>

        </select>
        <br />
        材质<br />
        <select name="cmat" >
            <c:forEach items="${mats}" var="mat">

                <option value=${mat.mat_ID}>${mat.cloth}</option>
            </c:forEach>

        </select>
        <br />
        品牌<br />
        <select name="cbrand" >
            <c:forEach items="${brands}" var="brand">

                <option value=${brand.brand_ID}>${brand.brand_describe}</option>
            </c:forEach>

        </select>
        <br />
    </p>


    <p>
        详情:
    </p>

    <textarea name="describe"  rows="20" cols="80" placeholder="输入商品描述">${desc}</textarea>
    <br />
    <p>
        <input type="submit" value="提交"/>
        <input type="reset" value="重新填写"/>

    </p>

</form>



</body>
</html>
