<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!--[if IE 7]>
<html class="ie7 lt-ie10">
<![endif]-->
<!--[if IE 8]>
<html class="ie8 lt-ie10">
<![endif]-->
<!--[if IE 9]>
<html class="ie9 lt-ie10">
<![endif]-->
<!--[if gt IE 9]>
<!-->
<html>
<!--<![endif]-->
<head>
    <script type="text/javascript">
        window.__trace__headstart = +new Date;
        window.__server__startTime = +new Date;
    </script>
    <meta charset="UTF-8">

    <meta name="renderer" content="webkit">

    <!--  <meta property="qc:admins" content="173137167465514130576375" />
     <meta name="chinaz-site-verification" content="500e4417-e595-40ac-98da-dec66c97a9e5" /> -->

    <title>品牌特卖PC</title>
    <meta name="description" content="美丽说, 只做正确流行款. 独家冠名《奔跑吧兄弟》! 平台聚集强大的资深时尚买手团队, 每日推出正确新款, 传授最权威的穿衣经验, 全方位解读搭配技巧, 打造当季最前沿的正确流行款!">
    <meta name="keywords" content="美丽说,衣服,鞋子,包包,配饰,家居,美妆,搭配,团购">

    <link rel="stylesheet" type="text/css" href="css\product.css$1471510005.css" media="all"><link rel="stylesheet" type="text/css" href="css\base.css?1604111018.1463028059" media="all"><link rel="stylesheet" href="new1\v1\fxihe\b06107c6080bfb3addbb53e1f2078737\A1b58c4247a2000a02.css"><script type="text/javascript">PTP_PARAMS={"c_action":"cube%40%40tuanpc","ptp_cnt_a":"1","time":"1471510008000","ptp_cnt_b":"_mf1_840_11652"}</script>

    <link rel="apple-touch-icon-precomposed" href="http://i.meilishuo.net/css/images/custom_icon_precomposed.png">

    <script src="js\pkg-cube-mls-datalazy.js$24.js"></script>
    <link rel="icon" href="new1\v1\bmisc\015428832599fabeef6cfeebd7788926\176719579831.ico">
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
                <a href="mycart.jsp">我的购物车</a>
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
                <a href="#" class="last">商家后台</a></li>
        </ul>
    </div>
</div>
<div id="search" style="height:120px;"></div>
<div id="nav" style="height:50px;"></div>

<div id="global-sidebar"></div>

<script type="text/javascript" src="pc\jsmin\common\blast.js?v6"></script>

<script>
    $.blast({
        topbar : '#topbar',
        search : '#search',
        nav : '#nav',
        foot : '#foot'
    });
</script>

<div id="body_wrap">
    <div class="page_activity   " data-time="">
        <div class="module_row module_row_129797 MOD_ID_35" data-mid="129797" data-versionid="369990" data-editable="1"><div class="mod_row MCUBE_MOD_ID_35 clearfix" style="width: 960px;" id="singlebanner" style="background-color: ;">
            <div class="margin-block-box" style=" ">
                <div class="bg_imgbox J_dynamic_imagebox full-width-wrap" img-src="http://s17.mogucdn.com/p2/160818/upload_2g255fg825bb4elj8b9b37dkg1k51_1920x420.jpg" style="height:420px;"></div>
            </div>
        </div></div><div class="module_row module_row_131561 MOD_ID_131210" data-mid="131561" data-versionid="370060" data-editable="1"><div class="mod_row MCUBE_MOD_ID_131210">
        <style>
            .mod_row.MCUBE_MOD_ID_131210{ width: 100% !important; background: white;}
        </style>
        <div class="nav_wrap">
            <div class="nav">
                <a class="active  nav_item" data-category="selection">
                    精选
                </a>
                <a class=" nav_item" data-category="clothes">
                    衣服
                </a>
                <a class=" nav_item" data-category="shoes">
                    鞋子
                </a>
                <a class=" nav_item" data-category="bags">
                    包包
                </a>
                <a class=" nav_item" data-category="beauty">
                    美妆
                </a>
                <a class=" nav_item" data-category="boyfriend">
                    男装
                </a>
                <a class=" nav_item" data-category="food">
                    食品
                </a>
            </div>
        </div>
    </div></div><div class="module_row module_row_131562 MOD_ID_129804" data-mid="131562" data-versionid="369702" data-editable="1"><div class="mod_row MCUBE_MOD_ID_129804">
        <style>
            .mod_row.MCUBE_MOD_ID_129804{ width: 100% !important; background: white;}
        </style>
        <div class="wall-wrap">
        </div>
        <input type="hidden" class="category" value="selection" autocomplete="off">
    </div></div></div>
</div>

<div id="foot"></div>

<script type="text/javascript" src="js\logger.js$1471510005.js"></script><script type="text/javascript" src="new1\v1\bmisc\e39c96957295f5661f456012ee749329\175679325494.js"></script><script src="new1\v1\fxihe\fa4cdd336d086b260c51e17278361d08\A1068c4247a2000a02.js"></script>

</body>
</html>