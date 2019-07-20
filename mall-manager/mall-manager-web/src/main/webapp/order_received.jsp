<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>

	<head>
		<script type="text/javascript">
			window.__trace__headstart = +new Date;
			window.__server__startTime = 1471508022050;
			window.__token = "kG1jVhLVDm34y6l4aRJobRSagYwKaMqjU7+RuycODmE=";
		</script>
		<meta charset="UTF-8">


		<meta http-equiv="Cache-Control" content="no-transform ">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>订单列表_Beauty Show</title>
		<meta name="keywords" content="Beauty Show,meilishuo,买手,买手街,网购">
		<meta name="description" content="Beauty Show-中国最大的女性电子商务平台，精选款式美、质量优、价格合理的衣服、鞋子、箱包、配饰和美妆等潮流商品。让8000万女性会员在这里享受购物乐趣，发现时尚精品，分享消费体验。">
		<meta name="copyright" content="meilishuo.com">




		<link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml">
		<link rel="icon" href="p1\160614\idid_ifrtgzddgm3dmnjshezdambqhayde_49x48.png" type="image/x-icon">

		<script> curl = {apiName: 'require'}; var MOGU = {}; var MoGu = {};</script>

		<link href="css\index.css-63e7a9a6.css" rel="stylesheet" type="text/css">

		<link href="css\index.css-6b668861.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="pc\css\base.css?1607170150.25">

		<script type="text/javascript" src="js\pkg-pc-base.js-beb518b8.js"></script>

		<style type="text/css">
			.logo img{
				float: left;
				height: 110px;
				margin-top: 0px;
				margin-left: 90px;
				/**/
			}
		</style>
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
			(function() {
				window.__trace__domready = null;
				window.__trace__ladingendt = null;
				if (document.readyState) {
					function setDomOperation() {
						if (document.readyState == 'interactive') {
							window.__trace__domready = +new Date();
						} else if (document.readyState == 'complete') {
							window.__trace__ladingendt = +new Date();
						}
					}
					setDomOperation();
					document.onreadystatechange = setDomOperation;
				}
			})();
		</script>
	</head>
	<body>


	<script type="text/javascript">
		/**
		 ** for layout 960
		 **/
		(function() {
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
				$('body').append(
						'<style type="text/css">.header_2015,.header_nav,.foot .foot_wrap{display: none;}.foot{height: 0;background: none;}.back2top_wrap{height:0;width:0;overflow:hidden;opacity:0;}</style>'
				);
				// 移除购物车，返回顶部
				setTimeout(function() {
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
					<a href="/order.do?_method=orderTotal&id=${sessionScope.bsUserAccount.ID}">我的订单</a>
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
						<input type="submit" class="search-btn" value="" style="height: 28px ;width: 70px ;border: none">
						<div class="suggest-box"></div>
					</form>
				</div>
				<div class="hotword"></div>
			</div>

		</div>
	</div>

		<div id="body_wrap">
			<div class="mu_wrap wrap clearfix">
				<div id="navListWrap">
					<div class="doota_nav mu_nav_wrap">
						<ul class="doota_ul">
                            <li><a class="menu_order disable-a"> 我的订单 </a>
                                <ul class="mu_nav_item">
                                    <li> <a href="/order.do?_method=orderTotal&id=${sessionScope.bsUserAccount.ID}">全部订单</a> </li>

                                    <li class="c"> <a href="/order.do?_method=orderUnreceive&id=${sessionScope.bsUserAccount.ID}"> 待收货 <i id="unReceivedOrder" class="mu_nav_count"><i class="mu_nav_count_arw"></i></i> </a> </li>
                                    <li >
										<a href="/order.do?_method=waitEvaluate&id=${sessionScope.bsUserAccount.ID}"> 待评价
											<i id="waitingRateOrder" class="mu_nav_count">
												<i class="mu_nav_count_arw"></i></i> </a> </li>
                                    <li> <a href="order_DELETED.jsp#&amp;_uk=sr67mlrhfousumpjbc6n7bdg82rvnyapglqybeg6"> 退货退款 <i class="mu_nav_count"><i
                                            class="mu_nav_count_arw"></i></i> </a> </li>

                                </ul>
                                </li>

                            <li><a class="disable-a">优惠特权</a>
								<ul>
									<li><a class="menu_coupon_plat" href="coupon.jsp#?pages=1&coupon_type=1&status=0">平台优惠券</a></li>
									<li><a class="menu_coupon_shop" href="coupon.jsp#?pages=1&coupon_type=2&status=0">店铺优惠券</a></li>
								</ul>
							</li>
							<li> <a class="menu_pcenter" href="footprint.jsp#"> 我的足迹 <em class="little-triangle"></em><em class="little-triangle-hover"></em>
								</a> </li>
							<li> <a class="menu_pcenter" href="/bsAddress.do?_method=address&userId=${sessionScope.bsUserAccount.ID}&receiveName=${sessionScope.bsUserAccount.bsName}"> 收货地址 <em class="little-triangle"></em><em class="little-triangle-hover"></em>
								</a> </li>
							<li> <a class="disable-a">账号管理</a>
								<ul>
									<li><a href="setPersonal.jsp">我的信息</a></li>
									<li><a href="setAvatar.jsp#">个人头像</a></li>
								</ul>
							</li>
							<li> <a class="disable-a">安全中心</a>
								<ul>
									<li><a href="setPassword.jsp">用户密码</a></li>
									<li> <a href="payPassword.jsp">支付密码</a> </li>
									<li><a href="bindMobile.jsp">手机绑定</a></li>
									<li><a href="loginEqm.jsp#">登录设备</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div class="mu_content_wrap">
					<div class="order-title">
						<ul class="order-title-column clearfix">
                            <li class="goods">商品</li>
                            <li class="price">单价(元)</li>
                            <li class="quantity">数量</li>
                            <li class="aftersale">总价</li>
                            <%--							<li class="total">实付款(元)</li>--%>
                            <li class="status">交易状态</li>
                            <%--							<li class="other">操作</li>--%>
							<li class="status">确认收货</li>
						</ul>
					</div>

					<div id="orderWrap">
                        <c:forEach items="${requestScope.orders}" var="order">
                            <ul class="order-title-column clearfix">
								<li class="goods"><a href="index2car.do?sID=${order.sid}">${order.goodsName}</a></li>
<%--								<c:out value="${order.sid}"></c:out>--%>
                                <li class="price">${order.singlePrice}</li>
                                <li class="quantity">${order.goodsNum}</li>
                                <li class="aftersale">${order.totalPrice}</li>
                                <li class="status">${order.state}</li>
								<li class="status"><a href="/confirm.do?oid=${order.oid}&id=${sessionScope.bsUserAccount.ID}"  style="color: #FF3366">确认</a></li>
                            </ul>
                        </c:forEach>

					</div>
				</div>
			</div>
		</div>

		<div class="foot J_footertimer" data-ptp="_foot" data-svrtime="">
			<div class="wrap foot_wrap clearfix">
				<div class="foot_info">

					<div class="info_text">
						<p>营业执照注册号：<a rel="nofollow" href="http://s6.mogucdn.com/pic/140924/8qc9_ieydgn3emqztszbxmmytambqmmyde_1502x2246.jpg"
							 target="_blank">110108013011072</a></p>
						<p>京ICP备11031139号</p>
						<p>
							<a target="_blank" href="http://d03.res.meilishuo.net/pic/_o/e1/80/4f22feee45bb9d0a92e7a950f9c5_1131_1600.cg.jpg"
							 style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
								<img src="http://s18.mogucdn.com/p1/160428/upload_ifrgemjwgq3gemzthazdambqmeyde_20x20.png" style="float:left;">
								<span style="color: #999;">&nbsp;京公网安备 110108006045</span>
							</a>
						</p>
						<p class="mgjhostname" title="<?php echo gethostname();?>">©
							<? echo date("Y") ?> meilishuo.com 北京美丽时空网络科技有限公司</p>
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


		<script type="text/javascript" src="js\index.js-417ef0a2.js"></script>

<%--		<script type="text/javascript" src="js\index.js-800cd574.js"></script>--%>

	</body>

</html>
