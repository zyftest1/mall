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
    <meta name="description"
          content="美丽说是白领女性时尚消费第一品牌，为超过1亿注册用户提供导购信息。建立300万全球女性时尚品牌商品库，超过1000家全球品牌达成官方合作导购体验，更好的满足白领女性的时尚消费需求。">
    <meta name="keywords" content="美丽说,美丽说官网,美丽说首页,美丽说登录,导购,白领,女装,网购">
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">

    <%
        String path = request.getRequestURI();
        String basePath = request.getScheme() + "://"
                + request.getServerName() + ":" + request.getServerPort()
                + path;
    %>
    <base href="<%=basePath%>">

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
                    <a href="order.do?_method=orderTotal&id=${sessionScope.bsUserAccount.ID}">我的订单</a>
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
    <div class="nav_main_box">
        <ul class="nav_main">
            <li class="all">全部商品
                <div class="attr_box">
                    <ul class="sec_attr">
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list1}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list1}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list2}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list2}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list3}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list3}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list4}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list4}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list5}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list5}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list6}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list6}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list7}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list7}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list8}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list8}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list9}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list9}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list10}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list10}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list11}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list11}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
                                <samp class="corner">
                                    <img src="p1\160810\idid_ifrtom3dmqygcojumezdambqhayde_6x10.png"></samp>

                            </div>

                        </li>
                        <li class="list">
                            <div class="list_cont">
                                <c:forEach items="${requestScope.list12}" begin="0" end="0" var="li1">
                                    <h3 class="nav_tle">
                                        <a href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </h3>
                                </c:forEach>

                                <p class="listP">
                                    <c:forEach items="${requestScope.list12}" begin="1" step="1" var="li1">
                                        <a class="red"
                                           href="/goods.do?goodsNameInput=${li1}"
                                           target="_blank">${li1}</a>
                                    </c:forEach>
                                </p>
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

    <!-- 官网直邮 -->
    <h2 alt="官网直邮">
        <img src="p1\160722\idid_ie4wem3fgazwcolfhezdambqgqyde_145x71.jpg"></h2>
    <div class="brand_wrap">

        <div class="ad_r">
            <c:forEach items="${requestScope.indexGoods}" begin="0" end="3" var="indexGood">
                <a href="index2car.do?cID=${indexGood.cID}&sID=${indexGood.sID}"
                   class="imgBox" target="_blank">
                    <span asrc="${indexGood.showPicture}"></span>
                </a>
            </c:forEach>
        </div>

        <div class="ad_r">
            <c:forEach items="${requestScope.indexGoods}" begin="4" end="7" var="indexGood">
                <a href="index2car.do?cID=${indexGood.cID}&sID=${indexGood.sID}"
                   class="imgBox" target="_blank">
                    <span asrc="${indexGood.showPicture}"></span>
                </a>
            </c:forEach>
        </div>
    </div>
    <!-- 官网直邮 end -->

    <h2 alt="为你精选">
        <img src="p2\160810\1sy_4ibl936dd3lbj53f44l1dia5355ij_150x71.jpg"></h2>

    <div class="brand_wrap">

        <div class="ad_r">
            <c:forEach items="${requestScope.indexGoods}" begin="8" end="11" var="indexGood">
                <a href="index2car.do?cID=${indexGood.cID}&sID=${indexGood.sID}"
                   class="imgBox" target="_blank">
                    <span asrc="${indexGood.showPicture}"></span>
                </a>
            </c:forEach>
        </div>

        <div class="ad_r">
            <c:forEach items="${requestScope.indexGoods}" begin="12" end="15" var="indexGood">
                <a href="index2car.do?cID=${indexGood.cID}&sID=${indexGood.sID}"
                   class="imgBox" target="_blank">
                    <span asrc="${indexGood.showPicture}"></span>
                </a>
            </c:forEach>
        </div>
    </div>
    <!-- 为你精选 end -->

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
            <br>京ICP备11031139号&nbsp; 京公网安备110108006045&nbsp;&nbsp; 客服电话：4000-800-577&nbsp; 文明办网文明上网举报电话：010-82615762
            &nbsp;
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
    fml.use('page/welcome');
    ;
    fml.use('base');
    ;
    fml.iLoad();
</script>
</body>
</html>
