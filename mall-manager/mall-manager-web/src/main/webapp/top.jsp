<%--
  Created by IntelliJ IDEA.
  User: liuxiangfu
  Date: 2019/7/13
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header</title>
    <link href="style\adminStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="header">
    <div class="logo">
        <img src="images\admin_logo.png" title="在哪儿">
    </div>
    <div class="fr top-link">

        <a href="admin_list.html" target="mainCont" title="DeathGhost"><i class="adminIcon"></i><span>管理员：DeathGhost</span></a>
        <a href="#" title="修改密码"><i class="clearIcon"></i><span>清除缓存</span></a>
        <a href="revise_password.html" target="mainCont" title="修改密码"><i class="revisepwdIcon"></i><span>修改密码</span></a>
        <a href="#" title="安全退出" style="background:rgb(60,60,60);"><i class="quitIcon"></i><span>安全退出</span></a>
    </div>
</div>
</body>
</html>
