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

		<link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml">
		<link rel="icon" href="http://s16.mogucdn.com/p1/160614/idid_ifrtgzddgm3dmnjshezdambqhayde_49x48.png" type="image/x-icon">

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
		<style>
			.mydesign{
				position: absolute;
				top: 30%;
				left: 35%;
				margin: -150px 0 0 -200px;
				width: 1000px;
				height: 500px;
				border: 1px solid red;
			}
		</style>
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
		<div id="header" class="J_sitenav header_2015" data-ptp="_head">
			<div class="wrap clearfix"></div>
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
		</div>
		<div class="mydesign">
			<table class="table_dd">
				<thead>
				<th class="thdesign">商品图片</th>
				<th class="thdesign">商品描述</th>
				<th class="thdesign">价格</th>
				<th class="thdesign">数量</th>
				<th class="thdesign">操作</th>
				</thead>
				<tbody>
				<c:forEach items="${cList}" var="cList">
					<tr>
						<td align="center" valign="middle">${cList.picture}</td>
						<td align="center" valign="middle">${cList.describe}</td>
						<td align="center" valign="middle">${cList.price}</td>
						<td align="center" valign="middle">${cList.quantity}</td>
						<td align="center" valign="middle"><a>删除</a></td>
					</tr>
				</c:forEach>
				</tbody>

			</table>
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