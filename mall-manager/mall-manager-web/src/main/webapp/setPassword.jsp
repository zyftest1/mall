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
		<title>阿猫来了的设置_美丽说</title>
		<meta name="description" content="美丽说, 只做正确流行款. 独家冠名《奔跑吧兄弟》! 平台聚集强大的资深时尚买手团队, 每日推出正确新款, 传授最权威的穿衣经验, 全方位解读搭配技巧, 打造当季最前沿的正确流行款!">
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
		<link rel="icon" href="pic\_o\75\6e\2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="pc\css\page\account\common-2.css?1607171728.25">
		<link rel="stylesheet" type="text/css" href="pc\css\page\account\setPassword.css?1607171728.25">
		<script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
		<script>
			fml.setOptions({
				'sversion': '1607171728.25',
				'defer': true,
				'modulebase': 'pc/jsmin/'
			});
			var Meilishuo = {
				"config": {
					"nt": "1yQyN1tU7ssTVQ5GeZ16w9pgmTocST9EimYnkbutuM5q9kCt8MfyfnjbCF64I3BU",
					"main_site_domain": "/",
					"server_url": "/",
					"picture_url": "http://i.meilishuo.net/css/",
					"captcha_url": "http://captcha.meilishuo.com/",
					"im_url": "http://imlab.meilishuo.com/",
					"forSale": false,
					"controller": "setPassword",
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
		<div class="settings">
			<div class="pcenter_navBar">
				<div class="pcenter_userhead">
					<div class="pcenter_userhead_content">
						<div class="header_info">
							<div class="header_avatar">
								<a href="setAvatar.jsp#"> <img style="width: 100%" src="http://s2.mogucdn.com/new1/v1/bdefaultavatar/03.jpg"
									 alt="">
									<p>修改头像</p>
									<div class="header_info_mask"></div>
								</a>
							</div>
						</div>
						<div class="username"> 阿猫来了 </div>
					</div>
				</div>
				<ul class="pcenter_navBar_ul">
					<li>
						<a class="menu_order disable-a"> 我的订单
							<!-- <em class="little-triangle"></em> <em class="little-triangle-hover"></em> --></a>
						<ul>
							<li>
								<a class="" href="orderlist.jsp">全部订单</a>
							</li>
							<li>
								<a class="" href="order_unshipped.jsp#">待付款</a>
							</li>
							<li>
								<a class="" href="order_unshipped.jsp#" target="_blank">待收货</a>
							</li>
							<li>
								<a class="" href="order_received.jsp#" target="_blank">待评价</a>
							</li>
							<li>
								<a class="" href="order_DELETED.jsp#" target="_blank">退款退货</a>
							</li>
<<<<<<< HEAD
=======
							<li>
								<a class="" href="order_DELETED.jsp#" target="_blank">订单回收站</a>
							</li>
>>>>>>> 362cfdbe3d68a8894ce2032001cc764c225d748a
						</ul>
					</li>
					<li>
						<a class="disable-a ">优惠特权</a>
						<ul>
							<li>
								<a class="menu_coupon_plat" href="coupon.jsp#?pages=1&coupon_type=1&status=0">平台优惠券</a>
							</li>
							<li>
								<a class="menu_coupon_shop" href="coupon.jsp#?pages=1&coupon_type=2&status=0">店铺优惠券</a>
							</li>
							<!-- <li><a class="menu_vip" href="#" target="_blank">会员特权</a></li> -->
						</ul>
					</li>
					<li>
						<a class="menu_order menu_footprint" href="footprint.jsp"> 我的足迹 <em class="little-triangle"></em> <em class="little-triangle-hover"></em>
						</a>
					</li>
					<li>
						<a class="menu_order" href="address.jsp#"> 收货地址 <em class="little-triangle"></em> <em class="little-triangle-hover"></em>
						</a>
					</li>
					<!-- <li> <a class="disable-a">退款维权</a> <ul> <li><a class="menu_refund" href="undefined/refund/list/">我的投诉</a></li> <li><a class="menu_complain" href="undefined/complainnew/list/">我的举报</a></li> </ul> </li> -->
					<li>
						<a class="disable-a">账号管理</a>
						<ul>
							<li>
								<a class="menu_setPersonal" href="setPersonal.jsp">我的信息</a>
							</li>
							<li>
								<a class="menu_setAvatar" href="setAvatar.jsp#">个人头像</a>
							</li>
						</ul>
					</li>
					<li>
						<a class="disable-a">安全中心</a>
						<ul>
							<li>
								<a class="menu_setPassword" href="setPassword.jsp#">用户密码</a>
							</li>
							<li>
								<a class="menu_payPassword" href="payPassword.jsp#">支付密码</a>
							</li>
							<li>
								<a class="menu_bindmobile" href="bindMobile.jsp#">手机绑定</a>
							</li>
							<li>
								<a class="menu_loginEqm" href="loginEqm.jsp#">登录设备</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="settings_box"> <strong class="settings_title">用户密码</strong>
				<fieldset class="setPersonal">
					<form id="setPasswordForm" method="post" onsubmit="return false" action="">
						<div class="form-list" id="old-form"> <label class="account-label" for="old_password">当前密码</label> <input style="display:none">
							<!-- for disable autocomplete on chrome --><input autocomplete="off" class="l_ipt" id="old_password" name="old_password"
							 type="password" value=""> <strong style="display:none;"></strong>
							<!-- <a id="forget"><strong>忘记密码？</strong></a> -->
						</div>
						<div class="form-list"> <label class="account-label" for="new_password">新密码</label> <input style="display:none">
							<!-- for disable autocomplete on chrome --><input autocomplete="off" class="l_ipt" id="new_password" name="new_password"
							 type="password" value=""> <strong></strong> </div>
						<div class="pw_safe none_f"> <span class="txt">安全程度</span>
							<div class="pw_strength pw_weak pw_medium pw_strong">
								<div class="pw_bar"></div>
								<div class="pw_letter"> <span class="strength_l">低</span> <span class="strength_m">中</span> <span class="strength_h">强</span>
								</div>
							</div>
						</div>
						<div class="form-list"> <label class="account-label" for="confirm_password">确认密码</label> <input style="display:none">
							<!-- for disable autocomplete on chrome --><input autocomplete="off" class="l_ipt" id="confirm_password" name="confirm_password"
							 type="password" value=""> <strong class="setPasswordErrorMessageLine"></strong> </div> <input type="submit"
						 value="确 认" id="submit" class="ext_submit"> <span class="submit_error"></span>
					</form>
				</fieldset>
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
		<script src="pc\~page\pcenter\common\navbar page\account\setPassword\setPassword base.bin?1607171728.25"></script>
		<script>
			fml.use('page/pcenter/common/navbar');;
			fml.use('page/account/setPassword/setPassword');;
			fml.use('base');;
			fml.iLoad();
		</script>
	</body>

</html>
