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
		<title>美丽说-白领的全球导购</title>
		<meta name="description" content="">
		<meta name="keywords" content="">
		<link rel="dns-prefetch" href="http://s.meilishuo.net/">
		<link rel="dns-prefetch" href="http://i.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d01.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d02.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d03.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d04.res.meilishuo.net/">
		<link rel="dns-prefetch" href="http://d05.res.meilishuo.net/">
		<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
		<link rel="stylesheet" type="text/css" href="pc\css\base-3.css?1607171727.25">
		<link rel="icon" href="pic\_o\75\6e\2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="pc\css\page\helpcenter\buyerService.css?1607171727.25">
		<script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
		<script>
			fml.setOptions({
				'sversion': '1607171727.25',
				'defer': true,
				'modulebase': 'pc/jsmin/'
			});
			var Meilishuo = {
				"config": {
					"nt": "1yQyN1tU7ssTVQ5GeZ16w1X42t9mFbBeZ+9/9YF80XpFhiSyT2uT/MPlemeTub7M",
					"main_site_domain": "/",
					"server_url": "/",
					"picture_url": "http://i.meilishuo.net/css/",
					"captcha_url": "http://captcha.meilishuo.com/",
					"im_url": "http://imlab.meilishuo.com/",
					"forSale": false,
					"controller": "buyerService",
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
								<input type="submit" class="search-btn">
								<div class="suggest-box"></div>
							</form>
						</div>
						<div class="hotword"></div>
					</div>

				</div>
			</div>
		</div>
		<div class="page">
			<div class="main">
				<div class="help_list_box">
					<div class="help_txt"> 为节约您的时间，您可以先看看以下的常见问题进行自助操作，无需等待客服处理。<br> 如果仍无法解决，您可以拨打美丽说客服电话 <span class="red_f">4000-800-577</span>或留下您的<span
						 class="red_f cursor_f suggest-btn">意见</span>。花小美谢谢您的理解！ </div>
					<h3 class="list_head">自助服务<span class="list_head_sub">SELF-SERVICE</span></h3>
					<div class="list_cont">
						<a href="orderlist.jsp" class="qa_type active first"> <span class="qa_icon order_qa_icon"></span> <span>订单查询</span>
						</a>
						<a href="order_unshipped.jsp#" class="qa_type"> <span class="qa_icon express_qa_icon"></span> <span>物流查询</span>
						</a>
						<a href="coupon.jsp#" class="qa_type"> <span class="qa_icon coupon_qa_icon"></span> <span>优惠券查询</span> </a>
						<a href="/account/setPersonal/" class="qa_type"> <span class="qa_icon security_qa_icon"></span> <span>账号安全</span>
						</a>
						<a href="order_DELETED.jsp#" class="qa_type last"> <span class="qa_icon aftersale_qa_icon"></span> <span>退款退货</span>
						</a>
					</div>
					<h3 class="list_head common_problem_tit">公告<span class="list_head_sub">EVENT ANNOUNCEMENTS</span></h3>
					<div class="common_problems">
						<div class="problems_td">
							<ul class="list_cont problems_td">
								<li>
									<a href="/helpcenter/detail/?questionId=133c"><i class="red_circle"></i> 退货补运费服务变更公告 </a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=13gq"><i class="red_circle"></i> 关于G20峰会物流问题的公告 </a>
								</li>
							</ul>
						</div>
					</div>
					<h3 class="list_head none_b">常见问题<span class="list_head_sub">COMMON PROBLEMS</span></h3>
					<div class="common_problems">
						<div class="problems_th">
							<a class="tabArea" href="javascript:void(0)"> 购物指南 </a>
							<a class="tabArea" href="javascript:void(0)"> 配送服务 </a>
							<a class="tabArea" href="javascript:void(0)"> 支付及退款 </a>
							<a class="tabArea" href="javascript:void(0)"> 退货退款 </a>
						</div>
						<div class="problems_td">
							<ul class="cont_area none_f">
								<li>
									<a href="/helpcenter/detail/?questionId=12ns"><i class="red_circle"></i>账号异常登录怎么办？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=12oq"><i class="red_circle"></i>购物流程</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=12oo"><i class="red_circle"></i>如何在美丽说购买商品？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=12ok"><i class="red_circle"></i>如何设置收货地址？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=12om"><i class="red_circle"></i>优惠券的种类及其使用规则</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=1340"><i class="red_circle"></i>如何查看领取到的优惠券？</a>
								</li>
							</ul>
							<ul class="cont_area none_f">
								<li>
									<a href="/helpcenter/detail/?questionId=12os"><i class="red_circle"></i>付款后多长时间发货？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=12ou"><i class="red_circle"></i>使用什么快递发货，多久可以送到？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=12ow"><i class="red_circle"></i>如何查看快递发货信息</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=1344"><i class="red_circle"></i>美丽说支持配送的范围</a>
								</li>
							</ul>
							<ul class="cont_area none_f">
								<li>
									<a href="/helpcenter/detail/?questionId=12p2"><i class="red_circle"></i>可以货到付款吗？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=12oy"><i class="red_circle"></i>退货/退款被商家拒绝怎么办？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=12p0"><i class="red_circle"></i>如何查看退货地址？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=133u"><i class="red_circle"></i>退款多久能到账？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=133s"><i class="red_circle"></i>美丽说都支持哪些支付方式？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=133y"><i class="red_circle"></i>如何申请退货退款？</a>
								</li>
							</ul>
							<ul class="cont_area none_f">
								<li>
									<a href="/helpcenter/detail/?questionId=12p8"><i class="red_circle"></i>美丽说支持换货吗？</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=12p4"><i class="red_circle"></i>退货补运费服务</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=12p6"><i class="red_circle"></i>食品类退货条件</a>
								</li>
								<li>
									<a href="/helpcenter/detail/?questionId=1342"><i class="red_circle"></i>七天无理由退货政策</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="contact_customer_box">
						<div class="contact_mail_a">
							<dl class="mail_list"> <dt class="mail_img"><img src="http://moguimg.u.qiniudn.com/p1/160719/idid_ie4wimzsmzrtgolehezdambqgqyde_38x35.png"></dt>
								<dt>在线客服</dt>
								<dd>
									<p>在线解答您的咨询，高效、便捷</p>
									<a class="btn" id="consult" href="javascript:;">点此咨询</a>
								</dd>
							</dl>
							<dl class="mail_list last"> <dt class="mail_img"><img src="http://moguimg.u.qiniudn.com/p1/160719/idid_ifrwgmlchfsdgolehezdambqhayde_37x34.png"></dt>
								<dt>意见反馈</dt>
								<dd>
									<p>产品功能/系统建议</p>
									<a class="btn suggest-btn" href="javascript:void(0)">意见</a>
								</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script id="adviceDialog" type="text/jsp">
			<div id="dialogContent" class="dialogContent">
				<div class="success_tips none_f"> <span class="close_z" id="closeDialog"></span>
					<p class="tips">提交成功成功</p> <span class="success_btn">确定</span> </div>
				<div class="advice">
					<div id="dialogTitle" class="dialogTitle"><span class="close_z" id="closeDialog"></span><span id="dialogTitleText"></span></div>
					<div class="dialog_con">
						<p>请选择问题类型：
							<select name="type" class="advice-type">
								<option value="产品功能"> 产品功能 </option>
								<option value="意见建议"> 意见建议 </option>
								<option value="体验问题"> 体验问题 </option>
							</select>
						</p>
						<div class="advice-cont-area"> <textarea class="advice-cont">请输入产品功能／系统意见，感谢您的反馈，我们将不断优化体验。</textarea>
							<div class="error_msg none_f">意见内容不能为空哦！</div>
						</div>
						<div class="advice-mail-area">
							<p class="mt8_f"> <input type="text" class="advice-mail" value="美丽说绝对不会泄露您的隐私"><br> <span class="error_msg none_f">您的邮箱填写有误，请重新填写。</span> </p>
							<p class="tips">*请留下您的邮箱，我们会第一时间给您答复。</p>
						</div>
						<div> <span class="btn subAdvice-btn">确认提交</span> </div>
					</div>
				</div>
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
		<script src="pc\~page\helpcenter\help_tab page\helpcenter\help_main base.bin?1607171727.25"></script>
		<script>
			fml.use('page/helpcenter/help_tab');;
			fml.use('page/helpcenter/help_main');;
			fml.use('base');;
			fml.iLoad();
		</script>
	</body>

</html>
