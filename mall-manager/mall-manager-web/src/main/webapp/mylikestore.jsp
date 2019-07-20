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
		<title>收藏店铺_Beauty Show</title>
		<meta name="description" content="Beauty Show是白领女性时尚消费第一品牌，为超过1亿注册用户提供导购信息。建立300万全球女性时尚品牌商品库，超过1000家全球品牌达成官方合作导购体验，更好的满足白领女性的时尚消费需求。">
		<meta name="keywords" content="Beauty Show,Beauty Show官网,Beauty Show首页,Beauty Show登录,导购,白领,女装,网购">
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
		<link rel="stylesheet" type="text/css" href="pc\css\page\pcenter\common.css?1607171728.25">
		<link rel="stylesheet" type="text/css" href="pc\css\page\pcenter\store.css?1607171728.25">
		<script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
		<script>
			fml.setOptions({
				'sversion': '1607171728.25',
				'defer': true,
				'modulebase': 'pc/jsmin/'
			});
			var Meilishuo = {
				"config": {
					"nt": "1yQyN1tU7ssTVQ5GeZ16w5xe7reZSJfM0u4UDmmkOucWsepc7RiwnAZ/w+AlUqhe",
					"main_site_domain": "/",
					"server_url": "/",
					"picture_url": "http://i.meilishuo.net/css/",
					"captcha_url": "http://captcha.meilishuo.com/",
					"im_url": "http://imlab.meilishuo.com/",
					"forSale": false,
					"controller": "store",
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
		</div>
		<div class="pcenter">
			<div class="collect_nav">
				<a href="mylike.jsp#">收藏的商品</a>
				<a href="mylikestore.jsp" class="active">收藏的店铺</a>
			</div>
			<div class="collect-title">
				<ul>
					<li>
						<a href="javascript:;" class="active">全部 <span>3 </span></a>
					</li>
					<!-- <li> <a href="javascript:;">上新 <span> </span></a> </li>-->
				</ul>
			</div>
			<div class="store_content" id="store_content">
				<div class="store_list">
					<div class="store_content_item" id="shopitem_1300172891">
						<!-- 店铺信息start -->
						<div class="store_infos">
							<div class="store_infos_top">
								<div class="store-sculpture">
									<a href="shop.jsp#11706fou" target="_blank"> <img src="http://s2.mogucdn.com/p1/160624/o7bbd8_ifrtamjwgnsdsnzvhezdambqhayde_300x300.jpg_100x100.jpg">
									</a>
								</div>
								<div class="store-details">
									<div class="store-name">
										<a href="shop.jsp#11706fou" target="_blank"> CacheCache官网直邮 </a>
									</div>
									<div class="store-vol"> 销量：<span class="sales">60</span> 收藏：<span class="star">498</span> </div>
									<!-- 好店 -->
									<div class="store-Survey">
										<p> 主营类目：<span>女装</span> </p>
									</div>
									<div class="store-state" id="store_1300172891">
										<a class="contact-service" data-shopid="1300172891" data-shopuserid="1463473484" target="_blank">联系卖家</a>
										<a class="pay-attention attentioned show" data-shopid="1300172891" data-shopidstr="11706fou"> <span> 已关注
											</span> <span class="cancelattention"> 取消关注 </span> </a>
										<a class="pay-attention notattentioned " data-shopid="1300172891" data-shopidstr="11706fou"> 关注店铺 </a>
									</div>
								</div> <span class="delete-shop" data-shopid="1300172891" data-shopidstr="11706fou"> <em></em> </span>
							</div>
							<!-- 店铺头部信息结束 -->
							<div class="store-infos-bottom">
								<div class="discount-and-new">
									<div class="the-discount">
										<!-- 包邮 -->
										<!-- 优惠券 -->
										<!-- 多件打折活动 -->
										<!-- 满折扣 -->
									</div>
									<!-- 促销信息end -->
									<div class="the-new">
										<a class="the-date">08.17上新</a>
										<a class="arrow-left"></a>
										<a class="the-newnums" href="shop.jsp#11706fou" target="_blank">25款</a>
									</div>
								</div>
								<!-- discount-and-new end -->
								<div class="the-evaluation">
									<ul>
										<li>
											<p>质量满意</p>
											<p class="score score-1"> 4.65 </p>
										</li>
										<li>
											<p>服务态度</p>
											<p class="score score-1"> 4.52 </p>
										</li>
										<li>
											<p>价格合理</p>
											<p class="score score1"> 4.91 </p>
										</li>
										<li class="the-last-evaluation">
											<p>描述一致</p>
											<p class="score score-1"> 4.74 </p>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 店铺信息结束 -->
						<!-- 商品列表 -->
						<div class="store-goods ">
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1glshyi" target="_blank"> <img src="http://s2.mogucdn.com/p2/160817/1463473484_2h82hh3gec2h5fa09ackek8ghg054_640x832.jpg_320x999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥249.90</span> <span class="goods-sellnum">销量0</span>
								</div>
							</div>
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1glshxs" target="_blank"> <img src="http://s2.mogucdn.com/p2/160817/1463473484_84gfa8g2iii4d7akgg505h956i2jg_640x832.jpg_320x999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥199.90</span> <span class="goods-sellnum">销量0</span>
								</div>
							</div>
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1glso6i" target="_blank"> <img src="http://s2.mogucdn.com/p2/160817/1463473484_1fce51dc0h91h0eh4j6kg579jh336_640x832.jpg_320x999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥299.90</span> <span class="goods-sellnum">销量0</span>
								</div>
							</div>
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1glrwds" target="_blank"> <img src="http://s2.mogucdn.com/p2/160817/1463473484_4kdd23djbe36399k3kke7d133k0h0_640x832.jpg_320x999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥149.90</span> <span class="goods-sellnum">销量0</span>
								</div>
							</div>
						</div>
					</div>
					<div class="store_content_item" id="shopitem_1101536499">
						<!-- 店铺信息start -->
						<div class="store_infos">
							<div class="store_infos_top">
								<div class="store-sculpture">
									<a href="shop.jsp#110fni1q" target="_blank"> <img src="http://d01.res.meilishuo.net/pic/_o/f7/40/968fc99f2f5812ffdffde483183a_200_200.ch.jpg_5f179ba6_s6_100_100.jpg">
									</a>
								</div>
								<div class="store-details">
									<div class="store-name">
										<a href="shop.jsp#110fni1q" target="_blank"> 爱丽缇旗舰店 </a>
									</div>
									<div class="store-vol"> 销量：<span class="sales">3180</span> 收藏：<span class="star">3627</span> </div>
									<!-- 好店 -->
									<div class="store-Survey">
										<p> 主营类目：<span>女装</span> </p>
									</div>
									<div class="store-state" id="store_1101536499">
										<a class="contact-service" data-shopid="1101536499" data-shopuserid="1256898643" target="_blank">联系卖家</a>
										<a class="pay-attention attentioned show" data-shopid="1101536499" data-shopidstr="110fni1q"> <span> 已关注
											</span> <span class="cancelattention"> 取消关注 </span> </a>
										<a class="pay-attention notattentioned " data-shopid="1101536499" data-shopidstr="110fni1q"> 关注店铺 </a>
									</div>
								</div> <span class="delete-shop" data-shopid="1101536499" data-shopidstr="110fni1q"> <em></em> </span>
							</div>
							<!-- 店铺头部信息结束 -->
							<div class="store-infos-bottom">
								<div class="discount-and-new">
									<div class="the-discount">
										<!-- 包邮 -->
										<!-- 优惠券 -->
										<div class="coupon-discount"> 购物满99元立减5元 <span class="triangle"> 立即领取▾</span>
											<div class="dropdown-content" style="display:none"> <span class="sp1"> <span class="sp2"></span> </span>
												<p class="conpon-title">领券下单，更多优惠等你拿</p>
												<div class="conpon-list">
													<div class="conpon-item"> <span class="coupon_prices"> ￥5 </span>
														<div class="coupon-detail">
															<p class="title"> 购物满99元立减 5元 </p>
															<p class="date"> 2016.8.5-2016.9.6 </p>
														</div> <span class="receive-coupon" data-campid="117uhc30" data-shopid="1101536499">立即领取</span>
													</div>
													<div class="conpon-item"> <span class="coupon_prices"> ￥20 </span>
														<div class="coupon-detail">
															<p class="title"> 购物满199元立减 20元 </p>
															<p class="date"> 2016.8.6-2016.9.2 </p>
														</div> <span class="receive-coupon coupon-has-received" data-campid="117uwqek" data-shopid="1101536499">已领取</span>
													</div>
													<div class="conpon-item"> <span class="coupon_prices"> ￥50 </span>
														<div class="coupon-detail">
															<p class="title"> 购物满399元立减 50元 </p>
															<p class="date"> 2016.8.6-2016.9.2 </p>
														</div> <span class="receive-coupon coupon-has-received" data-campid="117uwqpo" data-shopid="1101536499">已领取</span>
													</div>
												</div>
											</div>
										</div>
										<!-- 多件打折活动 -->
										<!-- 满折扣 -->
									</div>
									<!-- 促销信息end -->
									<div class="the-new">
										<a class="the-date">05.23上新</a>
										<a class="arrow-left"></a>
										<a class="the-newnums" href="shop.jsp#110fni1q" target="_blank">77款</a>
									</div>
								</div>
								<!-- discount-and-new end -->
								<div class="the-evaluation">
									<ul>
										<li>
											<p>质量满意</p>
											<p class="score score1"> 4.77 </p>
										</li>
										<li>
											<p>服务态度</p>
											<p class="score score-1"> 4.77 </p>
										</li>
										<li>
											<p>价格合理</p>
											<p class="score score-1"> 4.77 </p>
										</li>
										<li class="the-last-evaluation">
											<p>描述一致</p>
											<p class="score score-1"> 4.76 </p>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 店铺信息结束 -->
						<!-- 商品列表 -->
						<div class="store-goods ">
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1i774sm" target="_blank"> <img src="http://d01.res.meilishuo.net/pic/_o/a9/fc/6caf2a79001b4ec245db221da4e9_640_832.c1.jpg_1ed514e0_s1_320_999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥98.00</span> <span class="goods-sellnum">销量0</span>
								</div>
							</div>
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1i6yhoe" target="_blank"> <img src="http://d01.res.meilishuo.net/pic/_o/3c/18/dc7f9dfd252247ce4662fd4b2c59_640_832.c5.jpg_c16d73b5_s1_320_999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥99.00</span> <span class="goods-sellnum">销量6</span>
								</div>
							</div>
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1i6yhnq" target="_blank"> <img src="http://d01.res.meilishuo.net/pic/_o/c5/50/09bcf6fc2685ff32be2037f90686_640_832.c5.jpg_9bd002de_s1_320_999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥118.00</span> <span class="goods-sellnum">销量40</span>
								</div>
							</div>
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1i6yhn2" target="_blank"> <img src="http://d01.res.meilishuo.net/pic/_o/e5/0b/d1cdb626010fd00347b7792a86e1_640_832.c5.jpg_c3ec4484_s1_320_999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥88.00</span> <span class="goods-sellnum">销量3</span>
								</div>
							</div>
						</div>
					</div>
					<div class="store_content_item" id="shopitem_1201688742">
						<!-- 店铺信息start -->
						<div class="store_infos">
							<div class="store_infos_top">
								<div class="store-sculpture">
									<a href="shop.jsp#113qwpz8" target="_blank"> <img src="http://d01.res.meilishuo.net/pic/_o/93/61/1a2db2b91d6c9f49ba465bb4aef7_200_200.cj.jpg_9ba60430_s6_100_100.jpg">
									</a>
								</div>
								<div class="store-details">
									<div class="store-name">
										<a href="shop.jsp#113qwpz8" target="_blank"> 大牌小MU </a>
									</div>
									<div class="store-vol"> 销量：<span class="sales">7557</span> 收藏：<span class="star">2029</span> </div>
									<!-- 好店 -->
									<div class="store-Survey">
										<p> 主营类目：<span>女装</span> </p>
									</div>
									<div class="store-state" id="store_1201688742">
										<a class="contact-service" data-shopid="1201688742" data-shopuserid="1307592673" target="_blank">联系卖家</a>
										<a class="pay-attention attentioned show" data-shopid="1201688742" data-shopidstr="113qwpz8"> <span> 已关注
											</span> <span class="cancelattention"> 取消关注 </span> </a>
										<a class="pay-attention notattentioned " data-shopid="1201688742" data-shopidstr="113qwpz8"> 关注店铺 </a>
									</div>
								</div> <span class="delete-shop" data-shopid="1201688742" data-shopidstr="113qwpz8"> <em></em> </span>
							</div>
							<!-- 店铺头部信息结束 -->
							<div class="store-infos-bottom">
								<div class="discount-and-new">
									<div class="the-discount">
										<!-- 包邮 -->
										<!-- 优惠券 -->
										<div class="coupon-discount"> 购物满99元立减3元 <span class="triangle"> 立即领取▾</span>
											<div class="dropdown-content" style="display:none"> <span class="sp1"> <span class="sp2"></span> </span>
												<p class="conpon-title">领券下单，更多优惠等你拿</p>
												<div class="conpon-list">
													<div class="conpon-item"> <span class="coupon_prices"> ￥3 </span>
														<div class="coupon-detail">
															<p class="title"> 购物满99元立减 3元 </p>
															<p class="date"> 2016.3.29-2017.7.13 </p>
														</div> <span class="receive-coupon" data-campid="116vbcgs" data-shopid="1201688742">立即领取</span>
													</div>
													<div class="conpon-item"> <span class="coupon_prices"> ￥5 </span>
														<div class="coupon-detail">
															<p class="title"> 购物满169元立减 5元 </p>
															<p class="date"> 2016.3.29-2017.6.3 </p>
														</div> <span class="receive-coupon" data-campid="116vbebg" data-shopid="1201688742">立即领取</span>
													</div>
													<div class="conpon-item"> <span class="coupon_prices"> ￥10 </span>
														<div class="coupon-detail">
															<p class="title"> 购物满239元立减 10元 </p>
															<p class="date"> 2016.3.29-2017.7.8 </p>
														</div> <span class="receive-coupon" data-campid="116vbemk" data-shopid="1201688742">立即领取</span>
													</div>
													<div class="conpon-item"> <span class="coupon_prices"> ￥20 </span>
														<div class="coupon-detail">
															<p class="title"> 购物满288元立减 20元 </p>
															<p class="date"> 2016.7.25-2018.3.1 </p>
														</div> <span class="receive-coupon" data-campid="117qzyi4" data-shopid="1201688742">立即领取</span>
													</div>
												</div>
											</div>
										</div>
										<!-- 多件打折活动 -->
										<!-- 满折扣 -->
									</div>
									<!-- 促销信息end -->
									<div class="the-new">
										<a class="the-date">05.22上新</a>
										<a class="arrow-left"></a>
										<a class="the-newnums" href="shop.jsp#113qwpz8" target="_blank">23款</a>
									</div>
								</div>
								<!-- discount-and-new end -->
								<div class="the-evaluation">
									<ul>
										<li>
											<p>质量满意</p>
											<p class="score score-1"> 4.72 </p>
										</li>
										<li>
											<p>服务态度</p>
											<p class="score score-1"> 4.76 </p>
										</li>
										<li>
											<p>价格合理</p>
											<p class="score score-1"> 4.79 </p>
										</li>
										<li class="the-last-evaluation">
											<p>描述一致</p>
											<p class="score score-1"> 4.76 </p>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 店铺信息结束 -->
						<!-- 商品列表 -->
						<div class="store-goods ">
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1i7696e" target="_blank"> <img src="http://d01.res.meilishuo.net/pic/_o/77/51/99828b70436182fcbbdddfce7903_640_832.c5.jpg_2627d0cb_s1_320_999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥69.00</span> <span class="goods-sellnum">销量2</span>
								</div>
							</div>
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1i7691q" target="_blank"> <img src="http://d01.res.meilishuo.net/pic/_o/6e/ab/aca27ebded51bf67f73fdec55fae_640_832.c5.jpg_4faa373d_s1_320_999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥79.80</span> <span class="goods-sellnum">销量114</span>
								</div>
							</div>
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1i767mm" target="_blank"> <img src="http://d01.res.meilishuo.net/pic/_o/aa/ff/9192a98b6e220e1adb1a46582015_640_832.c5.jpg_049d9fc9_s1_320_999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥89.10</span> <span class="goods-sellnum">销量1</span>
								</div>
							</div>
							<div class="store-goods-list">
								<a href="shopdetail.jsp#?1i767hq" target="_blank"> <img src="http://d01.res.meilishuo.net/pic/_o/09/60/928dc2374499c5259004bbdff260_640_832.c5.jpg_d6279169_s1_320_999.jpg"
									 class="goods-img"> </a>
								<div class="good-basic-info"> <span class="goods-price">¥79.20</span> <span class="goods-sellnum">销量2</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<p class="store_user_id" style="display: none">0</p>
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
		<script type="text/javascript" src="https://s10.mogucdn.com/__static/logger/0.1.8/logger.js"></script>
		<script src="__newtown\im_web\assets\common\openim\index.js"></script>
		<script src="pc\~common\storelist page\pcenter\store base.bin?1607171728.25"></script>
		<script>
			fml.use('common/storelist');;
			fml.use('page/pcenter/store');;
			fml.use('base');;
			fml.iLoad();
		</script>
	</body>

</html>
