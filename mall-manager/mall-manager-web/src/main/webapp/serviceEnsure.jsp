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
		<link rel="icon" href="pic\_o\75\6e\2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
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
					"nt": "1yQyN1tU7ssTVQ5GeZ16w5/cvZLQ+G8fChXQ8LeDDkS/d3XZCrE0x8mTSIX35WMW",
					"main_site_domain": "/",
					"server_url": "/",
					"picture_url": "http://i.meilishuo.net/css/",
					"captcha_url": "http://captcha.meilishuo.com/",
					"im_url": "http://imlab.meilishuo.com/",
					"forSale": false,
					"controller": "serviceEnsure",
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
		<div class="page">
			<div class="wyg_box">
				<div class="banner"></div>
				<div class="slider">
					<ul>
						<li class="active">
							<a href="javascript:void(0);">消费者保障说明</a>
						</li>
					</ul>
				</div>
				<div class="content">
					<div class="promise">
						<ul>
							<li>
								<a href="#d_0"> <span class="pro_ico"><img src="http://i.meilishuo.net/css/images/doota/service/ic_pc_seven.png"></span>
									七天无理由退货 </a> <span class="line"></span> </li>
							<li>
								<a href="#d_1"> <span class="pro_ico"><img src="http://i.meilishuo.net/css/images/doota/service/ic_pc_fan.png"></span>
									退货补运费 </a> <span class="line"></span> </li>
							<li>
								<a href="#d_2"> <span class="pro_ico"><img src="http://i.meilishuo.net/css/images/doota/service/ic_pc_pei.png"></span>
									先行赔付 </a> <span class="line"></span> </li>
							<li>
								<a href="#d_3"> <span class="pro_ico"><img src="http://moguimg.u.qiniudn.com/p1/160729/idid_ifrgcmzqmfstgzbqmezdambqmeyde_26x26.png"></span>
									发货承诺服务 </a> <span class="line"></span> </li>
						</ul>
					</div>
					<div class="txt_box">
						<h3 id="d_0"><span class="redline"></span>七天无理由退货</h3>
						<p style="font-size: 14px; line-height: 2;">7天无理由退货服务承诺内容：</p>

						<p style="font-size: 14px; line-height: 2;">一：7天无理由退货的定义</p>

						<p style="font-size: 14px; line-height: 2;">买家在Beauty Show平台购买商品以后，若因主观原因不愿完成本次交易，且满足退货条件，可在签收后的7天内申请无理由退货。</p>

						<p style="font-size: 14px; line-height: 2;">二：7天无理由退货时间的有效期</p>

						<p style="font-size: 14px; line-height: 2;">如订单有准确签收时间，无理由退货时间为签收时间后的168小时；如订单签收时间仅有日期，无理由退货时间自该签收日后的第二天零时起计算168小时；如物流信息不完整，无理由退货时间为确认收货后的168小时；如果用户在物流签收之前点击了确认收货，则无理由退货时间为确认收货后的168小时。</p>

						<p style="font-size: 14px; line-height: 2;">三：7天无理由退货申请的判定</p>

						<p style="font-size: 14px; line-height: 2;">1. 满足以下条件，可以申请无理由退货：</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 退货商品在无理由退货有效期内；</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 商品及商品本身包装保持商品出售时的原状且配件齐全，不影响二次销售；&nbsp;</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 若销售时，商家提供了发票或赠品，您须将发票与赠品一并退回；</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 申请退货的金额以您实际支付的商品价款为限；</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 完成网上退货申请；</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 您应当通过快递将所需退货的商品寄至正确地址；</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 您的退货申请符合相关国家法律、行政法规、地方性法规、政府规章、政策性文件、Beauty Show其他规则的规定。</p>

						<p style="font-size: 14px; line-height: 2;">2. 以下情况，不符合退货条件：</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 超过退货有效期限的商品，不予退货；&nbsp;</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 未经网上申请，将商品回寄至Beauty Show或商家的，不予退货；</p>

						<p style="font-size: 14px; line-height: 2;">&middot;
							任何因非正常使用、保管或个人原因造成的商品损坏（如自行修改尺寸，洗涤，皮具表面刮花、打油，刺绣，水洗、碰酸、碱、油或者触硬物，雨天穿着，长时间穿着，五金配件缺少等），不予退货；</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 商品吊牌、发货单、商品配件（如配饰挂坠、肩带、小卡包等）、说明书、保修单、标签等丢失，不予退货；</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 贴身商品（内衣、文胸、泳衣等）、食品类及黄金珠宝类等特殊商品，无质量问题，拆封后，不予退货；</p>

						<p style="font-size: 14px; line-height: 2;">&middot; 未使用快递，或使用快递到付，或未将商品寄至正确地址的，不予退货；</p>

						<p style="font-size: 14px; line-height: 2;">四：7天无理由退货申请流程</p>

						<p style="font-size: 14px; line-height: 2;">1. 满足退货条件的前提下，您在Beauty Show平台线上申请退货；</p>

						<p style="font-size: 14px; line-height: 2;">2. 您须在退货申请获准后的7天内，寄出退货商品，如超过期限仍未寄出，将被取消本次的退货申请，您的寄出时间以物流公司系统记载时间为准；</p>

						<p style="font-size: 14px; line-height: 2;">3. 您须使用快递，将商品回寄至商家（需与商家客服确认回寄地址），请注意：您须使用快递，不接受平邮；不接受到付；</p>

						<p style="font-size: 14px; line-height: 2;">4. 退货商品发出后，您须及时回填物流公司及物流单号，便于商家追踪了解商 品回寄状况，及时办理退款；</p>

						<p style="font-size: 14px; line-height: 2;">5. 您上传退货物流单号后，商家将在10天内处理您的退款</p>
					</div>
					<div class="txt_box">
						<h3 id="d_1"><span class="redline"></span>退货补运费</h3>
						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">1.什么是退货补运费服务
									？</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">退货运费补贴服务是由Beauty Show平台提供解决消费者退货运费问题的服务，是一种消费者保障服务。符合补贴规则的买家在享受该服务保障的店铺购买商品，买家在商家发货后通过线上申请退货并填写物流单号，在商家确认收到退货后48小时内可享受运费补贴。仅退款的订单不享受此服务。&nbsp;</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">2.在哪些店铺购买可以享受退货补运费的服务？</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">目前针对星级且符合平台业务规则的店铺开放该服务，符合补贴规则的买家购买时在店铺信息栏看到［退货补运费］字样的店铺即可享受补运费的服务
									。</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">3.&ldquo;退货运费服务
									&rdquo;申请成功后，买家能获得多少补贴？</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">买卖双方同省或者同为江浙沪的可获得平台补贴5元，此外（含港、澳、台）赔付10元，跨境物流不享受补贴。发起退货申请并且填写了物流单号信息的买家，在商家确认收到退货后48小时内，可获得现金补贴。同一订单多件商品发起多次退货，仅可获得一次补贴；同一商家多个订单多款货物集中退货，一个物流单号可获补贴一次。</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">4.符合规则的买家是平台随意认定的吗，会不会随随便便就不补贴了？</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">99%的买家都是符合规则的买家，正常进行购买和退换货的买家可以安心的享受该服务保障。仅针对退换货过于频繁可能大幅超出正常范围，存在一些其他被风控规则限制的买家，才会暂时或永久性的限制使用该服务。具体规则以平台设立为准，但该服务旨在为广大优质买家提供便利和保障希望为大家所了解。</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">5.获得退货运费补贴服务的时效</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">自商家发货起30日内发起的退货并填写物流单号，可获得相应补贴；大促期间会根据实际情况做调整，该调整以平台的公示的为准。</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">6.为什么买家退货后没获得退货运费补贴服务的现金补贴？</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">场景一：买家发起的是仅退款；</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">场景二：商家未点击发货，但买家却申请退款，即便退款流程完成，也无补贴；</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">场景三：线上退货流程未完成或商家未收到退货，但该情况在商家系统确认后，若未超过期限，仍然可以获得补贴；</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">场景四：买家退货未填写物流单号或一个物流单号申请多次补贴或被重复使用；</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">场景五：其他按照规则无法获得补贴的情况。</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">Beauty Show对该协议中的所有条款有解释权，Beauty Show有权以修改、更新等方式不时调整本协议和相关规则的内容，相关内容将公布于Beauty Show的网站上或以其他方式通知买家。</span></span>
						</p>
					</div>
					<div class="txt_box">
						<h3 id="d_2"><span class="redline"></span>先行赔付</h3>
						<p style="font-size: 14px; line-height: 2;">先行赔付服务承诺内容：</p>

						<p style="font-size: 14px; line-height: 2;">一：先行赔付的定义</p>

						<p style="font-size: 14px; line-height: 2;">即，当您提交退货信息后，商家拒绝履行&ldquo;7天无理由退货&rdquo;承诺的情况下，Beauty Show在审核您提交的充要证据后，将按《中华人民共和国消费者权益保护法》、《产品质量法》及其他相关法律规定，依据单方面的判断决定实施先行赔付退款，或不予接受您先行赔付付款申请。</p>

						<p style="font-size: 14px; line-height: 2;">二：先行赔付的判定</p>

						<p style="font-size: 14px; line-height: 2;">1. 您在无理由退货有效期内要求商家提供&ldquo;7天无理由退货&rdquo;服务而被商家拒绝，或商家中断其经营或服务；</p>

						<p style="font-size: 14px; line-height: 2;">2. 您提出赔付申请，应在7天无理由退货有效期内且在退款过程中；</p>

						<p style="font-size: 14px; line-height: 2;">3. 先行赔付退款金额仅以您实际支付的商品价款为限；</p>

						<p style="font-size: 14px; line-height: 2;">4.&nbsp;您提出赔付申请的商品需满足相关条件，详见《7天无理由退货规则》；</p>

						<p style="font-size: 14px; line-height: 2;">5. 您的赔付申请，在形式上符合相关法律法规的规定；</p>

						<p style="font-size: 14px; line-height: 2;">6.
							您应向Beauty Show提交投诉事项所需的证明文件，如果依Beauty Show独立的判断，您提供的证明文件不足以支持其先行赔付事由和请求，或者其先行赔付的事由和请求不符合法律法规的要求，则Beauty Show有权退回您的先行赔付申请；</p>

						<p style="font-size: 14px; line-height: 2;">7、您在先行赔付投诉中应保证其投诉内容的真实性，如您存在恶意或者虚假投诉的情况，给Beauty Show造成任何损失，则Beauty Show有权要求您赔偿，并取消您的会员资格。</p>
					</div>
					<div class="txt_box">
						<h3 id="d_3"><span class="redline"></span>发货承诺服务</h3>
						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">1.
									您在Beauty Show平台购物，买下商家出售的商品并成功付款后，商家将在72个小时内完成发货（不可抗力因素除外）。</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">2.
									春节期间商品具体发货时间由商家自行确定，如商家未特殊说明则发货时间延长至7日内。</span></span>
						</p>

						<p style="font-size: 14px; line-height: 2;"><span style="line-height:2"><span style="font-size:14px">3.
									您所购买的商品若为预售商品、消费者定制、买卖双方进行特别约定等特殊的情况，则发货时间不在此服务协议规定范围内。</span></span>
						</p>
					</div>
					<p> <b>
							Beauty Show有权随时对本服务政策进行修改并通过网站或通知商家的方式予以公布，您如果不同意本服务政策的修改，可以放弃使用或访问本网站或取消已经获得的服务；如果您选择在本服务政策变更后继续访问或使用本网站，则视为您已经接受本服务政策的修改。
						</b> </p>
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
