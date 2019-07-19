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
		<title>Me&City_Beauty Show</title>
		<meta name="description" content="Beauty Show，专注时尚新款发布。海量新款每日上新，每周五新款大促火热进行中！旗下海淘品牌“HIGO”挑选全球时尚好货，满足你全方位的时尚购物体验！">
		<meta name="keywords" content="Beauty Show,higo,衣服,鞋子,包包,配饰,家居,美妆,搭配,团购,Beauty Showhigo">
		<link rel="dns-prefetch" href="http://s.meilishuo.net/">
		<link rel="dns-prefetch" href="http://i.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d01.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d02.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d03.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d04.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d05.res.meilishuo.net/">
		<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
		<link rel="stylesheet" type="text/css" href="pc\css\base-2.css?1607171728.25">
		<link rel="icon" href="pic\_o\75\6e\2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="pc\css\page\brand\home.css?1607171728.25">
		<link rel="stylesheet" type="text/css" href="pc\css\common\paging.css?1607171728.25">
		<script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
		<script>
			fml.setOptions({
				'sversion': '1607171728.25',
				'defer': true,
				'modulebase': 'pc/jsmin/'
			});
			var Meilishuo = {
				"config": {
					"nt": "1yQyN1tU7ssTVQ5GeZ16wyLYYz/stFoGaBoDoHmeOz8XRC4J6CNVkly9NqiR3fs1",
					"main_site_domain": "/",
					"server_url": "/",
					"picture_url": "http://i.meilishuo.net/css/",
					"captcha_url": "http://captcha.meilishuo.com/",
					"im_url": "http://imlab.meilishuo.com/",
					"forSale": false,
					"controller": "brand home",
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
								<input type="submit" class="search-btn" value="" style="height: 28px ;width: 70px ;border: none" >
								<div class="suggest-box"></div>
							</form>
						</div>
						<div class="hotword"></div>
					</div>

				</div>
			</div>
		</div>
		<div class="page">
			<div class="brand_basicInfo_wrap">
				<div class="brand_basicInfo_wrap">
					<div class="homeNav">
						<ul class="nav">
							<li class="nav-item">
								<a href="/brand/street">品牌街</a>
							</li>
							<li class="nav-item">
								<a href="/brand/all/">品牌</a>
							</li>
							<li class="nav-item">Me&City</li>
						</ul>
					</div>
					<div class="brand_describe_wrap clearfix">
						<div class="brand_show"> <img src="http://s2.mogucdn.com/p1/160720/afanty_ifrwezlche3tkzdehezdambqhayde_220x220.png">
						</div>
						<div class="brand_show"><img src="http://s2.mogucdn.com/p1/160720/afanty_ifrdozjrhe3tkzdehezdambqmeyde_710x399.jpg"
							 alt="Me&City"></div>
					</div>
					<div class="noFloat">
						<div class="brand_describe"> <span> Me&City/ Me&City </span> <span> 中国&nbsp;&middot;&nbsp; 其他品牌 </span> </div>
						<p class="brand_detail">
							Me&City，致力于为22-35岁的都市族群设计的时尚服饰品牌。坚持大众美学路线，把握广大都市族群的时尚脉搏，力求满足众多讲究生活品质的都市男女的审美要求。Me&City品牌官网：www.me-city.com/ </p>
					</div>
				</div>
			</div>
			<div class="filter_wrap no_fixed">
				<ul class="brand_tag_filter">
					<li class="brand_tag">
						<a class="tag_active">上新</a>
					</li>
					<li class="brand_tag">
						<a>流行</a>
					</li>
				</ul> <span class="saleNumber">共125件商品在售</span>
			</div>
			<div class="brand_products_wrap">
				<div class="goods-wall">
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxq31q?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/db/43/abbbd17e4f106c3407e6cfbf5c87_640_832.c1.jpg_87eb1d30_s3_224_340.jpg"
							 alt="【Me&City】MECITY女衬衫526508"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;169.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxq31q?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女衬衫526508</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxq31e?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/1b/f7/ed9ddb868160f10934638708711a_640_832.c5.jpg_a388f725_s3_224_340.jpg"
							 alt="【Me&City】MECITY女衬衫524534"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;209.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxq31e?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女衬衫524534</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxq30u?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/fb/b3/3638537655243852e3706976947b_640_832.c5.jpg_792524d9_s3_224_340.jpg"
							 alt="【Me&City】新款MECITY女衬衫"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;399.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxq30u?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】新款MECITY女衬衫</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxq30q?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/4e/15/1a058a152a23fe18ea6466c91665_640_832.c1.jpg_c2e0c825_s3_224_340.jpg"
							 alt="【Me&City】MECITY女衬衫524531"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;179.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxq30q?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女衬衫524531</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxq2fe?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/30/40/1651dbc6669835d94601785c9052_640_832.c5.jpg_a4609d0f_s3_224_340.jpg"
							 alt="【Me&City】MECITY女衬衫521711"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;219.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxq2fe?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女衬衫521711</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxq2f2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/c2/cf/a6ff91acec09f72c0d94fd45e79a_640_832.c1.jpg_6f1dd8b0_s3_224_340.jpg"
							 alt="【Me&City】MECITY男士衬衫524403"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;159.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxq2f2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男士衬衫524403</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxq2eu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/11/18/063331248f6373fe7917722cc6e4_640_832.c1.jpg_f6998fe9_s3_224_340.jpg"
							 alt="【Me&City】MECITY男时尚衬衫524191"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;149.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxq2eu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男时尚衬衫524191</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxq1ui?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/25/e4/71b9e76a1f0505e4ec7d4fc48b86_640_832.c1.jpg_d04f497b_s3_224_340.jpg"
							 alt="【Me&City】MECITY男T恤512471"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;139.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxq1ui?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男T恤512471</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxq1eu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/ba/f5/a8c13681c817b041fa0676b99925_640_832.c1.jpg_d99abb15_s3_224_340.jpg"
							 alt="【Me&City】MECITY男衬衫521460"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;139.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxq1eu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男衬衫521460</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxq0da?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/ac/71/2f010164698a0aeec8cfa01ecd8a_640_832.c5.jpg_4bf129d4_s3_224_340.jpg"
							 alt="【Me&City】MECITY女休闲裤长裤548549"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;199.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxq0da?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女休闲裤长裤548549</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpzx6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/1a/0b/bfe2ac808a3961d5a78eff3d7da1_640_832.c5.jpg_e68022ef_s3_224_340.jpg"
							 alt="【Me&City】MECITY女休闲裤548534"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;179.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpzx6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女休闲裤548534</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpzo6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/91/d7/0581b56d8329decd2ac29e6a9d57_640_832.c5.jpg_4f95c5cb_s3_224_340.jpg"
							 alt="【Me&City】MECITY男慢跑裤548213"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;199.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpzo6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男慢跑裤548213</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpzoe?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/c5/ca/326ded5cc42555db5f24f27c4307_640_832.c5.jpg_8d6e3cab_s3_224_340.jpg"
							 alt="【Me&City】MECITY男长裤548207"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;169.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpzoe?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男长裤548207</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpzni?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/ba/90/c178c6a00a08de0de1790d3ba63f_640_832.c5.jpg_4a3ee4e2_s3_224_340.jpg"
							 alt="【Me&City】MECITY男九分裤548225"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;199.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpzni?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男九分裤548225</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpxuy?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/ac/84/188319ecfe9dedc9592ac59db334_640_832.c5.jpg_fd05c905_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544121"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;249.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpxuy?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544121</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpxu6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/66/93/6204f147ef5a20b3d0700e2faef6_640_832.c5.jpg_23d6ed37_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544129"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;399.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpxu6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544129</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpxty?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/95/a3/676ed2829d339066d2472e23e578_640_832.c5.jpg_a388e40f_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544122"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;349.00</span> <span> 销量 1 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpxty?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544122</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpxdm?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/ef/d1/149fb2d11de3f534c4c55792c031_640_832.c5.jpg_6d06a14e_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544113"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;209.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpxdm?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544113</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpxde?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/47/e1/6c54d267d33cf0d9371187b55ec4_640_832.c5.jpg_64eda980_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544108"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;249.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpxde?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544108</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpxd2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/a1/16/d5458bb96029b6b7dc7f0c0ea155_640_832.c5.jpg_f5181179_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544110"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;399.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpxd2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544110</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpxcy?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/bf/bb/df5afe5b1c44db9d2450975127ba_640_832.c5.jpg_d19ab74a_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544115"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;399.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpxcy?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544115</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpxcu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/f7/6f/cd32b41f503c825d15b4484f3a96_640_832.c5.jpg_57f534d5_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544109"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;449.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpxcu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544109</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpwo2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/f4/c4/f154c7f0b6c0d1154a87c19d5f52_640_832.c5.jpg_75f1bdd3_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544100"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;149.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpwo2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544100</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpwo6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/e7/08/abb982424b2206631873c03133c6_640_832.c5.jpg_fa993222_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544095"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;149.00</span> <span> 销量 1 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpwo6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544095</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpwnq?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/db/5e/f404071ffe56766a243bcfb3ccbf_640_832.c5.jpg_ab1f6a92_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544089"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;359.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpwnq?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544089</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpus2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/c7/dc/5ff48d04fe15cb48f3f5c8f1f137_640_832.c5.jpg_e5a469d1_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连体裤544073"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;299.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpus2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连体裤544073</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpury?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/c0/a8/04c25fdfb8c2b5816ad03225eb06_640_832.c5.jpg_11d6a024_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544082"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;149.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpury?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544082</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpurq?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/18/a3/c10945875a333840218c6b325f11_640_832.c5.jpg_dde791ce_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544075"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;149.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpurq?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544075</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpu6a?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/cc/e5/ee8e5dec2c1706fb286d684bf0dd_640_832.c5.jpg_8ac66e87_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连体裤544072"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;299.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpu6a?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连体裤544072</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpu56?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/2e/96/713b49825076f2c1c3b7d37d3507_640_832.c5.jpg_c5efc404_s3_224_340.jpg"
							 alt="【Me&City】MECITY女连衣裙544041"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;279.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpu56?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女连衣裙544041</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxptda?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/db/50/d64d4d6bfd46858bd253f776881d_640_832.c5.jpg_4f0c1b54_s3_224_340.jpg"
							 alt="【Me&City】MECITY女式T恤526539"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;289.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxptda?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女式T恤526539</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxptbu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/f6/b3/d6fdcac8b8fc8296bc0b918a4701_640_832.c5.jpg_286b7efe_s3_224_340.jpg"
							 alt="【Me&City】MECITY女蕾丝连衣裙542205"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;299.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxptbu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女蕾丝连衣裙542205</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxprp6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/e3/80/08b39b64a43e3be75db277267114_640_832.c5.jpg_9311aebd_s3_224_340.jpg"
							 alt="【Me&City】MECITY女式衬衫526525"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;199.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxprp6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女式衬衫526525</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxproi?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/a2/5c/fc500c4c416444aee61277a079e3_640_832.c5.jpg_ab435611_s3_224_340.jpg"
							 alt="【Me&City】MECITY女无袖圆领T恤526519"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;89.00</span> <span> 销量 1 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxproi?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女无袖圆领T恤526519</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxpro6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/56/58/926ee0d34177dfbde881c5adbe50_640_832.c5.jpg_93bb6cbb_s3_224_340.jpg"
							 alt="【Me&City】MECITY女式衬衫526521"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;119.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxpro6?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女式衬衫526521</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxnkoi?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/50/76/d9dc5ad61e9c5be9f219f299db5b_640_832.c1.jpg_85a1fd74_s3_224_340.jpg"
							 alt="【Me&City】MECITY女衬衫526512"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;119.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxnkoi?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女衬衫526512</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxnko2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/8e/2a/f5ba1254323efd87a2e2fc87ba88_640_832.c1.jpg_18f07e39_s3_224_340.jpg"
							 alt="【Me&City】MECITY女衬衫526504"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;219.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxnko2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女衬衫526504</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxnj0m?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/03/e4/b9c1d37e6daf9e6293c83a9375e8_640_832.c1.jpg_f4874b9a_s3_224_340.jpg"
							 alt="【Me&City】MECITY女衬衫524532"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;119.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxnj0m?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女衬衫524532</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxnizy?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/59/d2/6287c7ec1936b67b6e4d08398aff_640_832.c1.jpg_a1c4bc67_s3_224_340.jpg"
							 alt="【Me&City】MECITY女衬衫524536"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;149.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxnizy?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY女衬衫524536</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxneb2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/89/46/21f67baa06b1566bc089bb396e9f_640_832.c1.jpg_30a71211_s3_224_340.jpg"
							 alt="【Me&City】MECITY男衬衫524385"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;199.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxneb2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男衬衫524385</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxne5y?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/6d/99/b826ffe8446f754bc9f6a180fa64_640_832.c1.jpg_c101a3fd_s3_224_340.jpg"
							 alt="【Me&City】MECITY男衬衫524205"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;159.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxne5y?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男衬衫524205</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxn7qe?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/70/59/874d0023c09dec2fb1fdcd22506b_640_832.c1.jpg_65c7dff2_s3_224_340.jpg"
							 alt="【Me&City】MECITY男牛仔衬衫524117"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;219.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxn7qe?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男牛仔衬衫524117</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxn6v2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/97/37/b2f27cca7cb700e82938a9ae3fce_640_832.c1.jpg_ec683e7b_s3_224_340.jpg"
							 alt="【Me&City】MECITY男衬衫521467"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;169.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxn6v2?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男衬衫521467</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxn6uq?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/bd/2c/787a287ceaf392ed56355fb5e199_640_832.c1.jpg_10e89a30_s3_224_340.jpg"
							 alt="【Me&City】MECITY男士衬衫521459"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;139.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxn6uq?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男士衬衫521459</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxkbya?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/1f/60/e5c4a1609547be09d429e645d4d9_640_832.c1.jpg_3054176a_s3_224_340.jpg"
							 alt="【Me&City】MECITY男飞鸟印花T恤518368"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;119.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxkbya?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男飞鸟印花T恤518368</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxkafy?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/9d/56/fad7cb55e0f58993ffdb7cf4c887_640_832.c1.jpg_e09b61dd_s3_224_340.jpg"
							 alt="【Me&City】MECITY男印花圆领T恤518376"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;169.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxkafy?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男印花圆领T恤518376</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxkady?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/35/23/d3867a71fb4524e404a0626163ab_640_832.c1.jpg_4d371794_s3_224_340.jpg"
							 alt="【Me&City】MECITY男短袖圆领T恤518374"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;139.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxkady?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男短袖圆领T恤518374</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxkadu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/d9/cd/4739eacc2c9d0dcf45a510696fc5_640_832.c1.jpg_048cdcad_s3_224_340.jpg"
							 alt="【Me&City】MECITY男印花圆领T恤518373"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;139.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxkadu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男印花圆领T恤518373</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxkadi?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/be/fa/f016facf08d3020ceddbf3916b45_640_832.c1.jpg_31a9a62d_s3_224_340.jpg"
							 alt="【Me&City】MECITY男印花圆领T恤518377"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;169.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxkadi?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男印花圆领T恤518377</a>
					</div>
					<div class="brand_product">
						<a class="img_url" href="shopdetail.jsp#?1fxk9wu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank"> <span
							 asrc="http://d01.res.meilishuo.net/pic/_o/5e/fc/cde1ddc4d12762f95b8dfce30ede_640_832.c1.jpg_d9dc8f00_s3_224_340.jpg"
							 alt="【Me&City】MECITY男印花短袖恤518372"></span> </a>
						<p class="brand_price_sales"> <span>&yen;&nbsp;99.00</span> <span> 销量 0 </span> </p>
						<a class="brand_title" href="shopdetail.jsp#?1fxk9wu?acm=2.ms.2_4.0.5806.zespUhUpxQM.t_0" target="_blank">【Me&City】MECITY男印花短袖恤518372</a>
					</div>
				</div>
			</div>
			<div class="pageNav">
				<a class="pagePrev " style="display:none !important" href="brandhome-1.jsp?sort=new&acm=1.mce.2.12592.0.0.19082_133922&mt=12.12592.r133922.19082&brandId=21121&page=1">&lt;上一页</a>
				<a class="currentpage" href="brandhome-1.jsp?sort=new&acm=1.mce.2.12592.0.0.19082_133922&mt=12.12592.r133922.19082&brandId=21121&page=1">1</a>
				<a href="brandhome-2.jsp?sort=new&acm=1.mce.2.12592.0.0.19082_133922&mt=12.12592.r133922.19082&brandId=21121&page=2">2</a>
				<a class="pageNext" style="" href="brandhome-2.jsp?sort=new&acm=1.mce.2.12592.0.0.19082_133922&mt=12.12592.r133922.19082&brandId=21121&page=2">下一页&gt;</a>
			</div>
		</div>
		<!--瀑布流Item模版-->
		<script type="text/jsp" id="posterWall">
			<div class="brand_product">
				<a class="img_url" href="<?= item.link ?>" target="_blank"> <span asrc="<?= item.show.img ?>" alt="<?= item.title?>"></span> </a>
				<p class="brand_price_sales"> <span>&yen;&nbsp;<?= item.price ?></span> <span> 销量 <? if(item.sale){?> <?= item.sale ?> <? }else{ ?> 0 <? } ?> </span> </p>
				<a class="brand_title" href="<?= item.link ?>">
					<?= item.title ?>
				</a>
			</div>
		</script>
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
		<script src="pc\~page\brand\home base.bin?1607171728.25"></script>
		<script>
			fml.use('page/brand/home');;
			fml.use('base');;
			fml.iLoad();
		</script>
	</body>

</html>
