<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!--[if IE 7]><html class="ie7 lt-ie10"><![endif]-->
<!--[if IE 8]><html class="ie8 lt-ie10"><![endif]-->
<!--[if IE 9]><html class="ie9 lt-ie10"><![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <title>最新美丽说网购平台模板</title>
    <meta name="description" content="美丽说是白领女性时尚消费第一品牌，为超过1亿注册用户提供导购信息。建立300万全球女性时尚品牌商品库，超过1000家全球品牌达成官方合作导购体验，更好的满足白领女性的时尚消费需求。">
    <meta name="keywords" content="美丽说,美丽说官网,美丽说首页,美丽说登录,导购,白领,女装,网购">
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" type="text/css" href="pc\css\base.css?1607170150.25">
    <link rel="icon" href="pic\_o\75\6e\2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="pc\css\page\welcome.css?1607170150.25">
    <script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
    <script type="text/javascript" src="webjars/jquery/3.4.1/jquery.js"></script>

    <script>fml.setOptions({
        'sversion': '1607170150.25',
        'defer': true,
        'modulebase': 'pc/jsmin/'
    });
    var Meilishuo = {
        "config": {
            "nt": "1yQyN1tU7ssTVQ5GeZ16w7IF/0VPJbAp1lO2BxZa52X2e4+pti0UtSulDoUBzzqn",
            "main_site_domain": "/",
            "server_url": "/",
            "picture_url": "#",
            "captcha_url": "#",
            "im_url": "http://imlab.meilishuo.com/",
            "forSale": false,
            "controller": "welcome",
            "isLogin": true,
            "userInfo": {
                "name": "阿猫来了",
                "uid": "11cnkktq",
                "avatar": "new1/v1/bdefaultavatar/03.jpg"
            }
        }
    };</script>
</head>

<body>
<%--<c:if test="${sessionScope.bsUserAccount != null }">--%>
<%--    <%--%>
<%--        BsUserAccount bsUserAccount = (BsUserAccount) request.getAttribute("bsUserAccount");--%>
<%--    %>--%>
<%--</c:if>--%>
<%--<c:set var="bsUserAccount" value="${sessionScope.bsUserAccount}"></c:set>--%>
<%--${sessionScope.bsUserAccount.getBsName()}--%>
<%--<%--%>
<%--    BsUserAccount bsUserAccount = (BsUserAccount) request.getAttribute("bs");--%>
<%--//    System.out.println(bsUserAccount.getBsName());--%>
<%--%>--%>

<div class="head">
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
            <a href="index.jsp" class="logo">
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
    <div class="nav_main_box">
        <ul class="nav_main">
            <li class="all">全部商品
                <div class="attr_box">
                    <ul class="sec_attr">
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10057049?action=clothing&mt=12.12299.r120219.15223&acm=1.mce.2.12299.0.0.15223_120219"
                                       target="_blank">上衣</a></h3>
                                <p class="listP">
                                    <a class="red" href="list.jsp#10057096?action=clothing&mt=12.12299.r126339.15223&acm=1.mce.2.12299.0.0.15223_126339"
                                       target="_blank">T恤</a>
                                    <a href="list.jsp#10057091?action=clothing&mt=12.12299.r127470.15223&acm=1.mce.2.12299.0.0.15223_127470"
                                       target="_blank">一字领上衣</a>
                                    <a href="list.jsp#10057095?action=clothing&mt=12.12299.r127478.15223&acm=1.mce.2.12299.0.0.15223_127478"
                                       target="_blank">背心</a>
                                    <a class="red" href="list.jsp#10057098?action=clothing&mt=12.12299.r127486.15223&acm=1.mce.2.12299.0.0.15223_127486"
                                       target="_blank">套装</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10058557?action=skirt&mt=12.12307.r127819.15237&acm=1.mce.2.12307.0.0.15237_127819"
                                       target="_blank">裙子</a></h3>
                                <p class="listP">
                                    <a href="list.jsp#10057148?action=skirt&mt=12.12307.r127211.15237&acm=1.mce.2.12307.0.0.15237_127211"
                                       target="_blank">连衣裙</a>
                                    <a class="red" href="list.jsp#10059091?action=skirt&mt=12.12307.r131116.15237&acm=1.mce.2.12307.0.0.15237_131116"
                                       target="_blank">早秋上新</a>
                                    <a href="list.jsp#10057153?action=skirt&mt=12.12307.r127329.15237&acm=1.mce.2.12307.0.0.15237_127329"
                                       target="_blank">衣裙套装</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10057403?action=trousers&mt=12.12827.r127948.15998&acm=1.mce.2.12827.0.0.15998_127948"
                                       target="_blank">裤子</a></h3>
                                <p class="listP">
                                    <a class="red" href="list.jsp#10057382?action=trousers&mt=12.12827.r127951.15998&acm=1.mce.2.12827.0.0.15998_127951"
                                       target="_blank">阔腿裤</a>
                                    <a href="list.jsp#10057371?action=trousers&mt=12.12827.r127955.15998&acm=1.mce.2.12827.0.0.15998_127955"
                                       target="_blank">短裤</a>
                                    <a href="list.jsp#10057369?action=trousers&mt=12.12827.r127958.15998&acm=1.mce.2.12827.0.0.15998_127958"
                                       target="_blank">牛仔裤</a>
                                    <a class="red" href="list.jsp#10057370?action=trousers&mt=12.12827.r127964.15998&acm=1.mce.2.12827.0.0.15998_127964"
                                       target="_blank">小脚裤</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>
                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10057052?action=shoes&mt=12.12828.r127653.15999&acm=1.mce.2.12828.0.0.15999_127653"
                                       target="_blank">鞋子</a></h3>
                                <p class="listP">
                                    <a class="red" href="list.jsp#10059081?action=shoes&mt=12.12828.r127655.15999&acm=1.mce.2.12828.0.0.15999_127655"
                                       target="_blank">秋季新品</a>
                                    <a href="list.jsp#10057112?action=shoes&mt=12.12828.r127643.15999&acm=1.mce.2.12828.0.0.15999_127643"
                                       target="_blank">凉鞋</a>
                                    <a href="list.jsp#10057111?action=shoes&mt=12.12828.r127654.15999&acm=1.mce.2.12828.0.0.15999_127654"
                                       target="_blank">小白鞋</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>
                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10057053?action=bags&mt=12.12829.r127816.16000&acm=1.mce.2.12829.0.0.16000_127816" target="_blank">包包</a></h3>
                                <p class="listP">
                                    <a class="red" href="list.jsp#10057178?action=bags&mt=12.12829.r127558.16000&acm=1.mce.2.12829.0.0.16000_127558"
                                       target="_blank">链条包</a>
                                    <a href="list.jsp#10057162?action=bags&mt=12.12829.r127564.16000&acm=1.mce.2.12829.0.0.16000_127564" target="_blank">斜挎包</a>
                                    <a href="list.jsp#10057177?action=bags&mt=12.12829.r127566.16000&acm=1.mce.2.12829.0.0.16000_127566" target="_blank">迷你包</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>
                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10057054?action=accessories&mt=12.12830.r128054.16001&acm=1.mce.2.12830.0.0.16001_128054"
                                       target="_blank">配饰</a></h3>
                                <p class="listP">
                                    <a class="red" href="list.jsp#10057429?action=accessories&mt=12.12830.r127491.16001&acm=1.mce.2.12830.0.0.16001_127491"
                                       target="_blank">手表</a>
                                    <a href="list.jsp#10057425?action=accessories&mt=12.12830.r127496.16001&acm=1.mce.2.12830.0.0.16001_127496"
                                       target="_blank">耳饰</a>
                                    <a class="red" href="list.jsp#10057424?action=accessories&mt=12.12830.r127510.16001&acm=1.mce.2.12830.0.0.16001_127510"
                                       target="_blank">锁骨链</a>
                                    <a href="list.jsp#10057430?action=accessories&mt=12.12830.r127513.16001&acm=1.mce.2.12830.0.0.16001_127513"
                                       target="_blank">手镯</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>
                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10057056?action=magic&mt=12.12831.r127859.16002&acm=1.mce.2.12831.0.0.16002_127859"
                                       target="_blank">美妆</a></h3>
                                <p class="listP">
                                    <a href="list.jsp#10057302?action=magic&mt=12.12831.r127915.16002&acm=1.mce.2.12831.0.0.16002_127915"
                                       target="_blank">眉笔眉粉</a>
                                    <a class="red" href="list.jsp#10057269?action=magic&mt=12.12831.r127871.16002&acm=1.mce.2.12831.0.0.16002_127871"
                                       target="_blank">面膜</a>
                                    <a href="list.jsp#10057250?action=magic&mt=12.12831.r127863.16002&acm=1.mce.2.12831.0.0.16002_127863"
                                       target="_blank">洁面</a>
                                    <a href="list.jsp#10057308?action=magic&mt=12.12831.r127874.16002&acm=1.mce.2.12831.0.0.16002_127874"
                                       target="_blank">唇膏口红</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>
                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10059310?action=neiyi&mt=12.12832.r127826.16003&acm=1.mce.2.12832.0.0.16003_127826"
                                       target="_blank">内衣</a></h3>
                                <p class="listP">
                                    <a class="red" href="list.jsp#10057241?action=neiyi&mt=12.12832.r127832.16003&acm=1.mce.2.12832.0.0.16003_127832"
                                       target="_blank">内衣套装</a>
                                    <a class="red" href="list.jsp#10057248?action=neiyi&mt=12.12832.r127846.16003&acm=1.mce.2.12832.0.0.16003_127846"
                                       target="_blank">泳衣</a>
                                    <a href="list.jsp#10057251?action=neiyi&mt=12.12832.r127868.16003&acm=1.mce.2.12832.0.0.16003_127868"
                                       target="_blank">文胸</a>
                                    <a class="red" href="list.jsp#10058140?action=neiyi&mt=12.12832.r127928.16003&acm=1.mce.2.12832.0.0.16003_127928"
                                       target="_blank">隐形内衣</a>
                                    <a href="list.jsp#10057245?action=neiyi&mt=12.12832.r127875.16003&acm=1.mce.2.12832.0.0.16003_127875"
                                       target="_blank">睡裙</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>
                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10057057?action=men&mt=12.12833.r127824.16004&acm=1.mce.2.12833.0.0.16004_127824" target="_blank">男友</a></h3>
                                <p class="listP">
                                    <a class="red" href="list.jsp#10059093?action=men&mt=12.12833.r127827.16004&acm=1.mce.2.12833.0.0.16004_127827"
                                       target="_blank">早秋新品</a>
                                    <a href="list.jsp#10057190?action=men&mt=12.12833.r127828.16004&acm=1.mce.2.12833.0.0.16004_127828" target="_blank">T恤</a>
                                    <a href="list.jsp#10057191?action=men&mt=12.12833.r127835.16004&acm=1.mce.2.12833.0.0.16004_127835" target="_blank">POLO衫</a>
                                    <a class="red" href="list.jsp#10057201?action=men&mt=12.12833.r127847.16004&acm=1.mce.2.12833.0.0.16004_127847"
                                       target="_blank">牛仔裤</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>
                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10057058?action=children&mt=12.12834.r128174.16005&acm=1.mce.2.12834.0.0.16005_128174"
                                       target="_blank">童装</a></h3>
                                <p class="listP">
                                    <a href="list.jsp#10057347?action=children&mt=12.12834.r128008.16005&acm=1.mce.2.12834.0.0.16005_128008"
                                       target="_blank">女童套装</a>
                                    <a class="red" href="list.jsp#10057352?action=children&mt=12.12834.r128012.16005&acm=1.mce.2.12834.0.0.16005_128012"
                                       target="_blank">男童套装</a>
                                    <a href="list.jsp#10057342?action=children&mt=12.12834.r128013.16005&acm=1.mce.2.12834.0.0.16005_128013"
                                       target="_blank">连衣裙</a>
                                    <a class="red" href="list.jsp#10059095?action=children&mt=12.12834.r128014.16005&acm=1.mce.2.12834.0.0.16005_128014"
                                       target="_blank">早秋新品</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>
                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10057059?action=home&mt=12.12835.r128154.16006&acm=1.mce.2.12835.0.0.16006_128154" target="_blank">家居</a></h3>
                                <p class="listP">
                                    <a class="red" href="list.jsp#10057100?action=home&mt=12.12835.r128194.16006&acm=1.mce.2.12835.0.0.16006_128194"
                                       target="_blank">四件套</a>
                                    <a href="list.jsp#10057137?action=home&mt=12.12835.r133419.16006&acm=1.mce.2.12835.0.0.16006_133419" target="_blank">衣柜</a>
                                    <a class="red" href="list.jsp#10057141?action=home&mt=12.12835.r128196.16006&acm=1.mce.2.12835.0.0.16006_128196"
                                       target="_blank">收纳盒</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>
                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <h3 class="nav_tle">
                                    <a href="list.jsp#10057060?action=food&mt=12.12836.r128002.16007&acm=1.mce.2.12836.0.0.16007_128002" target="_blank">食品</a></h3>
                                <p class="listP">
                                    <a class="red" href="list.jsp#10057252?action=food&mt=12.12836.r128003.16007&acm=1.mce.2.12836.0.0.16007_128003"
                                       target="_blank">麻辣零食</a>
                                    <a href="list.jsp#10057257?action=food&mt=12.12836.r128006.16007&acm=1.mce.2.12836.0.0.16007_128006" target="_blank">坚果炒货</a>
                                    <a href="list.jsp#10057260?action=food&mt=12.12836.r128009.16007&acm=1.mce.2.12836.0.0.16007_128009" target="_blank">蜜饯果干</a>
                                    <a href="list.jsp#10057261?action=food&mt=12.12836.r128010.16007&acm=1.mce.2.12836.0.0.16007_128010" target="_blank">方便速食</a></p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>
                            </div>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="nav_tab">
                <a href="index.jsp">首页</a></li>
            <li class="nav_tab">
                <a href="brandstreet.jsp?mt=12.12557.r121665.15640&acm=1.mce.2.12557.0.0.15640_121665">品牌街</a></li>
            <li class="nav_tab">
                <a href="daimaiPCrukou.jsp?mt=12.12557.r121666.15640&acm=1.mce.2.12557.0.0.15640_121666">官网直邮</a></li>
            <li class="nav_tab">
                <a href="selectindex.jsp?mt=12.12557.r121667.15640&acm=1.mce.2.12557.0.0.15640_121667">好物</a></li>
        </ul>
    </div>
</div>
<div class="top_wrap">
    <div class="banner_box" id="banner">
        <div class="top_bnr">
            <ul class="banner">
                <li>
                    <a class="pic imgBox" name="秋款新装" href="list.jsp"
                       target="_blank" style="background: repeat center top;">
<%--                        <span asrc="p2/160816/4.jpg"></span>--%>
                        <img src="p2/160816/4.jpg">
                    </a>
                </li>
                <li>
                    <a class="pic imgBox" name="那些传说中的斩男色" href="list.jsp"
                       target="_blank" style="background: repeat center top;">
<%--                        <span asrc="p2/160816/4.jpg"></span>--%>
                        <img src="p2/160816/4.jpg">
                    </a>
                </li>
                <li>
                    <a class="pic imgBox" name="百元手表1元秒杀" href="list.jsp"
                       target="_blank" style="background: repeat center top;">
                        <img src="p2/160816/4.jpg">
<%--                        <span asrc="p2/160816/4.jpg"></span>--%>
                    </a>
                </li>
                <li>
                    <a class="pic imgBox" name="秋色撩人我撩你" href="list.jsp"
                       target="_blank" style="background: repeat center top;">
                        <img src="p2/160816/4.jpg">
<%--                        <span asrc="p2/160816/4.jpg"></span>--%>
                    </a>
                </li>
            </ul>
        </div>
        <div class="num"></div>
        <div class="bnr_btn_wrap">
            <span class="bnr_btn prev"></span>
            <span class="bnr_btn next"></span>
        </div>
    </div>
    <!--<ul class="top_ad_box">-->
    <!--
    <div class="sk_hd">
        <a class="sk_hd_lk" href="//miaosha.jd.com" target="_blank" clstag="h|keycount|core|seckill_a">
            <div class="sk_tit">京东秒杀</div>
            <div class="sk_subtit">FLASH DEALS</div><i class="sk_ico"></i>
            <div class="sk_desc">本场距离结束还剩</div>
            <div class="sk_cd">
                <div class="cd">
                    <div class="cd_item cd_day"><span class="cd_item_txt">00</span></div>
                    <div class="cd_item cd_hour"><span class="cd_item_txt">00</span></div>
                    <div class="cd_item cd_minute"><span class="cd_item_txt">40</span></div>
                    <div class="cd_item cd_second"><span class="cd_item_txt">28</span></div>
                </div>
            </div>
        </a>
    </div>
-->
    <!--<li>
        <a href="tuanpc.jsp?tuanpc?mt=12.12313.r121673.15248&acm=1.mce.2.12313.0.0.15248_121673" target="_blank" class="imgBox">
            <span asrc="p2/160817/1.jpg"></span>
        </a>
    </li>
    <li>
        <a href="dailynew.jsp?mt=12.12313.r121674.15248&acm=1.mce.2.12313.0.0.15248_121674" target="_blank" class="imgBox">
            <span asrc="p2/160817/1.jpg"></span>
        </a>
    </li>
    <li>
        <a href="daimaiPCrukou-1.jsp?pstrc=fe_pos%3Awlc_ico_0&ptp=1.YUGqAYIU.0.0.iwTQx&mt=12.12313.r121675.15248&acm=1.mce.2.12313.0.0.15248_121675"
         target="_blank" class="imgBox">
            <span asrc="p2/160817/1.jpg"></span>
        </a>
    </li>
    <li class="mr0">
        <a href="newbags-4.jsp?underwear1?mt=12.12313.r121676.15248&acm=1.mce.2.12313.0.0.15248_121676" target="_blank"
         class="imgBox">
            <span asrc="p2/160817/1.jpg"></span>
        </a>
    </li>
</ul>-->
    <!-- 官网直邮 -->
    <h2 alt="官网直邮">
        <img src="p1\160722\idid_ie4wem3fgazwcolfhezdambqgqyde_145x71.jpg"></h2>
    <div class="brand_wrap">
        <div class="brand_box">
            <a href="shop.jsp#11706gm6?ptp=1.CmymMoKw.0.0.uEaSW&mt=12.12314.r120353.15249&acm=1.mce.2.12314.0.0.15249_120353"
               class="ad_up imgBox" target="_blank">
                <span asrc="p2/160811/318-361.jpg"></span>
            </a>
            <div class="ad_l">
                <a href="shop.jsp#113qxyxw?mt=12.12891.r123175.16072&acm=1.mce.2.12891.0.0.16072_123175" class="ad_list imgBox"
                   target="_blank">
                    <span asrc="p2/160811/138-138.jpg"></span>
                </a>
                <a href="shop.jsp#11706fou?mt=12.12891.r123176.16072&acm=1.mce.2.12891.0.0.16072_123176" class="ad_list imgBox"
                   target="_blank">
                    <span asrc="p2/160811/214-320-1.jpg"></span>
                </a>
                <a href="shop.jsp#113qx1n8?ptp=1.OGQ2u2wE.0.0.4jOS7&pstrc=searchshop%3D%E4%B8%8A%E5%93%81%E6%8A%98%E6%89%A3&shop_id=1101696302&mt=12.12891.r123177.16072&acm=1.mce.2.12891.0.0.16072_123177"
                   class="ad_list imgBox" target="_blank">
                    <span asrc="p2/160811/214.jpg"></span>
                </a>
                <a href="shop.jsp#113qxwqi?ptp=1.__item_detail.0.0.oyzTf&mt=12.12891.r123178.16072&acm=1.mce.2.12891.0.0.16072_123178"
                   class="ad_list imgBox" target="_blank">
                    <span asrc="p2/160811/214.jpg"></span>
                </a>
                <a href="shop.jsp#113qxyxo?mt=12.12891.r123179.16072&acm=1.mce.2.12891.0.0.16072_123179" class="ad_list imgBox"
                   target="_blank">
                    <span asrc="p2/160811/138-138.jpg"></span>
                </a>
                <a href="shop.jsp#11706fs8?mt=12.12891.r123180.16072&acm=1.mce.2.12891.0.0.16072_123180" class="ad_list imgBox"
                   target="_blank">
                    <span asrc="p2/160811/214-320-1.jpg"></span>
                </a>
            </div>
        </div>
        <div class="showOne">
            <a href="shopdetail.jsp#?1gldwym?ptp=1.CmymMoKw._items.0.9bv0o&mt=12.12892.r123181.16073&acm=1.mce.2.12892.0.0.16073_123181"
               target="_blank">
                <img src="p2\160811\1c2_54dck82g0jh2kj5c79h47l7al8e0d_305x589.jpg"></a>
        </div>
        <div class="ad_r">
            <a href="shop.jsp#11706fou/list/index?categoryId=20042035&ptp=1.__item_detail.0.0.sXoee&mt=12.12893.r123182.16074&acm=1.mce.2.12893.0.0.16074_123182"
               class="imgBox" target="_blank">
                <span asrc="p2/160811/214-320-1.jpg"></span>
            </a>
            <a href="shop.jsp#11706gm6/list/index?categoryId=20025177&ptp=1.CmymMoKw.0.0.hvdc7&mt=12.12893.r123183.16074&acm=1.mce.2.12893.0.0.16074_123183"
               class="imgBox" target="_blank">
                <span asrc="p2/160811/400-400.jpg"></span>
            </a>
            <a href="shop.jsp#113qxyxw/list/index?categoryId=10843916&ptp=1.CmymMoKw.0.0.Dffqh&mt=12.12893.r123184.16074&acm=1.mce.2.12893.0.0.16074_123184"
               class="imgBox" target="_blank">
                <span asrc="p2/160811/400-500.jpg"></span>
            </a>
            <a href="shop.jsp#11706fou/list/index?categoryId=20042055&ptp=1.CmymMoKw.0.0.f0WAS&mt=12.12893.r123185.16074&acm=1.mce.2.12893.0.0.16074_123185"
               class="imgBox" target="_blank">
                <span asrc="p2/160811/214-320-2.jpg"></span>
            </a>
        </div>
    </div>
    <!-- 官网直邮 end -->
    <!-- 热销模块 -->
    <h2 alt="为你精选">
        <img src="p2\160810\1sy_4ibl936dd3lbj53f44l1dia5355ij_150x71.jpg"></h2>
    <div class="common_box">
        <div class="ad_t">
            <a href="list.jsp#10057153?action=skirt&mt=12.12575.r121695.15662&acm=1.mce.2.12575.0.0.15662_121695" class="ad1 imgBox"
               target="_blank">
                <span asrc="p2/160817/3.jpg"></span>
            </a>
            <a href="list.jsp#10057096?action=clothing&mt=12.12575.r123574.15662&acm=1.mce.2.12575.0.0.15662_123574" class="ad2 imgBox"
               target="_blank">
                <span asrc="p2/160811/214-320-1.jpg"></span>
            </a>
            <a href="list.jsp#10057277?action=skirt&mt=12.12575.r123576.15662&acm=1.mce.2.12575.0.0.15662_123576" class="ad2 imgBox"
               target="_blank">
                <span asrc="p2/160811/214-320-2.jpg"></span>
            </a>
            <a href="list.jsp#10057367?action=trousers&mt=12.12575.r123577.15662&acm=1.mce.2.12575.0.0.15662_123577" class="ad2 imgBox"
               target="_blank">
                <span asrc="p2/160811/214-320-3.jpg"></span>
            </a>
        </div>
        <div class="ad_b">
            <div class="ad_attr_box">
                <a href="list.jsp#10059418?action=skirt&mt=12.12575.r133188.15662&acm=1.mce.2.12575.0.0.15662_133188" target="_blank">针织美裙</a>
                <a href="list.jsp#10057104?action=skirt&mt=12.12575.r133190.15662&acm=1.mce.2.12575.0.0.15662_133190" target="_blank"
                   class="red">白色衬衣</a>
                <a href="list.jsp#10057275?action=skirt&mt=12.12575.r130314.15662&acm=1.mce.2.12575.0.0.15662_130314" target="_blank">吊带裙</a>
                <a href="list.jsp#10057291?action=skirt&mt=12.12575.r130315.15662&acm=1.mce.2.12575.0.0.15662_130315" target="_blank"
                   class="red">荷叶边美裙</a>
                <a href="list.jsp#10057900?action=skirt&mt=12.12575.r130316.15662&acm=1.mce.2.12575.0.0.15662_130316" target="_blank">半身裙</a>
                <a href="list.jsp#10058547?action=skirt&mt=12.12575.r130318.15662&acm=1.mce.2.12575.0.0.15662_130318" target="_blank">T恤裙</a>
                <a href="list.jsp#10057288?action=skirt&mt=12.12575.r130323.15662&acm=1.mce.2.12575.0.0.15662_130323" target="_blank"
                   class="red">不规则美裙</a>
                <a href="list.jsp#10057324?action=clothing&mt=12.12575.r127966.15662&acm=1.mce.2.12575.0.0.15662_127966" target="_blank">吊带背心</a>
                <a href="list.jsp#10057305?action=skirt&mt=12.12575.r127972.15662&acm=1.mce.2.12575.0.0.15662_127972" target="_blank"
                   class="red">雪纺连衣裙</a>
                <a href="list.jsp#10058708?action=clothing&mt=12.12575.r127962.15662&acm=1.mce.2.12575.0.0.15662_127962" target="_blank">荷叶边上衣</a>
                <a href="list.jsp#10058460?action=clothing&mt=12.12575.r123582.15662&acm=1.mce.2.12575.0.0.15662_123582" target="_blank"
                   class="red">显瘦美衣</a>
                <a href="list.jsp#10057299?action=skirt&mt=12.12575.r123578.15662&acm=1.mce.2.12575.0.0.15662_123578" target="_blank"
                   class="red">短裙</a>
                <a href="list.jsp#10057083?action=clothing&mt=12.12575.r123580.15662&acm=1.mce.2.12575.0.0.15662_123580" target="_blank">V领衬衫</a>
                <a href="list.jsp#10058128?action=clothing&mt=12.12575.r123581.15662&acm=1.mce.2.12575.0.0.15662_123581" target="_blank"
                   class="red">娃娃衫</a></div>
            <a href="list.jsp#10058868?action=clothing&mt=12.12575.r123570.15662&acm=1.mce.2.12575.0.0.15662_123570" class="ad_3 imgBox"
               target="_blank">
                <span asrc="p2/160811/280-220-1.jpg"></span>
            </a>
            <a href="list.jsp#10057148?action=skirt&mt=12.12575.r123572.15662&acm=1.mce.2.12575.0.0.15662_123572" class="ad_3 imgBox"
               target="_blank">
                <span asrc="p2/160811/280-220-2.jpg"></span>
            </a>
            <a href="list.jsp#10057112?action=shoes&mt=12.12575.r127967.15662&acm=1.mce.2.12575.0.0.15662_127967" class="ad_3 imgBox"
               target="_blank">
                <span asrc="p2/160811/280-220-3.jpg"></span>
            </a>
        </div>
    </div>
    <!-- 热销模块 end -->
    <div class="zhanwei"></div>
</div>
<div id="com-foot">
    <div class="inner">
        <div class="flist">
            <h4>买家帮助</h4>
            <div>
                <a href="noviceGuide.jsp" target="_blank">新手指南</a></div>
            <div>
                <a href="serviceEnsure.jsp" target="_blank">服务保障</a></div>
            <div>
                <a href="helpCommon.jsp" target="_blank">常见问题</a></div>
            <div>
                <a href="shoppingHelp.jsp" target="_blank">购物帮助</a></div>
        </div>
        <div class="flist">
            <h4>商家帮助</h4>
            <div>
                <a href="businessEnter.jsp" target="_blank">商家入驻</a></div>
            <div>
                <a href="businessBackground.jsp" target="_blank">商家后台</a></div>
            <div>
                <a href="businessPromotion.jsp" target="_blank">商家推广</a></div>
        </div>
        <div class="flist">
            <h4>关于我们</h4>
            <div>
                <a href="aboutus.jsp" target="_blank">关于美丽说</a></div>
            <div>
                <a href="contactus.jsp" target="_blank">联系我们</a></div>
        </div>
        <div class="flist aboutus">
            <h4>关注我们</h4>
            <div>
                <a href="#" target="_blank">
                    <span class="i-sina"></span>新浪微博
                    <div class="follow">一键关注新浪微博
                        <wb:follow-button uid="1718455577" type="red_1" width="67" height="24"></wb:follow-button>
                    </div>
                </a>
            </div>
            <div>
                <a href="#" target="_blank">
                    <span class="i-qzone"></span>QQ空间</a>
            </div>
            <div>
                <a href="#" target="_blank">
                    <span class="i-tencent"></span>腾讯微博</a>
            </div>
        </div>
        <div class="flist service">
            <h4>美丽说微信服务号</h4>
            <img class="qrcode" src="p2\160802\7e_61hjl8kjfjfagkg3cdaj05fghck9c_100x100.png" alt="美丽说服务号二维码">
        </div>
        <div class="flist last" style="float:left;">
            <h4>美丽说客户端下载</h4>
            <p style="background:none; margin-top:0px;" class="client">
                <img class="qrcode" src="p2\160802\7e_74j23d2a5f5j3bj31h70375gbeec1_100x100.png"></p>
        </div>
        <div class="record">Copyright ©2016 Meilishuo.com &nbsp;
            <a href="new1\v1\bmisc\518ea1bbd36948b90e658485d2700e62\181714310539.pdf" target="_blank">电信与信息服务业务经营许可证100798号</a>&nbsp;
            <a href="p1\160811\idid_ifrtszjqmmzdazrumezdambqhayde_2436x3500.jpg" target="_blank">经营性网站备案信息</a>&nbsp;
            <br>京ICP备11031139号&nbsp; 京公网安备110108006045&nbsp;&nbsp; 客服电话：4000-800-577&nbsp; 文明办网文明上网举报电话：010-82615762 &nbsp;
            <a href="http://net.china.com.cn/index.htm" target="_blank">违法不良信息举报中心</a></div>
    </div>
</div>
<p style="display: none" class="biu-login">11cnkktq</p>
<div class="biu-sidebar">
    <div class="biu-options">
        <div class="biu-download">下载
            <span>APP</span>
            <div class="mls-qrcode">
                <img src="p2\160802\7e_0h22fa0g03cgl0c5676cb6k2ii71h_140x140.png"></div>
        </div>
        <div class="biu-cart">
            <a href="mycart.jsp" target="_blank">
                <span class="cart-num biu-cart-num"></span>购物车</a>
        </div>
        <div class="biu-service">
            <a class="biu-open-im">
                <span class="service-num biu-service-num"></span>消息</a>
        </div>
        <div class="biu-coupon">
            <a href="coupon.jsp#" target="_blank">
                <span class="coupon-num biu-coupon-num"></span>优惠券</a>
        </div>
        <div class="biu-mark">
            <a href="mylike.jsp#" target="_blank">收藏</a></div>
        <div class="biu-footprint">
            <a href="footprint.jsp#" target="_blank">足迹</a></div>
    </div>
    <div class="biu-go2top"></div>
</div>
<script type="text/javascript" src="pc\jsmin\jquery.js?1.12.4"></script>
<script type="text/javascript" src="__static\logger\0.1.8\logger.js"></script>
<script src="__newtown\im_web\assets\common\openim\index.js"></script>
<script src="pc\~page\welcome base.bin?1607170150.25"></script>
<script>
    fml.use('page/welcome');;
    fml.use('base');;
    fml.iLoad();
</script>
</body>
</html>
