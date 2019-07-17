<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>注册</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css\iconfont\iconfont.css" rel="stylesheet">
    <link href="css\common.css" rel="stylesheet">
    <link href="css\login.css" rel="stylesheet">
    <script type="text/javascript" src="webjars/jquery/3.4.1/jquery.js"></script>
<%--    <script type="text/javascript">--%>
<%--        $('.check input').iCheck({--%>
<%--            checkboxClass: 'sty1-checkbox'--%>
<%--        });--%>
<%--    </script>--%>
    <style type="text/css">
        .enable{
            color: green;
        }
        .disable{
            color: red;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("#bsName").blur(function () {
                var bsName = $("#bsName").val();
                // alert(bsName)
                // $("#userName")是id选择器,获得id为userName的标签,通过.val(),获得这个标签的value的值,赋值给你声明的变量
                $.post({
                    url:"/BsUserAccount.do?_method=checkBsName",
                    data:{bsName:bsName},
                    dataType:"text",
                    success:function (data,status) {
                        if(data == "用户名可用"){
                            $("#msg").removeClass().addClass("enable");
                             $("#msg").text("用户名可用");
                        }else {
                            $("#msg").removeClass().addClass("disable");
                            $("#msg").text("用户名被占用");
                        }
                    }
                })
            })
        });
    </script>
</head>
<body>
<!--头部-->
    <div class="login-header">
        <div class="wrapper">
            <a href="" class="logo">
                <img src="img\logo3.png" alt="">
            </a>
            <div class="zp">
                <span class="ico"></span>
                <div>正品保障</div>
            </div>
        </div>
    </div>
    <div class="main-wrap">
        <div class="wrapper">
            <div class="center-box">
                <form action="/BsUserAccount.do?_method=add" method="post">
                    <div class="box-hd">
                        <span class="tit">用户注册</span>
                        <a href="login.jsp">账号登陆</a>
                    </div>
                    <label class="txtin-box">
                        <input class="txtin" type="text" name="bsName" id="bsName" placeholder="用户名"><span id="msg"></span>
                    </label>
                    <label class="txtin-box">
                        <input class="txtin" type="text" name="tel" placeholder="手机">
                    </label>
                    <label class="txtin-box txtin-box-code">
                        <input class="txtin" type="text" name="code" placeholder="验证码">
                        <a href="" class="get-yzm">获取验证码</a>
                    </label>
                    <label class="txtin-box">
                        <input class="txtin" type="password" name="password" placeholder="输入密码">
                    </label>
                    <label class="txtin-box">
                        <input class="txtin" type="password" name="password2" placeholder="确认密码">
                    </label>
                    <div class="clearfix tool">
                        <label class="check"><input type="checkbox" name="" id="">我已阅读并同意智迈科技《<a href="">服务协议</a>》</label>
                    </div>
                    <input class="tj" type="submit" value="注&ensp;册">
                    <div class="other-way clearfix">
                        <a class="item first" href="">
                            <img src="img\login\weixin.jpg" alt="" class="ico">
                            <span class="label">微信</span>
                        </a>
                        <a class="item" href="">
                            <img src="img\login\qq.jpg" alt="" class="ico">
                            <span class="label">微信</span>
                        </a>
                        <a class="item" href="">
                            <img src="img\login\sina.jpg" alt="" class="ico">
                            <span class="label">微信</span>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="login-footer">
        安徽XXX网络科技有限公司 版权所有 Copyright © 2016-2018   备案号：皖ICP备123456789
        <div class="authentication">
            <a href=""><img src="uploads\35.jpg" alt=""></a>
            <a href=""><img src="uploads\36.jpg" alt=""></a>
            <a href=""><img src="uploads\37.jpg" alt=""></a>
            <a href=""><img src="uploads\38.jpg" alt=""></a>
        </div>
    </div>
</body>

</html>