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
		<title>联系我们-美丽说</title>
		<meta name="description" content="美丽说，专注时尚新款发布。海量新款每日上新，每周五新款大促火热进行中！旗下海淘品牌“HIGO”挑选全球时尚好货，满足你全方位的时尚购物体验！">
		<meta name="keywords" content="美丽说,higo,衣服,鞋子,包包,配饰,家居,美妆,搭配,团购,美丽说higo">
		<link rel="dns-prefetch" href="http://s.meilishuo.net/">
		<link rel="dns-prefetch" href="http://i.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d01.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d02.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d03.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d04.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d05.res.meilishuo.net/">
		<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
		<link rel="stylesheet" type="text/css" href="pc\css\base-2.css?1607171728.25">
		<link rel="icon" href="http://d04.res.meilishuo.net/pic/_o/75/6e/2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="pc\css\page\aboutus-1.css?1607171728.25">
		<script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
		<script>
			fml.setOptions({
				'sversion': '1607171728.25',
				'defer': true,
				'modulebase': 'pc/jsmin/'
			});
			var Meilishuo = {
				"config": {
					"nt": "1yQyN1tU7ssTVQ5GeZ16w6pkUGlv+Z4GPv59Yn5dVnGK91vz94Ro0wLhPqti4eQw",
					"main_site_domain": "/",
					"server_url": "/",
					"picture_url": "http://i.meilishuo.net/css/",
					"captcha_url": "http://captcha.meilishuo.com/",
					"im_url": "http://imlab.meilishuo.com/",
					"forSale": false,
					"controller": "page/aboutus",
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
		</div>
		<div class="aboutus-wrap">
			<div class="leftNav">
				<h3> <a class="" href="/aboutus/index?sl=h3">关于美丽说</a> </h3>
				<ul>
					<li>
						<a class="" href="/aboutus/index?11">公司简介</a>
					</li>
					<li>
						<a class="" href="/aboutus/index/creator">创始人</a>
					</li>
					<li>
						<a class="" href="/aboutus/index/media">媒体报道</a>
					</li>
				</ul>
				<h3> <a class="selected" href="contactus.jsp">联系我们</a> </h3>
				<ul>
					<li>
						<a class="" href="/aboutus/index/contactus">联系方式</a>
					</li>
				</ul>
			</div>
			<div class="content contactus">
				<h2>联系我们</h2>
				<h3>公司全称</h3>
				<p>美丽说(北京)网络科技有限公司</p>
				<h3>公司地址</h3>
				<p>北京总部：北京市朝阳区望京SOHO-T3-B座27层</p>
				<p>杭州公司：浙江省杭州市西湖区古墩路99号浙商财富中心一号楼</p>
				<p>广州公司：广东省广州市越秀区中山三路33号中华广场b栋3301</p>
				<h3>联系客服</h3>
				<p>消费者热线：4000-800-577（周一至周日 09:00-22:00）</p>
				<p>商家热线：4000-800-588</p>
				<p>商家服务邮箱：mlssf@mogujie.com</p>
				<ul class="icon">
					<li>
						<a class="sina" href="http://weibo.com/meilishuo" target="_blank"></a>
					</li>
					<li>
						<a class="qzone" href="#" target="_blank"></a>
					</li>
					<li>
						<a class="qqweibo" href="#" target="_blank"></a>
					</li>
					<li>
						<a class="weixin" id="weixin" href="javascript:void(0)"><span class="codeInfo"><span class="triangle"><i></i></span><img
								 class="code" src="http://s8.mogucdn.com/p2/160802/7e_03d17ekbaa7je33bafbdhka2hkh26_180x180.png"></span>
						</a>
					</li>
				</ul>
				<h3>商家入驻</h3>
				<p>全国：4000-800-500</p>
				<h3>媒体合作</h3>
				<p>Email:pr@mogujie.com</p>
				<h3>廉正举报</h3>
				<p>发现任何腐败行为，欢迎举报至 compliance@meili-inc.com 受理。</p>
				<p>我们希望您采取实名举报，我们承诺会严格保护举报人，并对举报内容严格保密</p>
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
		<script src="pc\~page\aboutus base-1.bin?1607171728.25"></script>
		<script>
			fml.use('page/aboutus');;
			fml.use('base');;
			fml.iLoad();
		</script>
	</body>

</html>
