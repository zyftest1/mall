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
    <meta charset="utf-8">
    <title>收藏宝贝_Beauty Show</title>
    <meta name="description" content="Beauty Show是白领女性时尚消费第一品牌，为超过1亿注册用户提供导购信息。建立300万全球女性时尚品牌商品库，超过1000家全球品牌达成官方合作导购体验，更好的满足白领女性的时尚消费需求。">
    <meta name="keywords" content="Beauty Show,Beauty Show官网,Beauty Show首页,Beauty Show登录,导购,白领,女装,网购">
    <link rel="dns-prefetch" href="http://s.meilishuo.net/">
    <link rel="dns-prefetch" href="http://i.meilishuo.net/">
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" type="text/css" href="pc\css\base-2.css?1607171728.25">
    <link rel="icon" href="pic\_o\75\6e\2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="pc\css\page\pcenter\common.css?1607171728.25">
    <link rel="stylesheet" type="text/css" href="pc\css\page\pcenter\mylike.css?1607171728.25">
    <script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
    <script>
        fml.setOptions({
            'sversion': '1607171728.25',
            'defer': true,
            'modulebase': 'pc/jsmin/'
        });
        var Meilishuo = {
            "config": {
                "nt": "1yQyN1tU7ssTVQ5GeZ16w2q3pJ2nHWEVXgWdyRI8JFY57s2cDjns589vHeFUoKKI",
                "main_site_domain": "/",
                "server_url": "/",
                "picture_url": "http://i.meilishuo.net/css/",
                "captcha_url": "http://captcha.meilishuo.com/",
                "im_url": "http://imlab.meilishuo.com/",
                "forSale": false,
                "controller": "mylike",
                "isLogin": true,
                "userInfo": {
                    "name": "阿猫来了",
                    "uid": "11cnkktq",
                    "avatar": "http://s2.mogucdn.com/new1/v1/bdefaultavatar/03.jpg"
                }
            }
        };
    </script>
    <style type="text/css">
        .pcenter{
            text-align: center;
            background: #F5F5F5;
            position: relative;
            width: 1000px;
            height: 230px;
        }

        .ss{
            padding-top:50px ;
            padding-left:215px ;
        }
        .din{
            padding-bottom: 30px;
        }
        .succ{
            width: 70%;
            height: 90%;
            position: absolute;
            background: white;
            margin: auto;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }
        .man{
            width: 90%;
            height: 20%;
            margin: auto;
            text-align: center;
            position: absolute;
            padding-left: 120px;
            color: #5CB2D0;
        }
        input{
            border: none;
            font-size:larger;

        }
    </style>
</head>

<body>
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
                            <a href="serviceEnsure.jsp">服务保障</a></li>
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
                        <input type="submit" class="search-btn" value="" style="height: 28px ;width: 70px ;border: none" >
                        <div class="suggest-box"></div>
                    </form>
                </div>
                <div class="hotword"></div>
            </div>

        </div>
    </div>

</div>
<div class="pcenter" >
    <div class="succ">

      <div class="ss">
          <img src="/p2/160816/aa.png" >
      </div>
      <div class="din">
          <h1>订单支付成功！</h1>
      </div>
        <div class="man">
            <form>
                订单号:<input type="text" class="" name="">
                支付金额:<input type="text" class="" name="">
            </form>
        </div>
    </div>
</div>


<div id="com-foot">
    <div class="inner">
        <div class="flist">
            <h4>买家帮助</h4>
            <div>
                <a href="noviceGuide.jsp" target="_blank">新手指南</a>
            </div>
            <div>
                <a href="serviceEnsure.jsp" target="_blank">服务保障</a>
            </div>
            <div>
                <a href="helpCommon.jsp" target="_blank">常见问题</a>
            </div>
            <div>
                <a href="shoppingHelp.jsp" target="_blank">购物帮助</a>
            </div>
        </div>
        <div class="flist">
            <h4>商家帮助</h4>
            <div>
                <a href="businessEnter.jsp" target="_blank">商家入驻</a>
            </div>
            <div>
                <a href="businessBackground.jsp" target="_blank">商家后台</a>
            </div>
            <div>
                <a href="businessPromotion.jsp" target="_blank">商家推广</a>
            </div>
        </div>
        <div class="flist">
            <h4>关于我们</h4>
            <div>
                <a href="aboutus.jsp" target="_blank">关于Beauty Show</a>
            </div>
            <div>
                <a href="contactus.jsp" target="_blank">联系我们</a>
            </div>
        </div>
        <div class="flist aboutus">
            <h4>关注我们</h4>
            <div>
                <a href="#" target="_blank"> <span class="i-sina"></span>新浪微博
                    <div class="follow"> 一键关注新浪微博
                        <wb:follow-button uid="1718455577" type="red_1" width="67" height="24"></wb:follow-button>
                    </div>
                </a>
            </div>
            <div>
                <a href="#" target="_blank"><span class="i-qzone"></span>QQ空间</a>
            </div>
            <div>
                <a href="#" target="_blank"><span class="i-tencent"></span>腾讯微博</a>
            </div>
        </div>
        <div class="flist service">
            <h4>Beauty Show微信服务号</h4> <img class="qrcode" src="http://s7.mogucdn.com/p2/160802/7e_61hjl8kjfjfagkg3cdaj05fghck9c_100x100.png"
                                   alt="Beauty Show服务号二维码">
        </div>
        <div class="flist last" style="float:left;">
            <h4>Beauty Show客户端下载</h4>
            <p style="background:none; margin-top:0px;" class="client"> <img class="qrcode" src="p2\160802\7e_74j23d2a5f5j3bj31h70375gbeec1_100x100.png">
            </p>
        </div>
        <div class="record"> Copyright ©2016 Meilishuo.com &nbsp;
            <a href="http://s16.mogucdn.com/new1/v1/bmisc/518ea1bbd36948b90e658485d2700e62/181714310539.pdf" target="_blank">电信与信息服务业务经营许可证100798号</a>&nbsp;
            <a href="http://s16.mogucdn.com/p1/160811/idid_ifrtszjqmmzdazrumezdambqhayde_2436x3500.jpg" target="_blank">经营性网站备案信息</a>&nbsp;
            <br> 京ICP备11031139号&nbsp; 京公网安备110108006045&nbsp;&nbsp; 客服电话：4000-800-577&nbsp; 文明办网文明上网举报电话：010-82615762 &nbsp;
            <a href="http://net.china.com.cn/index.htm" target="_blank">违法不良信息举报中心</a>
        </div>
    </div>
</div>
<p style="display: none" class="biu-login">11cnkktq</p>
<div class="biu-sidebar">
    <div class="biu-options">
        <div class="biu-download"> 下载<span>APP</span>
            <div class="mls-qrcode"> <img src="p2\160802\7e_0h22fa0g03cgl0c5676cb6k2ii71h_140x140.png"> </div>
        </div>
        <div class="biu-cart">
            <a href="mycart.jsp" target="_blank"><span class="cart-num biu-cart-num"></span>购物车</a>
        </div>
        <div class="biu-service">
            <a class="biu-open-im"><span class="service-num biu-service-num"></span>消息</a>
        </div>
        <div class="biu-coupon">
            <a href="coupon.jsp#" target="_blank"><span class="coupon-num biu-coupon-num"></span>优惠券</a>
        </div>
        <div class="biu-mark">
            <a href="mylike.jsp" target="_blank">收藏</a>
        </div>
        <div class="biu-footprint">
            <a href="footprint.jsp" target="_blank">足迹</a>
        </div>
    </div>
    <div class="biu-go2top"> </div>
</div>
<script type="text/javascript" src="pc\jsmin\jquery.js?1.12.4"></script>
<script type="text/javascript" src="__static\logger\0.1.8\logger.js"></script>
<script src="__newtown\im_web\assets\common\openim\index.js"></script>
<script src="pc\~page\pcenter\mylike base.bin?1607171728.25"></script>
<script>
    fml.use('page/pcenter/mylike');;
    fml.use('base');;
    fml.iLoad();
</script>

</body>
</html>
