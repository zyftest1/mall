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
		<title>品牌街_美丽说</title>
		<meta name="description" content="美丽说，专注时尚新款发布。海量新款每日上新，每周五新款大促火热进行中！旗下海淘品牌“HIGO”挑选全球时尚好货，满足你全方位的时尚购物体验！">
		<meta name="keywords" content="美丽说,higo,衣服,鞋子,包包,配饰,家居,美妆,搭配,团购,美丽说higo">
		<link rel="dns-prefetch" href="http://s.meilishuo.net/">
		<link rel="dns-prefetch" href="http://i.meilishuo.net/">
		<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
		<link rel="stylesheet" type="text/css" href="pc\css\base-4.css?1607171726.25">
		<link rel="icon" href="pic\_o\75\6e\2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="pc\css\page\brand\street.css?1607171726.25">
		<script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
		<script>
			fml.setOptions({
				'sversion': '1607171726.25',
				'defer': true,
				'modulebase': 'pc/jsmin/'
			});
			var Meilishuo = {
				"config": {
					"nt": "1yQyN1tU7ssTVQ5GeZ16w1KfmxhKvcJH+KMoEKvxf1jJd67pB15o7jmPq0WVE0DG",
					"main_site_domain": "/",
					"server_url": "/",
					"picture_url": "http://i.meilishuo.net/css/",
					"captcha_url": "http://captcha.meilishuo.com/",
					"im_url": "http://imlab.meilishuo.com/",
					"forSale": false,
					"controller": "brand street",
					"isLogin": true,
					"userInfo": {
						"name": "阿猫来了",
						"uid": "11cnkktq",
						"avatar": "http://s2.mogucdn.com/new1/v1/bdefaultavatar/03.jpg"
					}
				}
			};
		</script>
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
			<div id="com-search">
				<div class="inner">
					<a href="index.jsp" class="logo"> <img src="pic/bs-logo.png"
						 alt=""> </a>
					<a href="" class="sublogo"> </a>
					<div class="search">
						<div class="search-tab"> <span class="active">宝贝</span><span>店铺</span> </div>
						<div class="search-box"> <input type="text" class="search-txt"> <span class="search-btn"></span>
							<div class="suggest-box"></div>
						</div>
						<div class="hotword"> </div>
					</div>
					<a class="spread" href="" target="_blank"> <img src="http://s6.mogucdn.com/p2/160804/1rp_49cgihk50031c69jjk51ilkjk4950_210x157.gif">
					</a>
				</div>
			</div>
		</div>
		<div class="page">
			<!--今日最大牌及今日品牌列表-->
			<div class="today_brands_wrap clearfix">
				<a class="today_brand_show clearHover" href="brandhome.jsp#?brandId=21121&mt=12.12592.r133922.19082&acm=1.mce.2.12592.0.0.19082_133922"
				 target="_blank"> <img src="http://s8.mogucdn.com/p2/160817/1ub_4c60eb8368e6g5akdj5i704kh9lhb_360x323.jpg" alt="今日最大牌-me&city">
				</a>
				<ul>
					<li class="today_brand">
						<a target="_blank" href="/brand/home?brandId=7421112" target="_blank"> <img src="http://s2.mogucdn.com/p1/160627/afanty_ifrgemrrgm4wknrwhezdambqmeyde_160x160.jpg_640x999.jpg"
							 alt="arTees"> </a>
					</li>
					<li class="today_brand">
						<a target="_blank" href="/brand/home?brandId=3825064" target="_blank"> <img src="http://s2.mogucdn.com/p1/160628/afanty_ifrtczbrga2dozbwhezdambqhayde_160x160.jpg_640x999.jpg"
							 alt="Mixxmix"> </a>
					</li>
					<li class="today_brand">
						<a target="_blank" href="/brand/home?brandId=2867071" target="_blank"> <img src="http://s2.mogucdn.com/p1/160727/brandcenter_ifrtgmbsmq2ggmrqmezdambqhayde_500x500.png_640x999.jpg"
							 alt="木村井泓"> </a>
					</li>
					<li class="today_brand">
						<a target="_blank" href="/brand/home?brandId=2539070" target="_blank"> <img src="http://s2.mogucdn.com/p1/160627/afanty_ie4dsobrmi4tanzwhezdambqgiyde_160x160.jpg_640x999.jpg"
							 alt="CC&DD"> </a>
					</li>
					<li class="today_brand">
						<a target="_blank" href="/brand/home?brandId=29070" target="_blank"> <img src="http://s2.mogucdn.com/p1/160627/afanty_ifrdsodgmq3gknrwhezdambqmeyde_160x160.jpg_640x999.jpg"
							 alt="两三事"> </a>
					</li>
					<li class="today_brand">
						<a target="_blank" href="/brand/home?brandId=26045" target="_blank"> <img src="http://s2.mogucdn.com/p1/160627/afanty_ifqtemrume3wknrwhezdambqgyyde_220x220.jpg_640x999.jpg"
							 alt="兰芝"> </a>
					</li>
					<li class="today_brand">
						<a target="_blank" href="/brand/home?brandId=24004" target="_blank"> <img src="http://s2.mogucdn.com/p1/160719/afanty_ifrggobzgfqweolehezdambqmeyde_220x220.png_640x999.jpg"
							 alt="科颜氏"> </a>
					</li>
					<li class="today_brand">
						<a class="aLink" href="/brand/settled/" target="_blank"><span class="allBrandLink caret-right">全部品牌</span></a>
					</li>
				</ul>
			</div>
			<!--品牌上新:每个品牌8个,前端控制:不超过10个品牌-->
			<div class="newest_brands_wrap">
				<p class="brand_title"> &mdash;&nbsp;品牌上新&nbsp;&middot;&nbsp;NEW ARRIVAL &nbsp;&mdash;</p>
				<ul class="newest_brands_list">
					<li class="newest_brand clearfix">
						<a class="newest_brand_show clearHover" href="brandhome.jsp#?brandId=2720069&mt=12.12593.r125909.16827&acm=1.mce.2.12593.0.0.16827_125909"
						 target="_blank"> <img src="http://s8.mogucdn.com/p2/160802/1ub_8cic4586gif1c9h2ggj9j7fb9kaef_360x738.jpg" alt="衣品天成">
						</a>
						<ul class="clearfix">
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gkv88c" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160713/1271125707_ifrtmmzqgiztiylchezdambqhayde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gkv88c" target="_blank" class="product_title">衣品天成个性字母印花T恤6WT316</a>
								<p class="product_price"> <span>&yen;&nbsp;119.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;170.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gkuuo2" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160711/1271125707_ifqtmnrrmnrwimdchezdambqgyyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gkuuo2" target="_blank" class="product_title">衣品天成韩版百搭简约潮流T恤6WT318</a>
								<p class="product_price"> <span>&yen;&nbsp;129.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;184.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gkuj1q" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160711/1271125707_ifrggmjtge2wimdchezdambqmeyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gkuj1q" target="_blank" class="product_title">衣品天成韩版百搭喇叭袖T恤6WT300</a>
								<p class="product_price"> <span>&yen;&nbsp;89.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;127.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gkunq8" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160713/1271125707_ie4dkmbwmm3toytchezdambqgiyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gkunq8" target="_blank" class="product_title">衣品天成韩版百搭一字领纯色衬衫6WC391</a>
								<p class="product_price"> <span>&yen;&nbsp;139.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;199.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gkv80w" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160713/1271125707_ifqwenbumnrtoytchezdambqgyyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gkv80w" target="_blank" class="product_title">衣品天成韩版甜美翻脖领衬衫6WC410</a>
								<p class="product_price"> <span>&yen;&nbsp;149.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;213.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gkuq1g" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160713/1271125707_ifqwimbqmiydqytchezdambqgyyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gkuq1g" target="_blank" class="product_title">衣品天成韩版拼接褶皱连衣裙6WQ585</a>
								<p class="product_price"> <span>&yen;&nbsp;169.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;169.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gkvh6s" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160711/1271125707_ie4tkzbymvqwimdchezdambqgqyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gkvh6s" target="_blank" class="product_title">衣品天成韩版百搭个性条纹方领T恤6WT301</a>
								<p class="product_price"> <span>&yen;&nbsp;89.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;127.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gkuyz4" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160711/1271125707_ie4tazbtmyzdaztbhezdambqgqyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gkuyz4" target="_blank" class="product_title">衣品天成韩版条纹海军领休闲T恤6WT317</a>
								<p class="product_price"> <span>&yen;&nbsp;119.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;170.00</span> </p>
							</li>
						</ul>
					</li>
					<li class="newest_brand clearfix">
						<a class="newest_brand_show clearHover" href="brandhome.jsp#?brandId=2468067&mt=12.12594.r125916.16831&acm=1.mce.2.12594.0.0.16831_125916"
						 target="_blank"> <img src="http://s8.mogucdn.com/p2/160802/1ub_6g4eh28d3ih5f9bajllbg2166hkj6_360x738.jpg" alt="七格格">
						</a>
						<ul class="clearfix">
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gl9ndc" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160728/880584288_ifrtgyzrgy3dcobqmezdambqhayde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gl9ndc" target="_blank" class="product_title">七格格秋新款 黑白撞色V领直筒中长款宽大连衣裙</a>
								<p class="product_price"> <span>&yen;&nbsp;149.90</span> &nbsp;&nbsp; <span>&yen;&nbsp;299.80</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gl983c" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160728/880584288_ifrtembvmy3teobqmezdambqhayde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gl983c" target="_blank" class="product_title">七格格秋新款 卷边拼接割破大U领牛仔吊带背心</a>
								<p class="product_price"> <span>&yen;&nbsp;59.90</span> &nbsp;&nbsp; <span>&yen;&nbsp;119.80</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gl8w4y" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160727/880584288_ie4tqnzrgfrdsmrqmezdambqgqyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gl8w4y" target="_blank" class="product_title">七格格夏新款单排扣口袋装饰牛仔工装连体裤</a>
								<p class="product_price"> <span>&yen;&nbsp;179.90</span> &nbsp;&nbsp; <span>&yen;&nbsp;359.80</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gl99b6" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160728/880584288_ie4tmzbqmnsgcnzqmezdambqgqyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gl99b6" target="_blank" class="product_title">七格格秋新款 甜美百褶娃娃领喇叭长袖衬衫女</a>
								<p class="product_price"> <span>&yen;&nbsp;119.90</span> &nbsp;&nbsp; <span>&yen;&nbsp;239.80</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gl9gyq" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160728/880584288_ie4tqytdmy2wenzqmezdambqgqyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gl9gyq" target="_blank" class="product_title">七格格秋新款 一字肩条纹娃娃衫松紧宽松上衣女</a>
								<p class="product_price"> <span>&yen;&nbsp;119.90</span> &nbsp;&nbsp; <span>&yen;&nbsp;239.80</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gl9naq" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160728/880584288_ifrtsmjxgi4wgnzqmezdambqhayde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gl9naq" target="_blank" class="product_title">七格格秋新款 白色双层荷叶边宽松A字雪纺衫</a>
								<p class="product_price"> <span>&yen;&nbsp;169.90</span> &nbsp;&nbsp; <span>&yen;&nbsp;339.80</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gl9iks" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160728/880584288_ifrwezjwgbtgmnzqmezdambqhayde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gl9iks" target="_blank" class="product_title">七格格秋新款 七分阔腿连体背带高腰休闲裤女</a>
								<p class="product_price"> <span>&yen;&nbsp;145.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;299.80</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gl9azw" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160728/880584288_ifqwezjsmftdcobqmezdambqgyyde_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gl9azw" target="_blank" class="product_title">七格格秋新款 姜黄色V领肌理感针织吊带背心</a>
								<p class="product_price"> <span>&yen;&nbsp;79.90</span> &nbsp;&nbsp; <span>&yen;&nbsp;159.80</span> </p>
							</li>
						</ul>
					</li>
					<li class="newest_brand clearfix">
						<a class="newest_brand_show clearHover" href="brandhome.jsp#?brandId=29070&mt=12.12595.r125917.16832&acm=1.mce.2.12595.0.0.16832_125917"
						 target="_blank"> <img src="http://s7.mogucdn.com/p2/160802/1ub_3i3l58i6635f2k6hf2d24h68542ec_360x738.jpg" alt="两三事">
						</a>
						<ul class="clearfix">
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glfunc" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160806/1202115599_6al9f2hd6eafd2hihd84625474gbf_650x900.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glfunc" target="_blank" class="product_title">两三事 润由心生 2016秋新品休闲条纹针织衫预售8月22号</a>
								<p class="product_price"> <span>&yen;&nbsp;199.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;199.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glfz8c" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160806/1202115599_19jlfkhdj17319c6ffl7k239hhh16_650x900.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glfz8c" target="_blank" class="product_title">两三事路易马里奥秋新品休闲字母印花条纹拼接宽松T恤</a>
								<p class="product_price"> <span>&yen;&nbsp;158.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;158.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glgm70" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160806/1202115599_17d6l614k63a3i9k9fjcagfd8641j_650x900.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glgm70" target="_blank" class="product_title">两三事 纯白幻想2016秋新品绑带喇叭袖V领白衬衫女长袖宽松</a>
								<p class="product_price"> <span>&yen;&nbsp;158.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;158.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glfz4i" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160806/1202115599_5cha35j4bd2637l2eib9691bj4f2g_650x900.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glfz4i" target="_blank" class="product_title">两三事平行线交点秋新品休闲绑带短款条纹针织衫预售8月28号</a>
								<p class="product_price"> <span>&yen;&nbsp;229.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;229.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glg6vm" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160806/1202115599_30bj8929ikg03e23d5fjcekfda3h4_650x900.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glg6vm" target="_blank" class="product_title">两三事贪心博物馆2016秋新品侧纽扣针织修身打底条纹连衣裙</a>
								<p class="product_price"> <span>&yen;&nbsp;268.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;268.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glg58u" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160806/1202115599_4lhj33dcl528kg9jea5ehb6g2le29_650x900.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glg58u" target="_blank" class="product_title">两三事 双重曝光 2016秋新品休闲字母印花卫衣女套头中长款</a>
								<p class="product_price"> <span>&yen;&nbsp;189.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;189.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glg0ko" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160806/1202115599_80dj9d98fh273b8ccj794f94b90ie_650x900.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glg0ko" target="_blank" class="product_title">两三事在意义天际秋新品几何条纹包臀开叉鱼尾裙半身裙预售22号</a>
								<p class="product_price"> <span>&yen;&nbsp;269.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;269.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glghg2" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160806/1202115599_2kge87b11e3h8498cahe4e75jigci_650x900.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glghg2" target="_blank" class="product_title">两三事 昼若夜房间2016秋新品后背绑带蝙蝠袖长袖宽松T恤女</a>
								<p class="product_price"> <span>&yen;&nbsp;129.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;129.00</span> </p>
							</li>
						</ul>
					</li>
					<li class="newest_brand clearfix">
						<a class="newest_brand_show clearHover" href="brandhome.jsp#?brandId=29025&mt=12.12596.r133972.19101&acm=1.mce.2.12596.0.0.19101_133972"
						 target="_blank"> <img src="http://s7.mogucdn.com/p2/160817/n5_4hhbii1dhidf4gaf6je593cg4j4gi_360x738.jpg" alt="裂帛">
						</a>
						<ul class="clearfix">
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glkowk" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160811/1328819879_71cc19hjc4b632f2gc2jlcd8k21bk_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glkowk" target="_blank" class="product_title">裂帛 新款圆领 套头蕾丝合体 长袖 针织衫</a>
								<p class="product_price"> <span>&yen;&nbsp;229.80</span> &nbsp;&nbsp; <span>&yen;&nbsp;299.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glk230" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160817/l3_6k2ab88lef671fab9ak0eef878lak_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glk230" target="_blank" class="product_title">裂帛 刺绣圆领 插肩中袖 宽松条纹 T恤海魂衫</a>
								<p class="product_price"> <span>&yen;&nbsp;99.80</span> &nbsp;&nbsp; <span>&yen;&nbsp;129.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glkbbk" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160817/l3_4df99la6l3b33k7k84kjdia95a20j_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glkbbk" target="_blank" class="product_title">裂帛 牛仔背带裙 刺绣口袋 纽扣门襟 无袖连衣裙</a>
								<p class="product_price"> <span>&yen;&nbsp;229.80</span> &nbsp;&nbsp; <span>&yen;&nbsp;289.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gll43q" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160811/1328819879_8f1119c910635ihhih84l2j67jhfl_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gll43q" target="_blank" class="product_title">裂帛 新款贴花边领 细肩带阔腿连身裤 雪纺休闲裤</a>
								<p class="product_price"> <span>&yen;&nbsp;259.80</span> &nbsp;&nbsp; <span>&yen;&nbsp;329.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glkzzi" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160817/l3_2l0l3ggjcb5i65062l892337cb35h_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glkzzi" target="_blank" class="product_title">裂帛 新款牛仔连身裤 磨毛破洞 背带裤修身 九分裤</a>
								<p class="product_price"> <span>&yen;&nbsp;229.80</span> &nbsp;&nbsp; <span>&yen;&nbsp;289.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gll1bs" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160811/1328819879_25hlf337ai164j8i5cjh6ig849abl_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gll1bs" target="_blank" class="product_title">裂帛 新款贴布 刺绣松紧腰 直筒中裙 后开衩半身裙</a>
								<p class="product_price"> <span>&yen;&nbsp;129.80</span> &nbsp;&nbsp; <span>&yen;&nbsp;169.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glkfre" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160811/1328819879_4c22488k7fkjc97b997fegekj7c7h_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glkfre" target="_blank" class="product_title">裂帛 新款松紧腰 几何刺绣长裤 百搭运动休闲裤</a>
								<p class="product_price"> <span>&yen;&nbsp;119.81</span> &nbsp;&nbsp; <span>&yen;&nbsp;129.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glk22y" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160817/l3_1abif4i8afji1l2hekhgkhh1hehli_640x832.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glk22y" target="_blank" class="product_title">裂帛 款假衬衫领 花朵刺绣裙子 针织长袖连衣裙</a>
								<p class="product_price"> <span>&yen;&nbsp;199.80</span> &nbsp;&nbsp; <span>&yen;&nbsp;259.00</span> </p>
							</li>
						</ul>
					</li>
					<li class="newest_brand clearfix">
						<a class="newest_brand_show clearHover" href="brandhome.jsp#?brandId=3682067&mt=12.12597.r134459.19190&acm=1.mce.2.12597.0.0.19190_134459"
						 target="_blank"> <img src="p2\160817\n5_029fca3g5h483j13d8i9ic4fe6ckc_360x738.jpg" alt="盛放"> </a>
						<ul class="clearfix">
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gllaaa" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160811/1339508627_0lj5b20bc6blgikccf6la760j3icg_640x960.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gllaaa" target="_blank" class="product_title">盛放2016秋装新款 宽松版V领长袖T恤女 时尚运动休闲含棉</a>
								<p class="product_price"> <span>&yen;&nbsp;103.20</span> &nbsp;&nbsp; <span>&yen;&nbsp;129.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gllytw" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160812/1339508627_6ci46d4a9714ajh3hf6a0deh62aeb_640x960.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gllytw" target="_blank" class="product_title">盛放2016秋装新款 蓝色宽松型连帽长袖卫衣女 字母含棉时尚</a>
								<p class="product_price"> <span>&yen;&nbsp;149.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;149.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glm4zw" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160812/1339508627_2i4710d9l1cdf2l7cb37ieik1ac6l_640x960.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glm4zw" target="_blank" class="product_title">盛放2016秋装新款 黑色中长款开衫毛衣女 时尚条纹贴布长袖</a>
								<p class="product_price"> <span>&yen;&nbsp;269.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;269.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glkoy0" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160811/1339508627_79jc6l5k17j2e10ibb0d0di1908ka_640x960.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glkoy0" target="_blank" class="product_title">盛放2016秋装新款 粉色圆领纯棉长袖T恤女 创意印花直筒</a>
								<p class="product_price"> <span>&yen;&nbsp;159.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;159.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glhrr8" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160811/1339508627_480c52eh3jdlk8fb5a8ejc8fdhk72_640x960.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glhrr8" target="_blank" class="product_title">盛放2016秋装新款 宽松版字母贴布绣长袖牛仔外套 时尚含棉</a>
								<p class="product_price"> <span>&yen;&nbsp;249.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;249.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glhv6a" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160809/1339508627_36kclfa9cj98729f9665g4i6a9c7g_640x960.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glhv6a" target="_blank" class="product_title">盛放2016秋装新款纯棉红色圆领长袖连衣裙 宽松运动休闲短裙</a>
								<p class="product_price"> <span>&yen;&nbsp;129.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;129.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1glhztg" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160809/1339508627_6b7lek127ilh17fi92c5ekh7l1306_640x960.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1glhztg" target="_blank" class="product_title">盛放2016秋装新款 纯棉运动休闲长袖卫衣 时尚字母刺绣连帽</a>
								<p class="product_price"> <span>&yen;&nbsp;149.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;149.00</span> </p>
							</li>
							<li class="newest_brand_product">
								<a class="img_url" href="shopdetail.jsp#?1gllgke" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160811/1339508627_63j8baj2bac98hh9aa1a4f67i6424_640x960.jpg_640x999.jpg_224x340.jpg"></span>
								</a>
								<a href="shopdetail.jsp#?1gllgke" target="_blank" class="product_title">盛放2016秋装新款 灰色运动休闲毛针织衫 V领条纹长袖毛衣</a>
								<p class="product_price"> <span>&yen;&nbsp;219.00</span> &nbsp;&nbsp; <span>&yen;&nbsp;219.00</span> </p>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<!--品牌定位:每个品牌定位8个品牌对应,前端控制:不超过10个品牌--->
			<div class="locate_brands_wrap">
				<p class="brand_title">&mdash;&nbsp;品牌定位&nbsp;&middot;&nbsp;BRAND STYLE &nbsp;&mdash;</p>
				<ul class="clearfix">
					<li class="locate_brand clearfix"> <img class="locate_brand_show" src="http://s6.mogucdn.com/p2/160802/1ub_040792jal5fall2gfihgdeee1ce32_360x263.jpg">
						<ul class="locate_brand_products">
							<li class="locate_brand_product">
								<a class="img_url" href="/brand/home?brandId=7561044" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4tczlfmq3gknrwhezdambqgqyde_160x160.png_640x999.jpg"
									 alt="可可贝拉"></span> </a>
							</li>
							<li class="locate_brand_product">
								<a class="img_url" href="/brand/home?brandId=4522094" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrtmmtgmq3gknrwhezdambqhayde_160x160.jpg_640x999.jpg"
									 alt="阔色"></span> </a>
							</li>
							<li class="locate_brand_product">
								<a class="img_url" href="/brand/home?brandId=3682067" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4giolemq3gknrwhezdambqgiyde_160x160.png_640x999.jpg"
									 alt="盛放"></span> </a>
							</li>
							<li class="locate_brand_product">
								<a class="img_url" href="/brand/home?brandId=2468067" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4ggmlgmq3gknrwhezdambqgiyde_160x160.jpg_640x999.jpg"
									 alt="七格格"></span> </a>
							</li>
							<li class="locate_brand_product">
								<a class="img_url" href="/brand/home?brandId=2669005" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4dmndfmq3gknrwhezdambqgiyde_160x160.jpg_640x999.jpg"
									 alt="糖力"></span> </a>
							</li>
							<li class="locate_brand_product">
								<a class="img_url" href="/brand/home?brandId=2610103" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4gcmtbmq3gknrwhezdambqgiyde_160x160.png_640x999.jpg"
									 alt="茵曼"></span> </a>
							</li>
							<li class="locate_brand_product">
								<a class="img_url" href="/brand/home?brandId=2391062" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160727/brandcenter_ifqweojsme4wimrqmezdambqgyyde_200x200.jpg_640x999.jpg"
									 alt="韩都衣舍"></span> </a>
							</li>
							<li class="locate_brand_product">
								<a class="img_url" href="/brand/home?brandId=1673077" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160727/brandcenter_ifqtszlegqywgmrqmezdambqgyyde_130x130.jpg_640x999.jpg"
									 alt="宿本"></span> </a>
							</li>
						</ul>
					</li>
				</ul>
				<li class="locate_brand clearfix"> <img class="locate_brand_show" src="http://s8.mogucdn.com/p2/160802/1ub_6ejai7gb7jlcjjdfb59973hib6739_360x263.jpg">
					<ul class="locate_brand_products">
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=23053" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrtayrqmi4tanzwhezdambqhayde_220x220.png_640x999.jpg"
								 alt="Topshop"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=21022" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160727/brandcenter_ie4tiolbmm3wemrqmezdimbqgqyde_1260x1260.jpg_640x999.jpg"
								 alt="ASOS"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=3825064" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160628/afanty_ifrtczbrga2dozbwhezdambqhayde_160x160.jpg_640x999.jpg"
								 alt="Mixxmix"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=23076" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160719/afanty_ie4teztdgmzggolehezdambqgqyde_220x220.png_640x999.jpg"
								 alt="欧时力"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=22066" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrdqodcme4tanzwhezdambqmeyde_220x220.png_640x999.jpg"
								 alt="MANGO"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=30126" target="_blank"> <span asrc="http://s2.mogucdn.com/p2/160802/brandcenter_0ea7j8323k0b0b4ae78bleg5cad0d_160x160.jpg_640x999.jpg"
								 alt="艾格"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=26030" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4ggntgme4tanzwhezdambqgiyde_220x220.png_640x999.jpg"
								 alt="C&A"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=19022" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrwgnjqmi4tanzwhezdambqhayde_220x220.png_640x999.jpg"
								 alt="ZARA"></span> </a>
						</li>
					</ul>
				</li>
				<li class="locate_brand clearfix"> <img class="locate_brand_show" src="http://s7.mogucdn.com/p2/160802/1ub_7jh917cd3jbd0hc70d875likdjkf6_360x263.jpg">
					<ul class="locate_brand_products">
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=89000" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrtazdbgvstoobwhezdambqhayde_220x220.png_640x999.jpg"
								 alt="匡威"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=31059" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrwiztdge3gknrwhezdambqhayde_220x220.png_640x999.jpg"
								 alt="耐克"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=25051" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrgmmtfge3gknrwhezdambqmeyde_220x220.png_640x999.jpg"
								 alt="汤米·希尔费格"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=26124" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqtgzddge3gknrwhezdambqgyyde_220x220.png_640x999.jpg"
								 alt="阿迪达斯"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=7618073" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqwimlfge3gknrwhezdambqgyyde_220x220.png_640x999.jpg"
								 alt="阿迪达斯经典三叶草"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=31066" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4donlfge3gknrwhezdambqgiyde_220x220.png_640x999.jpg"
								 alt="彪马"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=31085" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqwknldge3gknrwhezdambqgyyde_220x220.png_640x999.jpg"
								 alt="锐步"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=23024" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4gmytbge3gknrwhezdambqgiyde_220x220.png_640x999.jpg"
								 alt="新百伦"></span> </a>
						</li>
					</ul>
				</li>
				<li class="locate_brand clearfix"> <img class="locate_brand_show" src="http://s8.mogucdn.com/p2/160802/1ub_316fiic4jg540i6h8gldbfhh940gc_360x263.jpg">
					<ul class="locate_brand_products">
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=6998044" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4wgmdfmq3gknrwhezdambqgqyde_160x160.png_640x999.jpg"
								 alt="憨豆熊"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=911047" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4deodemq3gknrwhezdambqgiyde_160x160.jpg_640x999.jpg"
								 alt="口口福"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=2664100" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqwmnlbme3wknrwhezdambqgyyde_160x160.png_640x999.jpg"
								 alt="周黑鸭"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=3826072" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqtiy3fmq3gknrwhezdambqgyyde_160x160.jpg_640x999.jpg"
								 alt="百草味"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=2582017" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrwcm3fmq3gknrwhezdambqhayde_160x160.jpg_640x999.jpg"
								 alt="熊孩子"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=7136098" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4domlbmq3gknrwhezdambqgiyde_160x160.jpg_640x999.jpg"
								 alt="润之禧"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=7287015" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrdcntfmq3gknrwhezdambqmeyde_160x160.jpg_640x999.jpg"
								 alt="禾博士"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=6944025" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4din3gmq3gknrwhezdambqgiyde_160x160.jpg_640x999.jpg"
								 alt="老阿嬷"></span> </a>
						</li>
					</ul>
				</li>
				<li class="locate_brand clearfix"> <img class="locate_brand_show" src="http://s7.mogucdn.com/p2/160802/1ub_44aalibga3c716f3397h26815hjkd_360x263.jpg">
					<ul class="locate_brand_products">
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=11029" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160727/brandcenter_ifrgkmjshfrdqmrqmezdambqmeyde_1138x996.png_640x999.jpg"
								 alt="雅诗兰黛"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=20025" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqwkzrzme3wknrwhezdambqgyyde_220x220.jpg_640x999.jpg"
								 alt="雪花秀"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=28069" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqtmyjvme3wknrwhezdambqgyyde_220x220.jpg_640x999.jpg"
								 alt="高丝"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=47066" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrdsobvme3wknrwhezdambqmeyde_220x220.jpg_640x999.jpg"
								 alt="悦诗风吟"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=12075" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4gknbzme3wknrwhezdambqgiyde_220x220.jpg_640x999.jpg"
								 alt="兰蔻"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=2456118" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrggntbme3wknrwhezdambqmeyde_220x220.jpg_640x999.jpg"
								 alt="自然堂"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=24004" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160719/afanty_ifrggobzgfqweolehezdambqmeyde_220x220.png_640x999.jpg"
								 alt="科颜氏"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=112030" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrwmmrzme3wknrwhezdambqhayde_220x220.jpg_640x999.jpg"
								 alt="倩碧"></span> </a>
						</li>
					</ul>
				</li>
				<li class="locate_brand clearfix"> <img class="locate_brand_show" src="http://s8.mogucdn.com/p2/160802/1ub_1462l0j86idfjg4bci3l6l4bc9k23_360x263.jpg">
					<ul class="locate_brand_products">
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=2867071" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160727/brandcenter_ifrtgmbsmq2ggmrqmezdambqhayde_500x500.png_640x999.jpg"
								 alt="木村井泓"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=63008" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160719/afanty_ie4wiy3gmq2wcolehezdambqgqyde_592x592.png_640x999.jpg"
								 alt="万斯"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=21057" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160719/afanty_ifqtiojwmnsdoolehezdambqgyyde_220x220.png_640x999.jpg"
								 alt="izzue"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=19042" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160701/afanty_ie4tmnzxguztsyrxhezdambqgqyde_160x160.jpg_640x999.jpg"
								 alt="A.P.C."></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=36012" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4gmyteg44gknrwhezdambqgiyde_220x220.png_640x999.jpg"
								 alt="Lee"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=8152096" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrtam3gg44gknrwhezdambqhayde_220x220.png_640x999.jpg"
								 alt="D二次方"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=26106" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160720/afanty_ie4wcmdbmy4dkzdehezdambqgqyde_220x220.png_640x999.jpg"
								 alt="b+ab"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=2544095" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4tcndfg44gknrwhezdambqgqyde_220x220.jpg_640x999.jpg"
								 alt="5cm"></span> </a>
						</li>
					</ul>
				</li>
				<li class="locate_brand clearfix"> <img class="locate_brand_show" src="http://s7.mogucdn.com/p2/160802/1ub_6g8h2e538j9371ia6a0hk37461fl4_360x263.jpg">
					<ul class="locate_brand_products">
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=23124" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4tsobygyzgknrwhezdambqgqyde_220x220.png_640x999.jpg"
								 alt="Tibi"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=7660031" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrtkyrxgyzgknrwhezdambqhayde_220x220.png_640x999.jpg"
								 alt="“爱”莫斯奇诺"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=2469021" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqtqzjwgyzgknrwhezdambqgyyde_220x220.png_640x999.jpg"
								 alt="蔻驰"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=7637110" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqwgzjxgyzgknrwhezdambqgyyde_220x220.png_640x999.jpg"
								 alt="爱丽丝 + 奥利维亚"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=7668080" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqtqzbwgyzgknrwhezdambqgyyde_220x220.png_640x999.jpg"
								 alt="汤丽柏琦"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=7706093" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqtmzbxgyzgknrwhezdambqgyyde_220x220.png_640x999.jpg"
								 alt="凯特·丝蓓"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=8363064" target="_blank"> <span asrc="http://s18.mogucdn.com/p1/160627/afanty_ifqtinrygyzgknrwhezdambqgyyde_220x220.png_640x999.jpg"
								 alt="迈克高仕"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=7127066" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4wezdbmi3denzwhezdambqgqyde_220x220.jpg_640x999.jpg"
								 alt="唐可娜儿"></span> </a>
						</li>
					</ul>
				</li>
				<li class="locate_brand clearfix"> <img class="locate_brand_show" src="http://s6.mogucdn.com/p2/160802/1ub_3k3d5k8233hgaajeci291kihib4bk_360x263.jpg">
					<ul class="locate_brand_products">
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=30012" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrtoojwge2wknrwhezdambqhayde_220x220.png_640x999.jpg"
								 alt="古驰"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=15033" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrwcndbge2wknrwhezdambqhayde_220x220.png_640x999.jpg"
								 alt="纪梵希"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=19059" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrdimjzge2wknrwhezdambqmeyde_220x220.png_640x999.jpg"
								 alt="迪奥"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=14056" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrggojvge2wknrwhezdambqmeyde_220x220.png_640x999.jpg"
								 alt="范思哲"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=18061" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ie4dkmrzge2wknrwhezdambqgiyde_220x220.png_640x999.jpg"
								 alt="高田贤三"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=15112" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160719/afanty_ifqtkzjzme3tmolehezdambqgyyde_220x220.png_640x999.jpg"
								 alt="菲拉格慕"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=19066" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifqwgmjyge2wknrwhezdambqgyyde_220x220.png_640x999.jpg"
								 alt="蔻依"></span> </a>
						</li>
						<li class="locate_brand_product">
							<a class="img_url" href="/brand/home?brandId=15083" target="_blank"> <span asrc="http://s2.mogucdn.com/p1/160627/afanty_ifrdkmrwge2wknrwhezdambqmeyde_220x220.png_640x999.jpg"
								 alt="杜嘉班纳"></span> </a>
						</li>
					</ul>
				</li>
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
						<a href="aboutus.jsp" target="_blank">关于美丽说</a>
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
					<h4>美丽说微信服务号</h4> <img class="qrcode" src="http://s7.mogucdn.com/p2/160802/7e_61hjl8kjfjfagkg3cdaj05fghck9c_100x100.png"
					 alt="美丽说服务号二维码">
				</div>
				<div class="flist last" style="float:left;">
					<h4>美丽说客户端下载</h4>
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
		<script src="pc\~page\brand\street base.bin?1607171726.25"></script>
		<script>
			fml.use('page/brand/street');;
			fml.use('base');;
			fml.iLoad();
		</script>
	</body>

</html>
