<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false" %>
<html>

<head>
	<script type="text/javascript">
		window.__trace__headstart = +new Date;
		window.__server__startTime = 1471487722297;
		window.__token = "KwNcAe6R0OEM01bkBt9QueLZ1n/OJxnmxeRttnw/vr8=";
	</script>
	<meta charset="UTF-8">

	<meta http-equiv="Cache-Control" content="no-transform ">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>我的购物车</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<meta name="copyright" content="meilishuo.com">
	<link rel="stylesheet" type="text/css" href="pc\css\base.css?1607170150.25">
	<link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml">
	<link rel="icon" href="http://s16.mogucdn.com/p1/160614/idid_ifrtgzddgm3dmnjshezdambqhayde_49x48.png" type="image/x-icon">

	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<script>
		curl = {
			apiName: 'require'
		};
		var MOGU = {};
		var MoGu = {};
	</script>

	<link href="css\index.css-dbb86485.css" rel="stylesheet" type="text/css">

	<link href="__newtown\trade_cart_web\assets\mls-pc\pages\cartList\index.css-005591bf.css" rel="stylesheet" type="text/css">

	<script type="text/javascript" src="js\pkg-pc-base.js-beb518b8.js"></script>

	<script type="text/javascript">
		var MOGU_DEV = 0;

		if(window.require) {
			require.config({
				domain: 0
			});
		}

		MOGUPROFILE = {};

		//性能打点数据检测
		window.__trace__headendt = +new Date;
		(function() {
			window.__trace__domready = null;
			window.__trace__ladingendt = null;
			if(document.readyState) {
				function setDomOperation() {
					if(document.readyState == 'interactive') {
						window.__trace__domready = +new Date();
					} else if(document.readyState == 'complete') {
						window.__trace__ladingendt = +new Date();
					}
				}
				setDomOperation();
				document.onreadystatechange = setDomOperation;
			}
		})();
	</script>
	<%--		<style>--%>
	<%--			.mydesign{--%>
	<%--				position: absolute;--%>
	<%--				top: 30%;--%>
	<%--				left: 35%;--%>
	<%--				margin: -150px 0 0 -200px;--%>
	<%--				width: 1000px;--%>
	<%--				height: 500px;--%>
	<%--				border: 1px solid red;--%>
	<%--			}--%>
	<%--		</style>--%>
	<style>
		.thdesign{
			width: 200px;
			height: 80px;
			bgcolor:"#F0FFFF";
		}
	</style>
	<style>
		.table_dd{
			bgcolor:"#F0FFFF";
		}
	</style>
	<style>
		.meilili{
			padding: 40px 0;
			text-align: center;
			position:absolute;
			left:800px;
			bottom:0;
		}
	</style>
</head>

<body>

<script type="text/javascript">
	/**
	 ** for layout 960
	 **/
	(function() {
		var wWidth = $(window).width();
		if(wWidth < 1212) {
			$('body').addClass('media_screen_960');
		} else {
			$('body').addClass('media_screen_1200');
		}
		//initTime for log 判断对象是否存在
		window.MoGu && $.isFunction(MoGu.set) && MoGu.set('initTime', (new Date()).getTime());

		var ua = navigator.userAgent;
		// 判断是否是ipad
		var is_plat_ipad = ua.match(/(iPad).*OS\s([\d_]+)/);
		if(is_plat_ipad) {
			$('body').addClass('media_ipad');
		}
		// 判断是否是ipadApp
		var is_plat_ipadApp = ua.indexOf('MeilishuoHD') >= 0 || location.href.indexOf('_atype=ipad') >= 0;
		if(is_plat_ipadApp) {
			$('body').addClass('media_ipad_app');
			// 隐藏头尾
			$('body').append('<style type="text/css">.header_2015,.header_nav,.foot .foot_wrap{display: none;}.foot{height: 0;background: none;}.back2top_wrap{height:0;width:0;overflow:hidden;opacity:0;}</style>');
			// 移除购物车，返回顶部
			setTimeout(function() {
				$('.back2top_wrap').remove();
			}, 1000)
		}
	})();
</script>

<div class="mgj_rightbar" data-ptp="_sidebar"></div>
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
				<a href="/order.do?_method=orderTotal&id=${sessionScope.bsUserAccount.ID}">我的订单</a>
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


<div id="body_wrap">
	<div class="g-header clearfix">
		<div class="g-header-in wrap clearfix">
			<div class="process-bar">
				<div class="md_process md_process_len4">
					<div class="md_process_wrap md_process_step1_5">
						<div class="md_process_sd"></div>
						<i class="md_process_i md_process_i1">
							1                <span class="md_process_tip">购物车</span>
						</i>
						<i class="md_process_i md_process_i2">
							2                <span class="md_process_tip">确认订单</span>
						</i>
						<i class="md_process_i md_process_i3">
							3                <span class="md_process_tip">支付</span>
						</i>
						<i class="md_process_i md_process_i4">
							<img src="//www.mogujie.com/img/pay/right.png" width="23" height="23" alt="">
							<span class="md_process_tip">完成</span>
						</i>
					</div>
				</div>
			</div>
			<div class="logo logo-cart"></div>
		</div>
	</div>
	<div class="mydesign">

		<table class="table table-bordered">
			<thead>
			<th class="thdesign"><p align="center">商品图片</p></th>
			<th class="thdesign"><p align="center">商品描述</p></th>
			<th class="thdesign"><p align="center">价格</p></th>
			<th class="thdesign"><p align="center">数量</p></th>
			<th class="thdesign"><p align="center">操作</p></th>
			</thead>
			<tbody>
			<c:forEach items="${bsShoppingCarList}" var="bsShoppingCar">
				<tr>
					<td align="center" valign="middle">${bsShoppingCar.picture}</td>
					<td align="center" valign="middle">${bsShoppingCar.describe}</td>
					<td align="center" valign="middle">${bsShoppingCar.price}</td>
					<td align="center" valign="middle">${bsShoppingCar.quantity}</td>
					<td align="center" valign="middle">
						<a href="/car.do?_method=deleteCar&carID=${bsShoppingCar.carID}&id=${sessionScope.bsUserAccount.ID}">删除</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>

		</table>
	</div>
</div>


<div class="meilili">
	<p title="mofa015027">
		<a href="index.jsp" target="_blank">美丽说</a>
		© 2016 Meilishuo.com,All Rights Reserved.
	</p>
	<div class="icons">
		<a class="vs" href="javascript:;"></a>
		<a class="mc" href="javascript:;"></a>
		<a class="up" href="javascript:;"></a>
		<a class="pa" href="http://bank.pingan.com/index.sjsp" target="_blank"></a>
		<a class="kx" href="https://ss.knet.cn/verifyseal.dll?sn=e14090533010053532r3hn000000&ct=df&a=1&pa=500267&tp=1.0.20.0.28.KXYH9AB" target="_blank"></a>
		<a class="pc" href="http://www.pingpinganan.gov.cn/" target="_blank"></a>
	</div>
</div>

<script type="text/javascript" src="js\index.js-3052ac85.js"></script>

<script type="text/javascript" src="__newtown\trade_cart_web\assets\mls-pc\pages\cartList\index.js-44a0103f.js"></script>

</body>

</html>