﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

	<head>
		<script type="text/javascript">
			window.__trace__headstart = +new Date;
			window.__server__startTime = 1471567425065 || +new Date;
		</script>
		<meta charset="UTF-8">

		<meta http-equiv="Cache-Control" content="no-transform ">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>美丽说 - 收货地址</title>
		<meta name="keywords" content="蘑菇街,mogujie,买手,买手街,网购">
		<meta name="description" content="蘑菇街-中国最大的女性电子商务平台，精选款式美、质量优、价格合理的衣服、鞋子、箱包、配饰和美妆等潮流商品。让8000万女性会员在这里享受购物乐趣，发现时尚精品，分享消费体验。">
		<meta name="copyright" content="meilishuo.com">

		<meta name="apple-itunes-app" content="app-id=452176796, app-argument=">
		<meta name="og:title" content="">
		<meta name="og:description" content="蘑菇街-中国最大的女性电子商务平台，精选款式美、质量优、价格合理的衣服、鞋子、箱包、配饰和美妆等潮流商品。让8000万女性会员在这里享受购物乐趣，发现时尚精品，分享消费体验。">
		<meta name="og:image" content="">
		<meta name="og:image:width" content="">
		<meta name="og:image:height" content="">

		<link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml">
		<link rel="icon" href="pic/_o/46/c2/7545d5f20d276e84af0f034b0287_92_94.cf.png" type="image/x-icon">

		<script>
			curl = {
				apiName: 'require'
			};
			var MOGU = {};
		</script>

		<link rel="stylesheet" type="text/css" href="css\header.css$ead98e0e_1471519499.css" media="all">
		<link rel="stylesheet" type="text/css" href="css\page-muorder-common.css$ead98e0e_1471519499.css" media="all">
		<script type="text/javascript" src="js\pkg-pc-base.js$ead98e0e_1471519499.js"></script>
		<script>
			PTP_PARAMS = {
				"real_url": "http:\/\/log.juangua.com\/mogu.js?sfrom=logistics.meilishuo.com%255E&uid=11cnkktq&method=GET&time=1471567425&uuid=e320d57a-fde9-4936-99c2-27ee528b7657&ptp_url=&ptp_ref=&c_action=trade_address%2540%2540index&ptp_cnt=1.BpL5fyWj&custom_event=",
				"cps_info": "",
				"refer": "%2Ftrade%2Faddress%3F_uk%3D931d1543c436ae2fd00a6d5edef1cd6168f21a64",
				"rerefer": "http%3A%2F%2Flogistics.meilishuo.com%2Ftrade%2Faddress%3F_uk%3D931d1543c436ae2fd00a6d5edef1cd6168f21a64",
				"ptp_cnt_a": "1",
				"ptp_cnt_b": "BpL5fyWj",
				"c_action": "trade_address%40%40index",
				"time": "1471567425"
			};
			__MgjCinfoOn = 1;
		</script>
		<script type="text/javascript">
			var MOGU_DEV = 0;
			if(window.require) {
				require.config({
					domain: 'https://s10.mogucdn.com'
				});
			}

			MOGUPROFILE = {
				cdnHost: "//s17.mogucdn.com",
				appEnv: "production",
				is_subsite: "0",
				push_serviceHost: "221.228.199.44:117.121.133.45:8008",
				push_ajaxServiceHost: "http://m2.mogujie.com:8080",
				push_ajaxSericeBakHost: "http://117.121.133.50:8080",
				push_token: "4039a95a9d5bd008bf54b27300d67467",
				isNewIMShow: "true",
				google_ecomm_pagetype: "other",
				google_ecomm_pcat: "",
				userid: "11cnkktq",
				avatar: "http://s2.mogucdn.com/new1/v1/bdefaultavatar/03.jpg",
				isBuyer: "false"
			};

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
				var is_plat_ipadApp = ua.indexOf('MogujieHD') >= 0 || ua.indexOf('Mogujie4iPad') >= 0 || location.href.indexOf('_atype=ipad') >= 0;
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

		<div id="header" class="J_sitenav header_2015" data-ptp="_head">
			<div class="wrap clearfix">
				<!-- 顶通 -->
				<a href="index.jsp" class="home fl">美丽说首页</a>
				<ul class="header_top">
					<li class="s1 has_icon user_meta">
						<a rel="nofollow" href="javascript:;">
							阿猫来了 </a>
						<i class="icon_delta"></i>
						<ol class="ext_mode" id="menu_personal">
							<li class="s2">
								<a target="_blank" rel="nofollow" href="=setPersonal.jsp">个人设置</a>
							</li>
							<li class="s2">
								<a rel="nofollow" href="login.jsp">退出</a>
							</li>
						</ol>
					</li>

					<li class="s1 has_icon has_line user_fav ">
						<a rel="nofollow" href="javascript:;">我的收藏</a>
						<i class="icon_delta"></i>
						<ul class="ext_mode">
							<li class="s2">
								<a target="_blank" rel="nofollow" href="mylike.jsp">收藏的商品</a>
							</li>
							<li class="s2">
								<a target="_blank" rel="nofollow" href="mylikestore.jsp">收藏的小店</a>
							</li>
							<li class="s2">
								<a target="_blank" rel="nofollow" href="footprint.jsp">浏览足迹</a>
							</li>
						</ul>
					</li>

					<li class="s1 myorder has_line">
						<a href="/order.do?_method=orderTotal" target="_blank" class="text display_u" ref="nofollow">我的订单</a>
					</li>

					<li class="s1 has_line has_icon ">
						<a href="#" ref="nofollow" target="_blank" class="text display_u">商家后台</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 中间区域 -->
		<div class="g-header clearfix">
			<div class="g-header-in wrap clearfix">
				<div class="logo logo-cart"></div>
			</div>
		</div>

		<style type="text/css">
			#body {
				width: 960px;
				margin: 0 auto;
			}
			
			#body .mu_wrap {
				margin-top: 30px;
			}
			
			#body .mu_content_wrap,
			#body .complain_right,
			#body .addr_right {
				width: 100%;
			}
		</style>
		<div id="body">
			<div class="mu_wrap clearfix">
				<div class="mu_nav_wrap">
					<!-- 导航 -->
				</div>
				<div class="mu_content_wrap">
					<div class="addr_right topay" isaddress='true' topaycount="">
						<h2 class="addr_title">地址管理</h2>
						<div class="addr_edit" id="J_s_addr_edit">
							<div class="add_new_addr clearfix"><span id="J_saddAddress">+添加地址</span></div>
							<div class="addressbox_warp">
								<div class="addressbox" id="J_sAddrWrap"></div>
								<!-- <div class="addressbox addressfirst addresslist" action="/trade/address/addfororder">
                        </div> -->
							</div>
							<div class="addr_section default" aid="2117639690">
								<ul class="clearfix">
									<li class="name">阿茂</li>
									<li class="addr" data-province="北京" data-city="北京市" data-area="宣武区" data-street="魏善庄镇11号">
										北京北京市宣武区魏善庄镇11号 </li>
									<li class="zcode">000000</li>
									<li class="mobile">13737301354</li>
									<li class="oper">
										<a href="javascript:;" class="J_default">默认地址</a>
										<a href="javascript:;" class="edit">编辑</a>
										<a href="javascript:;" class="del nobd">删除</a>
									</li>
									<li class="enaddr"></li>
								</ul>
							</div>
							<div class="addr_section " aid="2117639656">
								<ul class="clearfix">
									<li class="name">阿茂</li>
									<li class="addr" data-province="北京" data-city="北京市" data-area="朝阳区" data-street="王各庄村南1000米">
										北京北京市朝阳区王各庄村南1000米 </li>
									<li class="zcode">000000</li>
									<li class="mobile">13737301354</li>
									<li class="oper">
										<a href="javascript:;" class="J_default">设为默认</a>
										<a href="javascript:;" class="edit">编辑</a>
										<a href="javascript:;" class="del nobd">删除</a>
									</li>
									<li class="enaddr"></li>
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>
			<input type="hidden" value="mls" id="sourceForm">
		</div>

		<div class="foot J_footertimer" data-ptp="_foot" data-svrtime="$!service_time">
			<div class="wrap foot_wrap clearfix">
				<div class="foot_info" style="width:290px">
					<a rel="nofollow" class="info_logo" href="index.jsp"></a>
					<div class="info_text">
						<p>营业执照注册号：
							<a rel="nofollow" href="http://s6.mogucdn.com/pic/140924/8qc9_ieydgn3emqztszbxmmytambqmmyde_1502x2246.jpg" target="_blank">110108013011072</a>
						</p>
						<p>京ICP备11031139号</p>
						<p>
							<a target="_blank" href="http://d03.res.meilishuo.net/pic/_o/e1/80/4f22feee45bb9d0a92e7a950f9c5_1131_1600.cg.jpg" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
								<img src="http://s18.mogucdn.com/p1/160428/upload_ifrgemjwgq3gemzthazdambqmeyde_20x20.png" style="float:left;">
								<span style="color: #999;">&nbsp;京公网安备 110108006045</span>
							</a>
						</p>
						<p class="mgjhostname" title="mofa130100">©2016 meilishuo.com 北京美丽时空网络科技有限公司</p>
					</div>
				</div>
				<div class="foot_link">
					<dl class="link_company">
						<dt>公司</dt>
						<dd>
							<a rel="nofollow" href="aboutus.jsp" target="_blank">关于我们</a>
						</dd>
						<dd>
							<a rel="nofollow" href="employmentInfo.jsp" target="_blank">招聘信息</a>
						</dd>
						<dd>
							<a rel="nofollow" href="contactus.jsp#?sl=h3" target="_blank">联系我们</a>
						</dd>
					</dl>
					<dl class="link_consumer">
						<dt>消费者</dt>
						<dd>
							<a rel="nofollow" href="buyerService.jsp#" target="_blank">新手指南</a>
						</dd>
						<dd>
							<a rel="nofollow" href="buyerService.jsp#return/" target="_blank">服务保障</a>
						</dd>
						<dd>
							<a rel="nofollow" href="helpCommon.jsp" target="_blank">消费者服务</a>
						</dd>
					</dl>
					<dl class="link_business">
						<dt>商家</dt>
						<dd>
							<a rel="nofollow" href="businessEnter.jsp" target="_blank">商家入驻</a>
						</dd>
						<dd>
							<a rel="nofollow" href="businessPromotion.jsp" target="_blank">商家推广</a>
						</dd>
						<dd>
							<a rel="nofollow" href="helpCenter.jsp" target="_blank">帮助中心</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js\page-myorder-list.js$ead98e0e_1471519499.js"></script>
		<script type="text/javascript" src="js\woodpecker.0.3.0.js$a39334f1_1458802962.js"></script>

	</body>

</html>