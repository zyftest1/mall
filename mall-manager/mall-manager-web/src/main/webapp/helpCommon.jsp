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
		<title>Beauty Show-白领的全球导购</title>
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
		<link rel="stylesheet" type="text/css" href="pc\css\base-1.css?1607171729.25">
		<link rel="icon" href="http://d04.res.meilishuo.net/pic/_o/75/6e/2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="pc\css\page\helpcenter\service_ensure-1.css?1607171729.25">
		<script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
		<script>
			fml.setOptions({
				'sversion': '1607171729.25',
				'defer': true,
				'modulebase': 'pc/jsmin/'
			});
			var Meilishuo = {
				"config": {
					"nt": "1yQyN1tU7ssTVQ5GeZ16w00cQhXM9lap84kRK/2K8acGJEbfsnimMNeQ3ZNyGCM5",
					"main_site_domain": "/",
					"server_url": "/",
					"picture_url": "http://i.meilishuo.net/css/",
					"captcha_url": "http://captcha.meilishuo.com/",
					"im_url": "http://imlab.meilishuo.com/",
					"forSale": false,
					"controller": "noviceGuide",
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
			<div class="detail_con">
				<div class="hep_detail">
					<h2 class="detail_title">常见问题</h2>
					<div class="help_con">
						<div class="desc">
							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（一）物流类问题</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">1.
										如何查看物流信息？<br>
										登录Beauty Show，在页面右上方点击&ldquo;我的订单&rdquo;进入订单列表页，点击对应订单中的&ldquo;查看物流&rdquo;，可查看发货时间、物流公司、快递单号以及物流跟踪信息。<br>
										2. 物流信息查询不到？<br>
										物流信息以快递官网查询结果为准，如订单发货后长时间没有物流信息，您可联系店铺客服核实或致电4000-800-577咨询。</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">3. 发什么快递？<br>
										商品由商家负责发货，下单前可联系店铺客服确认。<br>
										4. 物流显示已签收，但实际并没有收到货？<br>
										如果签收方显示与您同城，请您核实是否为亲戚朋友或公司前台帮您签收，如果签收方显示与您不在同一城市，您可以联系快递公司或商家核实情况，也可以直接申请退款。<br>
										5. 订单已经提交成功，我可以修改寄送地址或者收件人信息吗？<br>
										目前平台不支持修改订单信息，您可以申请退款再重新订购。<br>
										6. 可以指定送货时间吗？<br>
										暂时不能提供此项服务，请您谅解。&nbsp;<br>
										7. 商品收到后，发现发少了或者发错了，应该怎么办？<br>
										商品少发或错发，可直接在订单中申请退款或退货。</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">8.
										付款后什么时候发货？大概多长时间可以收到货？<br>
										订单会在您成功付款后的72小时内发出（不可抗力，定制，预售及买卖双方特别约定的除外）。发货之后，您可以在订单详情中查看物流跟踪信息，正常情况下3-5天到货。</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（二）付款类问题<br>
										1.是否支持货到付款？<br>
										目前在Beauty Show购买商品，均为在线支付，暂不支持货到付款，请您谅解。<br>
										2.不确定是否付款成功，要怎么查询？<br>
										登录Beauty Show，点击页面右上方&ldquo;我的订单&rdquo;，在订单列表页有一栏交易状态显示，如果显示&ldquo;待付款&rdquo;就表示该订单还未进行支付。<br>
										3.支付不成功的原因有哪些？<br>
										（1）您的银行卡尚未开通网上银行支付功能，建议您到当地营业厅开通网上银行；<br>
										（2）所用银行卡超出该银行支持地域范围，请您更换银行卡试试；<br>
										（3）银行卡已过期、作废、挂失或者余额不足等，建议您咨询您的开户行；<br>
										（4）输入的银行卡号、密码或证件号等与预置的不符，建议您重新输入正确的卡密码或证件号等，如果您忘记了密码，请您及时与所属银行联系办理密码重置；<br>
										（5）银行系统数据传输可能出现异常，建议您刷新页面或者稍后重启手机或电脑；<br>
										（6）您的网上银行支付有限额，详情请咨询所属银行客服热线。</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（三）退货<strong>/</strong>退款问题<br>
										1.如何申请退货？<br>
										（1）退货流程</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp; &nbsp; &nbsp; Step1：点击页面顶部的&ldquo;我的订单&rdquo;；</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp; &nbsp; &nbsp; Step2：点击相应订单中的&ldquo;退款/退货&rdquo;；</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp; &nbsp; &nbsp; Step3：选择退款服务类型，填写退货原因，上传凭证，核对退款金额，补充说明进行提交申请；</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp; &nbsp; &nbsp; Step4：商家同意退货后，需进入&ldquo;我的订单&rdquo;点击&ldquo;请退货&rdquo;进入退货详情页面填写退货快递信息；</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp; &nbsp; &nbsp; Step5：提交退货快递信息后，请耐心等待商家审核，商家会在10天内完成审核，在此期间如您误填错退货快递信息您还可以自行修改；</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp; &nbsp; &nbsp; Stpe6：商家同意退款后，可查看退款详情，等待退款到账。<br>
										2.退款什么时候到账？</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">不同支付方式，退款到账时间不同：</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（1）Beauty Show钱包支付和白付美支付：实时到账</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（2）银行卡支付：1-3个工作日内退至银行，具体到账时间以银行为准，最晚不超过15个工作日</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（3）支付宝支付：</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp;① 退至支付宝余额／余额宝：实时到账</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp;② 退至银行卡：具体到账时间请参考支付宝退款到账说明： https://cshall.alipay.com/lab/help_detail.htm?help_id=212421&nbsp;</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（4）微信支付：</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp;① 退至微信零钱：实时到账</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp;② 退至储蓄卡：1-3个工作日，具体到账时间以银行为准</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp;③ 退至信用卡：2-5个工作日，具体到账时间以银行为准</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（5）财付通支付：</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp;①退至财付通余额：实时到账</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">&nbsp;
										&nbsp; &nbsp;②退至银行卡：1-7个工作日，具体到账时间以银行为准</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（6）银联在线：3-7个工作日</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（7）网银：1-7个工作日<br>
										3.退货补贴运费如何补贴？</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">在提供&ldquo;退货补运费&rdquo;服务的店铺购买商品，发起退货并且填写退货物流单号的买家，在卖家确认收到退货后48小时内，可获得现金补贴，补贴金额直接发放至对应的Beauty Show钱包账户。补贴规则：买卖双方同省或者同为江浙沪的可获得平台补贴5元，此外（含港、澳、台）赔付10元，跨境物流不享受补贴。同一订单多件商品发起多次退货，仅可获得一次补贴；同一商家多个订单多款货物集中退货，一个物流单号可获补贴一次。</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（四）购物类问题<br>
										1.订单提交成功后，还可以修改订单信息吗？<br>
										很抱歉，订单一旦提交后将无法修改，请您取消订单重新购买。<br>
										2.商品包装是否有保证？<br>
										所发商品由商家打包，如您在收到商品时发现包装有破损或是其它方面的问题，请直接联系Beauty Show客服处理。</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">3.购物提供发票吗？</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">Beauty Show未强制要求卖家提供发票，建议您在购买前与卖家确认是否可以提供发票。</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">（五）客诉热线<br>
										Beauty Show努力为爱美丽们营造无忧、快乐购物的环境，期望买卖双方自愿、友好的进行交易合作。但如果爱美丽们在购物过程中遇到任何问题，都可以联系Beauty Show客服，我们会每天9:00-22:00为您守候，帮助您解决问题。<br>
										Beauty Show客服联系方式：4000-800-577</span></span>
							</p>

							<p style="font-size: 14px; line-height: 2;">&nbsp;</p>
						</div>
					</div>
				</div>
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
		<script src="pc\~base-2.bin?1607171729.25"></script>
		<script>
			fml.use('base');;
			fml.iLoad();
		</script>
	</body>

</html>
