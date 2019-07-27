<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: liuxiangfu
  Date: 2019/7/16
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加库存信息</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<c:if test="${requestScope.comStock== null}">
    <form action="/save.do" method="post" class="form-inline">

        库存商品号<input type="text" name="s_id" placeholder="库存id" value="" class="form-control"><br/><br/>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;商品ID<select name="c_id" class="form-control">
                 <c:forEach items="${requestScope.comModityList}" var="comModity">
                    <option >
                      <c:out value="${comModity.c_id}">
                      </c:out>
                    </option>
                 </c:forEach>
             </select><br/><br/>
        &nbsp;&nbsp;&nbsp; &nbsp; 颜色ID<select name="color_id" class="form-control">
                <c:forEach items="${requestScope.comColorList}" var="comColor">
                   <option>
                     <c:out value="${comColor.color_id}">
                     </c:out>
                   </option>
                </c:forEach>
             </select><br/><br/>
        &nbsp;&nbsp; 尺寸大小<select name="size" class="form-control">
                <c:forEach items="${requestScope.comSizeList}" var="comSize">
                  <option >
                    <c:out value="${comSize.size}">
                    </c:out>
                  </option>
                </c:forEach>
               </select><br/><br/>
        &nbsp;&nbsp;&nbsp; &nbsp; 库存量<input type="text" name="stock" placeholder="库存量" value="" class="form-control"><br/><br/>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 仓库<select name="ware_id"class="form-control">
                <c:forEach items="${requestScope.wareHouseList}" var="wareHouse">
                   <option>
                     <c:out value="${wareHouse.ware_id}">
                     </c:out>
                   </option>
                </c:forEach>
            </select><br/><br/>
        &nbsp; &nbsp; 商品价格<input type="text" name="s_price" placeholder="商品价格" value="" class="form-control"><br/><br/>

<%--        商品描述<select name="s_describe">--%>
<%--        <c:forEach items="${requestScope.comModityList}" var="comModity">--%>
<%--            <option >--%>
<%--                <c:out value="${comModity.c_describe}"></c:out>--%>
<%--            </option>--%>
<%--        </c:forEach>--%>
<%--    </select>  <br/><br/>--%>
        <input type="submit" value="保存" class="btn btn-primary">
        <input type="reset" value="重置" class="btn btn-primary">
    </form>
</c:if>

<c:if test="${requestScope.comStock != null}">
    <form action="/modify.do" method="post">
        库存ID<input type="text" name="s_id" placeholder="库存id" value="${requestScope.comStock.s_id}" readonly="true" class="form-control">
        商品ID<input type="text" name="c_id" placeholder="商品id" value="${requestScope.comStock.c_id}" readonly="true" class="form-control">
        颜色ID<input type="text" name="color_id" placeholder="颜色id" value="${requestScope.comStock.color_id}" readonly="true" class="form-control">
        尺寸大小<input type="text" name="size" placeholder="尺寸" value="${requestScope.comStock.size}" readonly="true" class="form-control">
        库存量<input type="text" name="stock" placeholder="库存量" value="${requestScope.comStock.stock}" class="form-control">
        仓库<input type="text" name="ware_id" placeholder="仓库" value="${requestScope.comStock.ware_id}" readonly="true" class="form-control">
        商品价格<input type="text" name="s_price" placeholder="商品价格" value="${requestScope.comStock.s_price}" class="form-control">
        商品描述<input type="text" name="s_describe" placeholder="商品描述" value="${requestScope.comStock.s_describe}" readonly="true" class="form-control">
        <input type="submit" value="保存" class="btn btn-primary">
        <input type="reset" value="重置" class="btn btn-primary">
    </form>
</c:if>
</body>
</html>
