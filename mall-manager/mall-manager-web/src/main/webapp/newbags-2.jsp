﻿

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

    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">

    <!--  <meta property="qc:admins" content="173137167465514130576375" />
     <meta name="chinaz-site-verification" content="500e4417-e595-40ac-98da-dec66c97a9e5" /> -->

    <title>本季包包新品</title>
    <meta name="description" content="美丽说, 只做正确流行款. 独家冠名《奔跑吧兄弟》! 平台聚集强大的资深时尚买手团队, 每日推出正确新款, 传授最权威的穿衣经验, 全方位解读搭配技巧, 打造当季最前沿的正确流行款!">
    <meta name="keywords" content="美丽说,衣服,鞋子,包包,配饰,家居,美妆,搭配,团购">

    <link rel="stylesheet" type="text/css" href="css\product.css$1471486195.css" media="all"><link rel="stylesheet" type="text/css" href="css\base.css?1604111018.1463028059" media="all"><link rel="stylesheet" href="new1\v1\fxihe\4ca212cfc3a85ff40525521ff0f7510f\A1f7679b27a2000402.css"><script type="text/javascript">PTP_PARAMS={"c_action":"cube%40%40newbags0818pc","ptp_cnt_a":"1","time":"1471486198000","ptp_cnt_b":"_mf1_840_12596"}</script>
    <link rel="stylesheet" type="text/css" href="pc\css\base.css?1607170150.25">
    <link rel="apple-touch-icon-precomposed" href="css\images\custom_icon_precomposed.png">

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
                    <input type="submit" class="search-btn">
                    <div class="suggest-box"></div>
                </form>
            </div>
            <div class="hotword"></div>
        </div>

    </div>
</div>
<div id="nav" style="height:50px;"></div>

<div id="global-sidebar"></div>

<script type="text/javascript" src="http://static.meilishuo.net/pc/jsmin/common/blast.js?v6"></script>

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
        <div class="module_row module_row_130716 MOD_ID_35" data-mid="130716" data-versionid="367425" data-editable="1"><div class="mod_row MCUBE_MOD_ID_35 clearfix" style="width: 960px;" id="singlebanner" style="background-color: ;">
            <div class="margin-block-box" style=" ">
                <div class="bg_imgbox J_dynamic_imagebox " img-src="http://s18.mogucdn.com/p2/160817/upload_5gl62da71lce7eiajkik6b87e14dc_896x447.jpg" style="height:447px;"></div>
            </div>
        </div></div><div class="module_row module_row_130736 MOD_ID_577" data-mid="130736" data-versionid="367476" data-editable="1"><div class="mod_row MCUBE_MOD_ID_577">


        <style>
            .MCUBE_MOD_ID_577 .MOD_TAB_FIX {
                top: 0 !important;
            }
        </style>
        <div class="hide-height-use" style="height: 0;">
        </div>
        <div class="mod-fr-tab clearfix" data-tabnum="3" data-high-bck="#18cf95" data-high-font="white" data-org-bck="#343434" data-org-font="white">
            <a href="javascript:;" class="fl item item0 item-on" style=" color: white; width: 33.333333333333% ;background-color: #343434;">
            <span class="in-border" style="border-left: 1px dashed transparent;border-left:none;">
                精选
            </span>
            </a>
            <a href="javascript:;" class="fl item item1 " style=" color: white; width: 33.333333333333% ;background-color: #343434;">
            <span class="in-border" style="border-left: 1px dashed transparent;">
                热卖
            </span>
            </a>
            <a href="javascript:;" class="fl item item2 " style=" color: white; width: 33.333333333333% ;background-color: #343434;">
            <span class="in-border" style="border-left: 1px dashed transparent;">
                新款
            </span>
            </a>
        </div>
    </div></div><div class="module_row module_row_130737 MOD_ID_155" data-mid="130737" data-versionid="367478" data-editable="1"><div class="mod_row MCUBE_MOD_ID_155">



        <div class="lazyData" data-source-type="mce" data-source-key="15283" data-floornum="4" data-manual="true">


            <div class="floor-goods clearfix" data-ptp="_rmc_15283">
                <div class="single-goods clearfix">
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                </div>
            </div>

            <script id="doTtemplate-single-goods" type="text/template">
                <div class="single-goods clearfix rec-show-log">
                    {{?it}}
                    {{~ it:items:index}}
                    <div class="iwf fl show-log-item data-ptp-item" data-log-content="{{=items.acm}}" data-log-index="{{=index}}">
                        <a data-ext-acm="{{=items.acm}}"
                           href="{{=items.item_url}}" class="img-wrap J_dynamic_imagebox loading_bg_120 useOrg" img-src="{{=items.image}}" target="_blank" style="padding-bottom: 150%;">
                            {{?items.discount}}
                            <div class="lefttop-discount">{{=items.discount}}<div>折</div></div>
                            {{?}}
                        </a>
                        <p class="title">
                            <a data-ext-acm="{{=items.acm}}" href="{{=items.item_url}}"  target="_blank">{{=items.title}}</a>
                        </p>

                        <div class="goods_info">
                            <div class="fav_num">
                                <span class="act-now-price fl yahei currency">￥{{?MoGu && MoGu.actFormatPrice && items.discountPrice}}{{=MoGu.actFormatPrice(items.discountPrice)}}{{??}}{{=items.discountPrice}}{{?}}</span>
                                <span class="act-old-price fr yahei currency">销量({{=items.itemSale}})</span>
                            </div>
                        </div>
                    </div>
                    {{~ }}
                    {{?}}
                </div>
            </script>
        </div>
    </div></div><div class="module_row module_row_130738 MOD_ID_155" data-mid="130738" data-versionid="367480" data-editable="1"><div class="mod_row MCUBE_MOD_ID_155">



        <div class="lazyData" data-source-type="mce" data-source-key="15298" data-floornum="4" data-manual="true">


            <div class="floor-goods clearfix" data-ptp="_rmc_15298">
                <div class="single-goods clearfix">
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                </div>
            </div>

            <script id="doTtemplate-single-goods" type="text/template">
                <div class="single-goods clearfix rec-show-log">
                    {{?it}}
                    {{~ it:items:index}}
                    <div class="iwf fl show-log-item data-ptp-item" data-log-content="{{=items.acm}}" data-log-index="{{=index}}">
                        <a data-ext-acm="{{=items.acm}}"
                           href="{{=items.item_url}}" class="img-wrap J_dynamic_imagebox loading_bg_120 useOrg" img-src="{{=items.image}}" target="_blank" style="padding-bottom: 150%;">
                            {{?items.discount}}
                            <div class="lefttop-discount">{{=items.discount}}<div>折</div></div>
                            {{?}}
                        </a>
                        <p class="title">
                            <a data-ext-acm="{{=items.acm}}" href="{{=items.item_url}}"  target="_blank">{{=items.title}}</a>
                        </p>

                        <div class="goods_info">
                            <div class="fav_num">
                                <span class="act-now-price fl yahei currency">￥{{?MoGu && MoGu.actFormatPrice && items.discountPrice}}{{=MoGu.actFormatPrice(items.discountPrice)}}{{??}}{{=items.discountPrice}}{{?}}</span>
                                <span class="act-old-price fr yahei currency">销量({{=items.itemSale}})</span>
                            </div>
                        </div>
                    </div>
                    {{~ }}
                    {{?}}
                </div>
            </script>
        </div>
    </div></div><div class="module_row module_row_130739 MOD_ID_155" data-mid="130739" data-versionid="367486" data-editable="1"><div class="mod_row MCUBE_MOD_ID_155">



        <div class="lazyData" data-source-type="mce" data-source-key="15303" data-floornum="4" data-manual="true">


            <div class="floor-goods clearfix" data-ptp="_rmc_15303">
                <div class="single-goods clearfix">
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                    <div class="iwf fl loading_bg_120" style="height: 393px;"></div>
                </div>
            </div>

            <script id="doTtemplate-single-goods" type="text/template">
                <div class="single-goods clearfix rec-show-log">
                    {{?it}}
                    {{~ it:items:index}}
                    <div class="iwf fl show-log-item data-ptp-item" data-log-content="{{=items.acm}}" data-log-index="{{=index}}">
                        <a data-ext-acm="{{=items.acm}}"
                           href="{{=items.item_url}}" class="img-wrap J_dynamic_imagebox loading_bg_120 useOrg" img-src="{{=items.image}}" target="_blank" style="padding-bottom: 150%;">
                            {{?items.discount}}
                            <div class="lefttop-discount">{{=items.discount}}<div>折</div></div>
                            {{?}}
                        </a>
                        <p class="title">
                            <a data-ext-acm="{{=items.acm}}" href="{{=items.item_url}}"  target="_blank">{{=items.title}}</a>
                        </p>

                        <div class="goods_info">
                            <div class="fav_num">
                                <span class="act-now-price fl yahei currency">￥{{?MoGu && MoGu.actFormatPrice && items.discountPrice}}{{=MoGu.actFormatPrice(items.discountPrice)}}{{??}}{{=items.discountPrice}}{{?}}</span>
                                <span class="act-old-price fr yahei currency">销量({{=items.itemSale}})</span>
                            </div>
                        </div>
                    </div>
                    {{~ }}
                    {{?}}
                </div>
            </script>
        </div>
    </div></div></div>
</div>

<div id="foot"></div>

<script type="text/javascript" src="js\logger.js$1471486195.js"></script><script src="new1\v1\fxihe\1edf4e0a91804a2b3502c8ed0354e1b9\A128679b27a2000402.js"></script>

</body>
</html>