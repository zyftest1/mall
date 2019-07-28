<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <script type="text/javascript">
        window.__trace__headstart = +new Date;
        window.__server__startTime = 1471485158459;
        window.__token = "F7+quQ9AoCjMKdEwP3nXR0ldMZf4/elGZlcOXcMBKM4=";
    </script>
    <meta charset="UTF-8">

    <meta http-equiv="Cache-Control" content="no-transform ">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>【夏季韩版修身荷叶袖连衣裙】-衣服-裙子_连衣裙_服饰鞋包_女装-爱丽缇旗舰店-蘑菇街优店</title>
    <meta name="keywords" content="雪纺裙,收腰,淑女,夏季新品,系带,显瘦夏季韩版修身荷叶袖连衣裙">
    <meta name="description"
          content="来自蘑菇街优店裙子_连衣裙_服饰鞋包_女装家又有一款充满仙气的裙子贡献给菇凉们了~这款裙裙是采用雪纺面料的，亲自试穿过，面料特别舒服，清清凉凉的，然后有里衬，也不会透，夏日穿特别合适！荷叶袖的设计，手臂有肉肉的菇凉也不用担心了~的夏季韩版修身荷叶袖连衣裙，发现当季最潮衣服和爱丽缇旗舰店搭配心得。">
    <meta name="copyright" content="meilishuo.com">

    <link rel="alternate" href="http://m.mogujie.com/x6/detail/1fxighu">
    <meta name="mobile-agent" content="format=jsp5;url=http://m.mogujie.com/x6/detail/1fxighu">

    <link rel="stylesheet" type="text/css" href="pc\css\base.css?1607170150.25">

    <link rel="canonical" href="http://shop.mogujie.com/detail/1fxighu">

    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml">
    <link href="css\iconfont\iconfont.css" rel="stylesheet">
    <link href="css\common.css" rel="stylesheet">
    <link href="css\goods-detail.css" rel="stylesheet">
    <link rel="icon" href="http://s16.mogucdn.com/p1/160614/idid_ifrtgzddgm3dmnjshezdambqhayde_49x48.png" type="image/x-icon">

    <script> curl = {apiName: 'require'};
    var MOGU = {};
    var MoGu = {};</script>
    <link rel="icon" href="http://s16.mogucdn.com/p1/160614/idid_ifrtgzddgm3dmnjshezdambqhayde_49x48.png" type="image/x-icon">
    <link>
    <script> curl = {apiName: 'require'}; var MOGU = {}; var MoGu = {};</script>



    <link href="css\index.css-2435ceae.css" rel="stylesheet" type="text/css">


    <link href="__newtown\detail_mls\assets\mls-pc\pages\normal\index.css-449eac8d.css" rel="stylesheet" type="text/css">

<%--    <script type="text/javascript" src="js\pkg-pc-base.js-beb518b8.js"></script>--%>
    <script type="text/javascript" src="webjars/jquery/3.4.1/jquery.js"></script>

    <script type="text/javascript">
        var MOGU_DEV = 0;

        if (window.require) {
            require.config({
                domain: 0
            });
        }
        MOGUPROFILE = {};
        //性能打点数据检测
        window.__trace__headendt = +new Date;
        (function(){
            window.__trace__domready = null;
            window.__trace__ladingendt = null;
            if(document.readyState){
                function setDomOperation(){
                    if(document.readyState == 'interactive'){
                        window.__trace__domready = +new Date();
                    }
                    else if(document.readyState == 'complete'){
                        window.__trace__ladingendt = +new Date();
                    }
                }
                setDomOperation();
                document.onreadystatechange = setDomOperation;
            }
        })();
    </script>


    <script type="text/javascript">
        $(function () {
            $('input[name="radiobutton"]').click(function(){
                alert(this.value);
                // alert($(this).val());
                var ss = $(this).val();
                $.ajax({
                    url:"/car.do?_method=stock",
                    data:{cID:"${requestScope.goods.cID}",size:ss},
                    dataType:"text",
                    beforeSend:function(){
                        alert("请求发送之前执行");
                    },
                    success:function (data,status) {
                        switch (data) {
                            case "S":
                                $("#sizeStockS").show();
                                $("#sizeStock").hide();
                                $("#sizeStockM").hide();
                                $("#sizeStockL").hide();
                                $("#sizeStockXL").hide();
                                $("#sizeStockXXL").hide();
                                break;
                            case "M":
                                $("#sizeStockM").show();
                                $("#sizeStock").hide();
                                $("#sizeStockS").hide();
                                $("#sizeStockL").hide();
                                $("#sizeStockXL").hide();
                                $("#sizeStockXXL").hide();
                                break;
                            case "L":
                                $("#sizeStockL").show();
                                $("#sizeStock").hide();
                                $("#sizeStockM").hide();
                                $("#sizeStockS").hide();
                                $("#sizeStockXL").hide();
                                $("#sizeStockXXL").hide();
                                break;
                            case "XL":
                                $("#sizeStockXL").show();
                                $("#sizeStock").hide();
                                $("#sizeStockM").hide();
                                $("#sizeStockL").hide();
                                $("#sizeStockS").hide();
                                $("#sizeStockXXL").hide();
                                break;
                            case "XXL":
                                $("#sizeStockXXL").show();
                                $("#sizeStock").hide();
                                $("#sizeStockM").hide();
                                $("#sizeStockL").hide();
                                $("#sizeStockXL").hide();
                                $("#sizeStockS").hide();
                                break;
                            default:
                                $("#sizeStock").show();
                                $("#sizeStockM").hide();
                                $("#sizeStockL").hide();
                                $("#sizeStockXL").hide();
                                $("#sizeStockS").hide();
                                $("#sizeStockXXL").hide();
                        }
                    }
                })
            })
        });
    </script>
<%--    <script type="text/javascript">--%>
<%--        $(function(){--%>
<%--            $("#add2cart").click(function(){--%>
<%--                alert("------------")--%>
<%--                if($('#sizeStockS').is(':show')){--%>
<%--                    location.href="/car.do?_method=addCar&bsUserAccount=${sessionScope.bsUserAccount}&bsComStock=${sessionScope.bsComStockS}";--%>
<%--                    alert("---------")--%>
<%--                }else if($('#sizeStockM').is(':visible')){--%>
<%--                    location.href="/car.do?_method=addCar&bsUserAccount=${sessionScope.bsUserAccount}&bsComStock=${sessionScope.bsComStockM}";--%>
<%--                }else if($('#sizeStockL').is(':visible')){--%>
<%--                    location.href="/car.do?_method=addCar&bsUserAccount=${sessionScope.bsUserAccount}&bsComStock=${sessionScope.bsComStockL}";--%>
<%--                }else if($('#sizeStockXL').is(':visible')){--%>
<%--                    location.href="/car.do?_method=addCar&bsUserAccount=${sessionScope.bsUserAccount}&bsComStock=${sessionScope.bsComStockXL}";--%>
<%--                }else if($('#sizeStockXXL').is(':visible')){--%>
<%--                    location.href="/car.do?_method=addCar&bsUserAccount=${sessionScope.bsUserAccount}&bsComStock=${sessionScope.bsComStockXXL}";--%>
<%--                }--%>
<%--            })--%>
<%--        });--%>
<%--        $(function(){--%>
<%--            $("#tocar").click(function(){--%>
<%--                alert("------------")--%>
<%--                if($('#sizeStockS').is(':visible')){--%>
<%--                    location.href="/car.do?_method=showList&bsUserAccount=${sessionScope.bsUserAccount}&bsComStock=${sessionScope.bsComStockS}";--%>
<%--                }else if($('#sizeStockM').is(':visible')){--%>
<%--                    location.href="/car.do?_method=showList&bsUserAccount=${sessionScope.bsUserAccount}&bsComStock=${sessionScope.bsComStockM}";--%>
<%--                }else if($('#sizeStockL').is(':visible')){--%>
<%--                    location.href="/car.do?_method=showList&bsUserAccount=${sessionScope.bsUserAccount}&bsComStock=${sessionScope.bsComStockL}";--%>
<%--                }else if($('#sizeStockXL').is(':visible')){--%>
<%--                    location.href="/car.do?_method=showList&bsUserAccount=${sessionScope.bsUserAccount}&bsComStock=${sessionScope.bsComStockXL}";--%>
<%--                }else if($('#sizeStockXXL').is(':visible')){--%>
<%--                    location.href="/car.do?_method=showList&bsUserAccount=${sessionScope.bsUserAccount}&bsComStock=${sessionScope.bsComStockXXL}";--%>
<%--                }--%>
<%--            })--%>
<%--        });--%>
<%--    </script>--%>

<style type="text/css">
    #shopColor{
        margin-left: 50px;
    }
    #sizes {
        margin-left: 50px;
        /*font:18px  arial, sans-serif;*/
        /*!*设置文字大小和字体样式 *!*/
    }
    a.logo{
        padding-left: 100px;
        width: 130px;
        height: 100px;
    }

</style>

</head>
<body>


<script type="text/javascript">
    /**
     ** for layout 960
     **/
    (function () {
        var wWidth = $(window).width();
        if (wWidth < 1212) {
            $('body').addClass('media_screen_960');
        } else {
            $('body').addClass('media_screen_1200');
        }
        //initTime for log 判断对象是否存在
        window.MoGu && $.isFunction(MoGu.set) && MoGu.set('initTime', (new Date()).getTime());

        var ua = navigator.userAgent;
        // 判断是否是ipad
        var is_plat_ipad = ua.match(/(iPad).*OS\s([\d_]+)/);
        if (is_plat_ipad) {
            $('body').addClass('media_ipad');
        }
        // 判断是否是ipadApp
        var is_plat_ipadApp = ua.indexOf('MeilishuoHD') >= 0 || location.href.indexOf('_atype=ipad') >= 0;
        if (is_plat_ipadApp) {
            $('body').addClass('media_ipad_app');
            // 隐藏头尾
            $('body').append('<style type="text/css">.header_2015,.header_nav,.foot .foot_wrap{display: none;}.foot{height: 0;background: none;}.back2top_wrap{height:0;width:0;overflow:hidden;opacity:0;}</style>');
            // 移除购物车，返回顶部
            setTimeout(function () {
                $('.back2top_wrap').remove();
            }, 1000)
        }
    })();
</script>

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
                        <a href="serviceEnsure.jsp">服务保障</a></
                    >
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
<!-- 店铺公共头部-店铺信息 start -->


<!-- topBanner -->
<div class="ovbox mod_topBanner">
    <div class="mod_list clearfix">
        <div class="mod_item w1200" data-id="4634908" data-width="1200" data-type="topBanner"
             data-title="$commonTopBanner.layoutname">
            <div class="mod_cont topbanner">
                <div id="com-search">
                    <div class="inner">
                        <a href="index.do" class="logo">
                            <img src="pic/bs-logo.png"></a>
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
                                    <input type="submit" class="search-btn" value="" style="height: 28px ;width: 70px ;border: none">
                                    <div class="suggest-box"></div>
                                </form>
                            </div>
                            <div class="hotword"></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- topNavgation -->
<div class="ovbox mod_topNav blackStyle">
    <div class="mod_list clearfix">
        <div class="mod_item w1200" data-id="4634909" data-width="1200" data-type="topNav"
             data-title="$commonTopNav.layoutName">
            <div class="mod_cont topNav">
                <ol class="clearfix">
                    <li><a href="shop.jsp#110fni1q">首页</a></li>
                    <li class="all"><a href="shop.jsp#110fni1q/index/total">全部商品</a></li>
                    <li><a href="shop.jsp#110fni1q/list/index?categoryId=10702384">热卖单品</a></li>
                    <li><a href="shop.jsp#110fni1q/list/index?categoryId=10724128">连衣裙</a></li>
                    <li><a href="shop.jsp#110fni1q/list/index?categoryId=10849050">雪纺/蕾丝衫</a></li>
                    <li><a href="shop.jsp#110fni1q/list/index?categoryId=10849048">时尚套装</a></li>
                    <li><a href="shop.jsp#110fni1q/list/index?categoryId=10845418">T恤针织衫</a></li>
                    <li><a href="shop.jsp#110fni1q/list/index?categoryId=10725286">特惠专区</a></li>
                    <li><a href="shop.jsp#110fni1q/list/index?categoryId=10725290">夏装上新</a></li>
                    <li><a href="shop.jsp#110fni1q/list/index?categoryId=20028214">半身裙/短裤</a></li>
                    <li><a href="shop.jsp#110fni1q/list/index?categoryId=20029296">阔腿裤</a></li>
                </ol>
                <div class="category_list slideer" style="display: none;">
                    <dl>
                        <dd>
                            <a href="shop.jsp#110fni1q/list/index?categoryId=10702384">热卖单品</a>
                        </dd>
                        <dd>
                            <a href="shop.jsp#110fni1q/list/index?categoryId=20064594">初秋新品</a>
                        </dd>
                        <dd>
                            <a href="shop.jsp#110fni1q/list/index?categoryId=10724128">连衣裙</a>
                        </dd>
                        <dd>
                            <a href="shop.jsp#110fni1q/list/index?categoryId=10849050">蕾丝/针织衫</a>
                        </dd>
                        <dd>
                            <a href="shop.jsp#110fni1q/list/index?categoryId=10849048">时尚套装/搭配</a>
                        </dd>
                        <dd>
                            <a href="shop.jsp#110fni1q/list/index?categoryId=20028214">半身裙/裤装</a>
                        </dd>
                        <dd>
                            <a href="shop.jsp#110fni1q/list/index?categoryId=10845418">T恤衫</a>
                        </dd>
                        <dd>
                            <a href="shop.jsp#110fni1q/list/index?categoryId=20064593">外套专区</a>
                        </dd>
                        <dd>
                            <a href="shop.jsp#110fni1q/list/index?categoryId=10725286">特惠专区</a>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="body_wrap">
    <div class="shop-detail">
        <div class="detail-primary clearfix">
            <div class="primary-goods">
                <div class="clearfix">
                    <div class="fl goods-info goods-info-tuan-pre" id="J_GoodsInfo">
                        <div class="info-box">
                            <div class="detail-info">
                                <div class="item-title">${requestScope.goods.describe}</div>
                                <div class="item-price">
                                    <span class="now">${requestScope.goods.price}</span><span class="dft"><fmt:formatNumber value="${requestScope.goods.price*1.5}" type="currency" pattern="￥.00"/></span>
                                </div>
                                <ul class="item-data clearfix">
                                    <li class="col-4">销量<span class="txt-theme ml10">123件</span></li>
                                    <li class="col-4">好评率<span class="txt-theme ml10">98%</span></li>
                                    <li class="col-4">收藏<span class="txt-theme ml10">240人</span></li>
                                </ul>
                                <div class="sku-info">
                                    <%--                                        <div class="prop">--%>
                                    <%--                                            <div class="dt">颜色：</div>--%>
                                    <%--                                            <div class="dd">--%>
                                    <%--                                                <ul class="chose-img">--%>
                                    <%--                                                    <li><a href=""><img src="uploads\6.jpg" alt=""></a></li>--%>
                                    <%--                                                    <li><a class="active" href=""><img src="uploads\6.jpg" alt=""></a></li>--%>
                                    <%--                                                </ul>--%>
                                    <%--                                            </div>--%>
                                    <%--                                        </div>--%>
                                    <div class="prop">
                                        <div class="dt">尺寸：</div>
                                        <div class="dd" id="size">
                                            <ul class="chose-common" >
                                                <li><input value="S" checked="checked" type="radio" name="radiobutton">S</li>
                                                <li><input value="M" type="radio" name="radiobutton">M</li>
                                                <li><input value="L" type="radio" name="radiobutton">L</li>
                                                <li><input value="XL" type="radio"  name="radiobutton">XL</li>
                                                <li><input value="XXL" type="radio" name="radiobutton">XXL</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="prop">
                                        <div class="dt">数量：</div>
                                        <div class="dd">
                                            <div class="mod-numbox chose-num" data-max="30">
                                                <span class="count-minus"></span>
                                                <input class="count-input" value="1" type="text" name="num" id="totalNum">
                                                <span class="count-plus"></span>
                                            </div>
                                            <div class="stock">(库存
                                                <span id="sizeStock" hidden="hidden">${requestScope.goods.stock}</span>
                                                <span id="sizeStockS" hidden="hidden">${sessionScope.bsComStockS.stock}</span>
                                                <span id="sizeStockM" hidden="hidden">${sessionScope.bsComStockM.stock}</span>
                                                <span id="sizeStockL" hidden="hidden">${sessionScope.bsComStockL.stock}</span>
                                                <span id="sizeStockXL" hidden="hidden">${sessionScope.bsComStockXL.stock}</span>
                                                <span id="sizeStockXXL" hidden="hidden">${sessionScope.bsComStockXXL.stock}</span>
                                                件)</div>
                                        </div>
                                    </div>
                                </div>
                                <c:choose>
                                    <c:when test="${sessionScope.bsUserAccount.bsName != null}">
                                            <div class="item-action">
                                                    <a class="buy-now" onclick="buyNow()">立刻购买</a>
                                                    <a onclick="buyafter()"  class="add-cart">加入购物车</a>
                                            </div>
                                    </c:when>
                                </c:choose>

                                <c:choose>
                                    <c:when test="${sessionScope.bsUserAccount.bsName == null}">
                                        <div class="item-action">
                                            <a href="login.jsp" class="buy-now">立刻购买</a>
                                            <a href="login.jsp" class="add-cart">加入购物车</a>
                                        </div>
                                    </c:when>
                                </c:choose>
                                <div class="item-extend">
                                    <!-- <a href="" class="fav"><i class="iconfont icon-star"></i>收藏</a> -->
                                    <a href="" class="fav">已收藏</a>
                                    <a href="" class="share"><i class="iconfont icon-fenxiang"></i>分享</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="fl goods-topimg" id="J_GoodsImg">
                        <div class="big-img">
                            <button class="middle">
                                <img id="J_BigImg" src="${requestScope.goods.showPicture}"
                                     data-main="http://d01.res.meilishuo.net/pic/_o/56/20/136f8f7eff1a84578d1ef245015e_640_832.c1.jpg_f1d98337_s0_468_468.jpg"
                                     alt="雪纺裙,收腰,淑女,夏季新品,系带" width="400">
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="primary-slide">
                <div class="goods-recommend" id="J_ModuleLook" data-ptp="_rechot"></div>
            </div>
        </div>
        <div class="detail-content ">

            <!-- 顶部 -->
            <div class="col-top">
                <!-- 搭配购 -->
                <div class="module-dapei" id="J_ModuleDapei"></div>
            </div>

            <!-- 主体 -->
            <div class="col-main">

                <!-- 模块标签页 -->
                <div class="module-tabpanel" id="J_ModuleTabpanel">

                    <!-- 选项栏 -->
                    <div class="tabbar-box">
                        <ul class="tabbar-list clearfix">

                            <li data-panels="rates" data-hasnav="false">
                                <a href="javascript:;">查看评价<em>${fn:length(requestScope.allComment)}</em></a>
                            </li>

                            <li class="qrcode">
                                <div class="qrcode-togger">手机扫码下单<!-- <br />快捷支付立减五元 --></div>
                                <div class="qrcode-pic">
                                    <!-- <img src="http://shop.mogujie.com/qrcode/16qub6k"> -->
                                </div>
                                <i class="qrcode-mini"></i>
                                <i class="qrcode-arrow"></i>
                            </li>
                        </ul>
                    </div>
                    <div class="tabbar-bg ui-hide">
                        <div class="bg-right"></div>
                        <div class="bg-left"></div>
                    </div>
                    <div class="tabbar-occupying ui-hide"></div>

                    <!-- 选项页 -->
                    <div class="panel-box">

                        <!-- 图文详情 -->
                        <div class="module-panel module-graphic" id="J_ModuleGraphic"></div>

                        <!-- 累计评价 -->
                        <div class="module-panel module-rates ui-none" id="J_ModuleRates">
                            <!-- 买家评价 -->
                            <div id="J_RatesBuyer">
                                <div class="panel-title rates-title">
                                    <h1>买家评价</h1>
                                </div>
                                <!-- 买家评价 -->
                                <div class="rates-buyer">


                                    <div class="comment-content">

                                                                  </div>


                                        <!-- 导航 -->
                                        <div class="nav clearfix">

                                            <a href="javascript:;" data-type="all"
                                               class="c">全部评价（${fn:length(requestScope.allComment)}）</a>
                                            <br><br>
                                            <hr style="border:1px dashed gray;height:1px">
                                        </div>


                                        <!-- 列表 -->
                                        <div id="J_RatesBuyerList" class="comments">
                                            <c:forEach items="${requestScope.allComment}" var="Bscomment">
                                                <div>${Bscomment.content}</div>
                                                <br>
                                                <hr style="border:1px dashed gray;height:1px">
                                                <br>
                                            </c:forEach>

                                        </div>
                                    </div>
                                </div>
                            </div>


                            <!-- 成交记录 -->
                            <div id="J_RatesOrder">
                                <div class="panel-title rates-title">
                                    <h1>成交记录</h1>
                                </div>
                                <!-- 成交记录 -->
                                <div class="rates-order">
                                    <!-- 列表 -->
                                    <div class="sale-list" id="J_RatesOrderList"></div>
                                </div>
                            </div>
                        </div>

                        <!-- 本店同类商品 -->
                        <div class="module-panel module-recommend" id="J_ModuleRecommend"></div>
                    </div>
                </div>
            </div>

            <!-- 侧边栏 -->
        <div class="col-sidebar">

            <!-- 店铺模块 -->
            <div class="module-shop" id="J_ModuleShop">

            </div>

            <!-- 分类模块 -->
            <div class="module-classify" id="J_ModuleClassify">

            </div>

            <!-- 看了又看模块 -->
            <div class="module-repeat" id="J_ModuleRepeat"></div>
        </div>
    </div>
</div>

<div class="foot J_footertimer" data-ptp="_foot" data-svrtime="">
    <div class="wrap foot_wrap clearfix">
        <div class="foot_info">

            <div class="info_text">
                <p>营业执照注册号：<a rel="nofollow"
                              href="http://s6.mogucdn.com/pic/140924/8qc9_ieydgn3emqztszbxmmytambqmmyde_1502x2246.jpg"
                              target="_blank">110108013011072</a></p>
                <p>京ICP备11031139号</p>
                <p>
                    <a target="_blank"
                       href="http://d03.res.meilishuo.net/pic/_o/e1/80/4f22feee45bb9d0a92e7a950f9c5_1131_1600.cg.jpg"
                       style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
                        <img src="http://s18.mogucdn.com/p1/160428/upload_ifrgemjwgq3gemzthazdambqmeyde_20x20.png"
                             style="float:left;">
                        <span style="color: #999;">&nbsp;京公网安备 110108006045</span>
                    </a>
                </p>
                <p class="mgjhostname" title="<?php echo gethostname();?>">©<? echo date("Y") ?> meilishuo.com
                    北京美丽时空网络科技有限公司</p>
            </div>
        </div>
        <div class="foot_link">
            <dl class="link_company">
                <dt>公司</dt>
                <dd><a rel="nofollow" href="aboutus.jsp" target="_blank">关于我们</a></dd>
                <dd><a rel="nofollow" href="employmentInfo.jsp" target="_blank">招聘信息</a></dd>
                <dd><a rel="nofollow" href="contactus.jsp" target="_blank">联系我们</a></dd>
            </dl>
            <dl class="link_consumer">
                <dt>消费者</dt>
                <dd><a rel="nofollow" href="noviceGuide.jsp" target="_blank">新手指南</a></dd>
                <dd><a rel="nofollow" href="serviceEnsure.jsp" target="_blank">服务保障</a></dd>
            </dl>
            <dl class="link_business">
                <dt>商家</dt>
                <dd><a rel="nofollow" href="businessEnter.jsp" target="_blank">商家入驻</a></dd>
                <dd><a rel="nofollow" href="businessPromotion.jsp" target="_blank">商家推广</a></dd>
                <dd><a rel="nofollow" href="helpCenter.jsp" target="_blank">帮助中心</a></dd>
            </dl>
        </div>
    </div>
</div>



<script type="text/javascript" src="js\index.js-8f5416c3.js"></script>

<script type="text/javascript" src="__newtown\detail_mls\assets\mls-pc\pages\normal\index.js-957ad653.js"></script>
<script type="text/javascript">
    function buyNow() {
        var num = $("#totalNum").val();
        // alert(num);
        var size = $("input[name='radiobutton']:checked").val();
        // alert(size);
        // var color = $("input[name='color']:checked").val();
        window.location.href="/car.do?_method=tocar&cID=${requestScope.goods.cID}&userid=${sessionScope.bsUserAccount.ID}&userName=${sessionScope.bsUserAccount.bsName}&num="+num+"&size="+size;
    }
    function buyafter() {
        var num = $("#totalNum").val();
        // alert(num);
        var size = $("input[name='radiobutton']:checked").val();
        // alert(size);
        // var color = $("input[name='color']:checked").val();
        window.location.href="/car.do?_method=addCar&cID=${requestScope.goods.cID}&userid=${sessionScope.bsUserAccount.ID}&userName=${sessionScope.bsUserAccount.bsName}&num="+num+"&size="+size;

    }
</script>
</body>
<script src="js\jquery.js"></script>
<link rel="stylesheet" href="js\slick\slick.css">
<script src="js\slick\slick.min.js"></script>
<script src="js\global.js"></script>
<script>
    /*商品数量操作*/
    function goodsCount(o){
        if(!(o instanceof Object)) var o={};
        var inputCell = o.inputCell || ".count-input",
            minusCell = o.minusCell || ".count-minus",
            plusCell = o.plusCell || ".count-plus",
            disClass = o.disClass || "disabled";
        return this.each(function(){
            var $wrap = $(this),
                $input = $(inputCell,$wrap),
                $minus = $(minusCell,$wrap),
                $plus = $(plusCell,$wrap),
                maxnum=parseInt($wrap.attr('data-max')) || false,
                minnum=$wrap.attr('data-min') || 1,
                initnum=$input.val() || minnum;
            /*初始*/
            $input.val(initnum);
            checkIlegal();
            function checkIlegal(){
                var value =parseInt($input.val());

                //
                if (maxnum&&value>maxnum) {
                    $input.val(maxnum);
                }
                else if (value<minnum) {
                    $input.val(minnum);
                }
                if(value<=minnum){
                    $minus.addClass(disClass);
                }else{
                    $minus.removeClass(disClass);
                }
                if (value>=maxnum) {
                    $plus.addClass(disClass);
                }else {
                    $plus.removeClass(disClass);
                }

            }
            function checknull() {
                var value =$input.val();
                if(value === "" || value === "0"){
                    $input.val(minnum);
                }
            }
            $input.keyup(function(evt){
                var value = $(this).val();
                var newvalue = value.replace(/[^\d]/g,"");
                $(this).val(newvalue);
                checknull();
            });
            $input.blur(function(){
                checknull();
                checkIlegal();
            })

            $minus.click(function(){
                minus();
                checkIlegal();
            });

            $plus.click(function(){
                add();
                checkIlegal();
            });

            function add () {
                var value = $input.val();
                var plus = parseInt(value)+1;
                $input.val(plus);
            }
            function minus () {
                var value = parseInt($input.val());
                var minus = value-1;
                $input.val(minus);
            }
        });
    }
    $.fn.goodsCount = goodsCount;
</script>

<script>
    $(function () {

        +function () {
            var index=0,
                bsrc='',
                timer=null,
                box=$('.detail-show'),
                origin=$('.origin-show'),
                bigimg=box.find('.big-pic'),
                tumb=box.find('.thumb-show'),
                tumbItem=tumb.find('.item'),
                zoomup=box.find('.zoomup'),
                zoomshow=box.find('.zoom-show');

            /*图片切换*/
            tumbItem.on('mouseenter',function () {
                index=$(this).index();
                clearTimeout(timer);
                timer=setTimeout(function (){
                    update(index);
                }, 300)

            });

            function update (index) {
                bsrc=tumbItem.eq(index).find('.s-pic').attr('bsrc');
                bigimg.attr('src', bsrc);
                tumbItem.find('.s-pic').removeClass('active').end().eq(index).find('.s-pic').addClass('active');
            }

            update(index);

            if ($('.detail-show .thumb-show .item').length>5) {
                $('.detail-show .thumb-show').slick({
                    slidesToShow: 5,
                    infinite:false
                });
            }

            /*放大镜*/
            origin.on('mouseover mouseout',function (e) {
                if (e.type=="mouseover") {
                    var oX=$(this).offset().left,
                        oY=$(this).offset().top,
                        zX=e.pageX,
                        zY=e.pageY,
                        pW=$(this).outerWidth(),
                        pH=$(this).outerHeight(),
                        zW=zoomup.outerWidth(),
                        zH=zoomup.outerHeight(),
                        scale=pW/zW,
                        zsW=zoomshow.width()*scale,//放大后的宽度
                        factor=zsW/pW

                    zoomshow.find('img').attr('src',bigimg.attr('src')).width(zsW);

                    $(document).on('mousemove.zoom',function (e) {
                        zX=e.pageX-oX- zW/2;
                        zY=e.pageY-oY- zH/2;
                        move();
                    });

                    function move () {
                        zX=zX<=0?0:zX;
                        zX=zX>=pW-zW?pW-zW:zX;
                        zY=zY<=0?0:zY;
                        zY=zY>=pH-zH?pH-zH:zY;
                        zoomup.show().css({top:zY,left:zX});
                        zoomshow.show().find('img').css({top:-zY*factor,left:-zX*factor});
                    }
                }
                else {
                    $(document).off('mousemove.zoom');
                    zoomup.hide()
                    zoomshow.hide();
                }
            });
        }();

        $('.mod-numbox').goodsCount(); //数量加减

        $('.detail-main').zTab({
            tabnav:'.detail-tabs',
            trigger:'click'
        });
    });
</script>
</html>

