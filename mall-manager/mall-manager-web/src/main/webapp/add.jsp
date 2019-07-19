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
</head>
<body>
<c:if test="${requestScope.comStock== null}">
    <form action="/save.do" method="post">
        库存ID<input type="text" name="s_id" placeholder="库存id" value=""><br/><br/>
        商品ID<select name="c_id">
                 <c:forEach items="${requestScope.comModityList}" var="comModity">
                    <option >
                      <c:out value="${comModity.c_id}">
                      </c:out>
                    </option>
                 </c:forEach>
             </select>
        颜色ID<select name="color_id">
                <c:forEach items="${requestScope.comColorList}" var="comColor">
                   <option>
                     <c:out value="${comColor.color_id}">
                     </c:out>
                   </option>
                </c:forEach>
             </select>
        尺寸大小<select name="size">
                <c:forEach items="${requestScope.comSizeList}" var="comSize">
                  <option >
                    <c:out value="${comSize.size}">
                    </c:out>
                  </option>
                </c:forEach>
               </select>
        库存量<input type="text" name="stock" placeholder="库存量" value=""><br/><br/>
        仓库<select name="ware_id">
                <c:forEach items="${requestScope.wareHouseList}" var="wareHouse">
                   <option>
                     <c:out value="${wareHouse.ware_id}">
                     </c:out>
                   </option>
                </c:forEach>
            </select>
        商品价格<input type="text" name="s_price" placeholder="商品价格" value=""><br/><br/>

<%--        商品描述<select name="s_describe">--%>
<%--        <c:forEach items="${requestScope.comModityList}" var="comModity">--%>
<%--            <option >--%>
<%--                <c:out value="${comModity.c_describe}"></c:out>--%>
<%--            </option>--%>
<%--        </c:forEach>--%>
<%--    </select>  <br/><br/>--%>
        <input type="submit" value="保存">
        <input type="reset" value="重置">
    </form>
</c:if>

<c:if test="${requestScope.comStock != null}">
    <form action="/modify.do" method="post">
        库存ID<input type="text" name="s_id" placeholder="库存id" value="${requestScope.comStock.s_id}" readonly="true"><br/><br/>
        商品ID<input type="text" name="c_id" placeholder="商品id" value="${requestScope.comStock.c_id}" readonly="true"><br/><br/>
        颜色ID<input type="text" name="color_id" placeholder="颜色id" value="${requestScope.comStock.color_id}" readonly="true"><br/><br/>
        尺寸大小<input type="text" name="size" placeholder="尺寸" value="${requestScope.comStock.size}" readonly="true"><br/><br/>
        库存量<input type="text" name="stock" placeholder="库存量" value="${requestScope.comStock.stock}"><br/><br/>
        仓库<input type="text" name="ware_id" placeholder="仓库" value="${requestScope.comStock.ware_id}" readonly="true"><br/><br/>
        商品价格<input type="text" name="s_price" placeholder="商品价格" value="${requestScope.comStock.s_price}"><br/><br/>
        商品描述<input type="text" name="s_describe" placeholder="商品描述" value="${requestScope.comStock.s_describe}" readonly="true"><br/><br/>
        <input type="submit" value="保存">
        <input type="reset" value="重置">
    </form>
</c:if>
</body>
</html>
