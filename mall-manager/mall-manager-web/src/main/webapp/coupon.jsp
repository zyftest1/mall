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
		<title>优惠券_美丽说</title>
		<meta name="description" content="美丽说是白领女性时尚消费第一品牌，为超过1亿注册用户提供导购信息。建立300万全球女性时尚品牌商品库，超过1000家全球品牌达成官方合作导购体验，更好的满足白领女性的时尚消费需求。">
		<meta name="keywords" content="美丽说,美丽说官网,美丽说首页,美丽说登录,导购,白领,女装,网购">
		<link rel="dns-prefetch" href="http://s.meilishuo.net/">
		<link rel="dns-prefetch" href="http://i.meilishuo.net/">
		<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
		<link rel="stylesheet" type="text/css" href="pc\css\base-4.css?1607171726.25">
		<link rel="icon" href="pic\_o\75\6e\2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="pc\css\page\pcenter\common-1.css?1607171726.25">
		<link rel="stylesheet" type="text/css" href="pc\css\page\pcenter\coupon.css?1607171726.25">
		<script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
		<script>
			fml.setOptions({
				'sversion': '1607171726.25',
				'defer': true,
				'modulebase': 'pc/jsmin/'
			});
			var Meilishuo = {
				"config": {
					"nt": "1yQyN1tU7ssTVQ5GeZ16w/qPuUt9bYECsx38uBftgQ1YhS9x05BjPU0rDqYm8Aha",
					"main_site_domain": "/",
					"server_url": "/",
					"picture_url": "http://i.meilishuo.net/css/",
					"captcha_url": "http://captcha.meilishuo.com/",
					"im_url": "http://imlab.meilishuo.com/",
					"forSale": false,
					"controller": "coupon",
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
								<input type="submit" class="search-btn">
								<div class="suggest-box"></div>
							</form>
						</div>
						<div class="hotword"></div>
					</div>

				</div>
			</div>
		</div>
		<div class="pcenter">
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
								<a class="" href="/order.do?_method=orderTotal">全部订单</a>
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
			<div class="pcenter_box">
				<div class="pcenter_title">优惠特权</div>
				<div class="coupon_wrap">
					<div class="coupon_tab_wrap">
						<div class="coupon_header">
							<ul class="coupon_tab">
								<li>
									<a href="coupon.jsp#?pages=1&coupon_type=1&status=0" class="" value="1" id="platCoupon">平台券</a>
								</li>
								<li>
									<a href="coupon.jsp#?pages=1&coupon_type=2&status=0" class="active" value="2" id="shopCoupon">店铺券</a>
								</li>
							</ul>
							<div class="coupon_status"> <span class="now-status" id="coupon_select"> <b>全部</b> <em class="blackdown arrow"></em>
									<em class="reddown arrow"></em> </span>
								<ul class="coupon_status_choose" id="coupon_options">
									<li value="0">
										<a href="coupon.jsp#?pages=1&coupon_type=2&status=0">全部</a>
									</li>
									<li value="1">
										<a href="coupon.jsp#?pages=1&coupon_type=2&status=1">未使用</a>
									</li>
									<li value="2">
										<a href="coupon.jsp#?pages=1&coupon_type=2&status=2">已使用</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div id="couponList">
						<div class="coupon_content">
							<div class="coupon_list">
								<div class="coupon_box shop_0 ">
									<a href="shop.jsp#110fni1q" target="_blank">
										<div class="line1"> <span class="condition">满399元立减</span>
											<div class="money"> <span class="rmb">¥</span> <span class="credit  ">50</span> </div>
										</div>
										<div class="line2"> <span>爱丽缇旗舰店</span>
											<!-- <span class="count">张</span> -->
										</div>
										<div class="line3"> 2016.8.6-2016.9.2 </div>
									</a>
								</div>
								<div class="coupon_box shop_0 ">
									<a href="shop.jsp#110fni1q" target="_blank">
										<div class="line1"> <span class="condition">满199元立减</span>
											<div class="money"> <span class="rmb">¥</span> <span class="credit  ">20</span> </div>
										</div>
										<div class="line2"> <span>爱丽缇旗舰店</span>
											<!-- <span class="count">张</span> -->
										</div>
										<div class="line3"> 2020.1.1-2020.1.3 </div>
									</a>
								</div>
								<div id="pageNav"> </div>
							</div>
						</div>

					</div>
					<div id="neterror"></div>
					<script id="couponContent" type="text/jsp">
						<div class="coupon_content">
							<div class="coupon_list">
								<? var couponInfo = this.data ;?>
									<? var couponType = this.couponType ?>
										<? function cut(str,len) {?>
											<? len = len || '8'?>
												<?	if (str && str.length > len) { ?>
													<? 	return str.slice(0, len) + '...'; ?>
														<? } else { ?>
															<? 	return str; ?>
																<? } ?>
																	<?} ?>
																		<? if(couponInfo && couponInfo.list && couponInfo.list.length >0){ ?>
																			<? couponInfo.list.map(function(data,index){?>
																				<? var bgImgName = ''; ?>
																					<? if (couponType == 2) { ?>
																						<? 	bgImgName += 'shop'; ?>
																							<? } else { ?>
																								<? 	bgImgName += 'plat'; ?>
																									<? } ?>
																										<? 	bgImgName += '_' + data.status; ?>
																											<?= data.url? ('<a href="http://www.meilishuo.com'+data.url+'" target="_blank">') : '' ?>
																												<div class="coupon_box <?= bgImgName ?> <?= index % 4 == 3 ? 'no-mr' : ''?>">
																													<?if(couponType==2){?>
																														<a href="shop.jsp#<?=data.shopId ?>" target="_blank">
																															<?}?>
																																<div class="line1"> <span class="condition">满<?=data.limitPriceDesc?>元立减</span>
																																	<div class="money"> <span class="rmb">¥</span> <span class="credit <?= data.cutPriceDesc > 99 || data.cutPriceDesc * 100 % 10 ? 'thousand' : '' ?> <?= data.cutPriceDesc > 999 && data.cutPriceDesc * 10 % 10 ? 'ten-thousand' : '' ?>"><?= data.cutPriceDesc ?></span> </div>
																																</div>
																																<div class="line2">
																																	<? if (couponType == 2) {?> <span><?= cut(data.shopName,8) ?></span>
																																		<? } ?>
																																			<? if (couponType == 1) { ?> <span><?= cut(data.title,10) ?></span>
																																				<? } ?>
																																					<!-- <span class="count"><?= data.count ?>张</span> --></div>
																																<div class="line3">
																																	<?= data.startTimeDesc + '-' + data.endTimeDesc ?>
																																</div>
																																<?if(couponType==2){?>
																														</a>
																														<?}?>
																												</div>
																												<?= data.url? '</a>' : '' ?>
																													<?});?>
																														<div id="pageNav"></div>
																														<? }else{?>
																															<div class="empty">
																																<div class="con">您暂时没有优惠券哦~</div>
																															</div>
																															<?}?>
							</div>
						</div>
					</script>
				</div>
			</div>
		</div>
		<script id="renderPageNav" type="text/jsp">
			<? var total_num = this.pageTotal ?>
				<? var current_page = this.page|0 ?>
					<? var show_page_num = 3 ;?>
						<? var query = this.query;?>
							<? delete query['frm'] ?>
								<? delete query['frame'] ?>
									<? function getLink(page){ ?>
										<? if(page <1) page =1 ;?>
											<? if(page > total_num) page = total_num; ?>
												<? query.pages = page; ?>
													<? var url = [];?>
														<? for(var k in query){?>
															<? url.push( k + '=' + encodeURIComponent(query[k])); ?>
																<?}?>
																	<? return '?' + url.join('&'); ?>
																		<?}?>
																			<?if(total_num >1 ){?>
																				<div class="pageNav">
																					<a class="pagePrev" style="<?= current_page>1?'':'display:none'?>" href="<?= getLink(current_page -1) ?>">&lt;上一页</a>
																					<? var left_num = (current_page > show_page_num ? current_page - show_page_num: 0) +1 ; ?>
																						<? var right_num = left_num + show_page_num*2 ; ?>
																							<? if ( right_num > total_num) right_num = total_num; ?>
																								<? if (left_num > 1){ ?>
																									<a href="<?= getLink(1) ?>"> 1 </a> <i>...</i>
																									<?}?>
																										<? for (var i = left_num ;i <= right_num;i++ ) { ?>
																											<? if( i > 0 ){ ?>
																												<a <? if (current_page==i ) { ?> class="currentpage"
																													<? } ?> href="
																														<?= getLink(i) ?>">
																															<?= i ?>
																												</a>
																												<? } ?>
																													<? } ?>
																														<? if (right_num < total_num) { ?> <i>...</i>
																															<a href="<?= getLink(total_num) ?>">
																																<?= total_num ?>
																															</a>
																															<? } ?>
																																<a class="pageNext" style="<?= current_page < total_num-1?'':'display:none'?>" href="<?= getLink(current_page+1) ?>">下一页&gt;</a>
																				</div>
																				<?}?>
		</script>
		<script>
			var Coupon = {
				campaignId: "undefined"
			}
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
		<script src="pc\~page\pcenter\common\navbar page\pcenter\coupon base.bin?1607171726.25"></script>
		<script>
			fml.use('page/pcenter/common/navbar');;
			fml.use('page/pcenter/coupon');;
			fml.use('base');;
			fml.iLoad();
		</script>
	</body>

</html>
