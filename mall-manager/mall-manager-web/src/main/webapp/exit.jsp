<%--
  Created by IntelliJ IDEA.
  User: zhangyongfu
  Date: 2019/7/18
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>exit</title>
</head>
<body>
<% session.invalidate(); %>
<jsp:forward page="login.jsp"></jsp:forward>

</body>
</html>
