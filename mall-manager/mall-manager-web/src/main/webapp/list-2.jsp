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
		<title>上衣_美丽说</title>
		<meta name="description" content="美丽说，专注时尚新款发布。海量新款每日上新，每周五新款大促火热进行中！旗下海淘品牌“HIGO”挑选全球时尚好货，满足你全方位的时尚购物体验！">
		<meta name="keywords" content="美丽说,higo,衣服,鞋子,包包,配饰,家居,美妆,搭配,团购,美丽说higo">
		<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
		<link rel="stylesheet" type="text/css" href="pc\css\base-4.css?1607171726.25">
		<link rel="icon" href="pic\_o\75\6e\2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="pc\css\page\search\catalog.css?1607171726.25">
		<link rel="stylesheet" type="text/css" href="pc\css\page\search\filter.css?1607171726.25">
		<script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
		<script>
			fml.setOptions({'sversion' : '1607171726.25','defer' : true ,'modulebase' : 'pc/jsmin/'});	 var Meilishuo = {
    "config": {
        "nt": "1yQyN1tU7ssTVQ5GeZ16wzlv30ry2qIxWwb+91mpkPC4hsL6NGU0ABUAE2gyVhY2",
        "main_site_domain": "/",
        "server_url": "/",
        "picture_url": "http://i.meilishuo.net/css/",
        "captcha_url": "http://captcha.meilishuo.com/",
        "im_url": "http://imlab.meilishuo.com/",
        "forSale": false,
        "controller": "catalog",
        "isLogin": true,
        "userInfo": {
            "name": "阿猫来了",
            "uid": "11cnkktq",
            "avatar": "new1/v1/bdefaultavatar/03.jpg"
        }
    }
};	</script>
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
			<div class="sec_nav">
				<ul>
					<li><a href="list.jsp#10057049?action=clothing&mt=12.14354.r130395.18023&acm=1.mce.2.14354.0.0.18023_130395"
						 class="active">上衣</a></li>
					<li><a href="list.jsp#10057050?action=skirt&mt=12.14354.r130396.18023&acm=1.mce.2.14354.0.0.18023_130396">裙子</a></li>
					<li><a href="list.jsp#10057051?action=trousers&mt=12.14354.r130397.18023&acm=1.mce.2.14354.0.0.18023_130397">裤子</a></li>
					<li><a href="list.jsp#10057052?action=shoes&mt=12.14354.r130505.18023&acm=1.mce.2.14354.0.0.18023_130505">女鞋</a></li>
					<li><a href="list.jsp#10057053?action=bags&mt=12.14354.r130506.18023&acm=1.mce.2.14354.0.0.18023_130506">包包</a></li>
					<li><a href="list.jsp#10057054?action=accessories&mt=12.14354.r130507.18023&acm=1.mce.2.14354.0.0.18023_130507">配饰</a></li>
					<li><a href="list.jsp#10057056?action=magic&mt=12.14354.r130508.18023&acm=1.mce.2.14354.0.0.18023_130508">美妆</a></li>
					<li><a href="list.jsp#10059310?action=neiyi&mt=12.14354.r130509.18023&acm=1.mce.2.14354.0.0.18023_130509">内衣</a></li>
					<li><a href="list.jsp#10057057?action=men&mt=12.14354.r130510.18023&acm=1.mce.2.14354.0.0.18023_130510">男友</a></li>
					<li><a href="list.jsp#10057058?action=children&mt=12.14354.r130511.18023&acm=1.mce.2.14354.0.0.18023_130511">童装</a></li>
					<li><a href="list.jsp#10057059?action=home&mt=12.14354.r130512.18023&acm=1.mce.2.14354.0.0.18023_130512">家居</a></li>
					<li><a href="list.jsp#10057060?action=food&mt=12.14354.r130513.18023&acm=1.mce.2.14354.0.0.18023_130513">食品</a></li>
				</ul>
			</div>
		</div>
		<div class="wrap">
			<div class="userContain" data-link="/search/catalog/10057049">
				<div class="product">
					<ul class="clearfix product-ul" id="product-ul">
						<c:forEach items="${requestScope.goods}" var="good">
							<li class="product-list fl">
								<div class="img-size"> <a class="img-link" target="_blank" href="index2car.do?cID=${good.cID}&sID=${good.sID}"
														  style="background:url(${good.showPicture}) no-repeat center center;background-size:cover;"></a>
								</div>
								<div class="product-info clearfix">
									<div class="price fl"><em class="price-u">¥</em><span class="price-n">${good.price}</span></div>
									<div class="fav fr"><em class="fav-i"></em> <span class="fav-n">1231</span> </div>
								</div>
								<div></div>
								<div class="product-logo"> <img src="b7\avatar\160520\1y0mpt_ie4tqodbgrrdcnlbhazdambqgqyde_50x54.jpg"> </div> <a
									class="text-link" target="_blank" href="shopdetail.jsp#?1gl82bc?acm=2.ms.2_4.0.12380.yUhpUbBxJQ1.t_0">
								${good.describe}</a>
							</li>
						</c:forEach>

					</ul>
				</div> <!-- 登录用户显示搜索结果数目 -->
				<!-- <div class="forSignIn">		<p>您好 <span class="redFont">打捞星星的少年</span>，“衬衣” 相关的宝贝：</p>		<p class="verticalLine" style="padding-left:0;">购买过店铺找到 <span class="redFont">128</span> 件</p>		<p class="verticalLine">收藏过店铺找到 <span class="redFont">9</span> 件</p>		<p class="verticalLine">V4买家店铺找到 <span class="redFont">900</span> 件</p>		<p style="padding-left:11px;">回头客爱买店铺找到 <span class="redFont">900</span> 件</p>	</div> -->
			</div><!-- <div id="pagination" class="pagination"></div> -->
			<!--翻页-->
			<div class="pageNav"> <a class="pagePrev " style="display:none !important" href="list-1.jsp?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=1&cpc_offset=20">&lt;上一页</a>
				<a class="currentpage" href="list-1.jsp?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=1&cpc_offset=20">1</a>
				<a href="list-2.jsp?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=2&cpc_offset=20">2</a>
				<a href="list-3.jsp?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=3&cpc_offset=20">3</a>
				<a href="list-4.jsp?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=4&cpc_offset=20">4</a>
				<a href="list-5.jsp?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=5&cpc_offset=20">5</a>
				<a href="list-6.jsp?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=6&cpc_offset=20">6</a>
				<a href="list-7.jsp?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=7&cpc_offset=20">7</a>
				<i>...</i> <a href="list-8.jsp?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=100&cpc_offset=20">100</a>
				<a class="pageNext" style="" href="list-2.jsp?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=2&cpc_offset=20">下一页&gt;</a></div>
			<script type="text/jsp" id="posterWall">
				<? var data = this.v; ?> <div class="goodsWrap"> 	<div class="goodsContainer">	 	<a class="goodsImg" href="<?= data.link ?>" target="_blank" style="padding-bottom: <?= data.show.h / data.show.w * 100 ?>%;background:url('<?= data.show.img ?>') no-repeat center center;">	 		<!-- <img src="<?= data.show.img ?>" > -->	 	</a>			<? if(data.lefttop_taglist.length >0){ ?>				<div class="brandIcon">	 			<img src="<?= data.lefttop_taglist[0].img ?>">	 		</div>	 	<?}?>	 </div> 	<div class="priceWrap"> 		<div class="price">￥<?= data.price ?></div> 		<div class="shoucang"><span class="shoucangIcon"></span> 		<? if(data.cfav==null){ ?>				0	 	<?}else{?>	 		<?= data.cfav ?>	 	<?}?> 		</div> 	</div> 	<a class="goodsTitle" href="<?= data.link ?>"><?= data.title ?></a> </div></script>
		</div>
		<script> fml.vars.ppath = JSON.stringify();</script>
		<div id="com-foot">
			<div class="inner">
				<div class="flist">
					<h4>买家帮助</h4>
					<div><a href="noviceGuide.jsp" target="_blank">新手指南</a></div>
					<div><a href="serviceEnsure.jsp" target="_blank">服务保障</a></div>
					<div><a href="helpCommon.jsp" target="_blank">常见问题</a></div>
					<div><a href="shoppingHelp.jsp" target="_blank">购物帮助</a></div>
				</div>
				<div class="flist">
					<h4>商家帮助</h4>
					<div><a href="#/business" target="_blank">商家入驻</a></div>
					<div><a href="#" target="_blank">商家后台</a></div>
					<div><a href="#" target="_blank">商家推广</a></div>
				</div>
				<div class="flist">
					<h4>关于我们</h4>
					<div><a href="aboutus.jsp" target="_blank">关于美丽说</a></div>
					<div><a href="contactus.jsp" target="_blank">联系我们</a></div>
				</div>
				<div class="flist aboutus">
					<h4>关注我们</h4>
					<div> <a href="#" target="_blank"> <span class="i-sina"></span>新浪微博 <div class="follow"> 一键关注新浪微博
								<wb:follow-button uid="1718455577" type="red_1" width="67" height="24"></wb:follow-button>
							</div> </a> </div>
					<div><a href="#" target="_blank"><span class="i-qzone"></span>QQ空间</a></div>
					<div><a href="#" target="_blank"><span class="i-tencent"></span>腾讯微博</a></div>
				</div>
				<div class="flist service">
					<h4>美丽说微信服务号</h4> <img class="qrcode" src="p2\160802\7e_61hjl8kjfjfagkg3cdaj05fghck9c_100x100.png" alt="美丽说服务号二维码">
				</div>
				<div class="flist last" style="float:left;">
					<h4>美丽说客户端下载</h4>
					<p style="background:none; margin-top:0px;" class="client"> <img class="qrcode" src="p2\160802\7e_74j23d2a5f5j3bj31h70375gbeec1_100x100.png">
					</p>
				</div>
				<div class="record"> Copyright ©2016 Meilishuo.com &nbsp;<a href="new1\v1\bmisc\518ea1bbd36948b90e658485d2700e62\181714310539.pdf"
					 target="_blank">电信与信息服务业务经营许可证100798号</a>&nbsp;<a href="p1\160811\idid_ifrtszjqmmzdazrumezdambqhayde_2436x3500.jpg"
					 target="_blank">经营性网站备案信息</a>&nbsp; <br> 京ICP备11031139号&nbsp; 京公网安备110108006045&nbsp;&nbsp;
					客服电话：4000-800-577&nbsp; 文明办网文明上网举报电话：010-82615762 &nbsp;<a href="http://net.china.com.cn/index.htm" target="_blank">违法不良信息举报中心</a>
				</div>
			</div>
		</div>
		<p style="display: none" class="biu-login">11cnkktq</p>
		<div class="biu-sidebar">
			<div class="biu-options">
				<div class="biu-download"> 下载<span>APP</span>
					<div class="mls-qrcode"> <img src="p2\160802\7e_0h22fa0g03cgl0c5676cb6k2ii71h_140x140.png"> </div>
				</div>
				<div class="biu-cart"> <a href="mycart.jsp" target="_blank"><span class="cart-num biu-cart-num"></span>购物车</a>
				</div>
				<div class="biu-service"> <a class="biu-open-im"><span class="service-num biu-service-num"></span>消息</a> </div>
				<div class="biu-coupon"> <a href="coupon.jsp#" target="_blank"><span class="coupon-num biu-coupon-num"></span>优惠券</a>
				</div>
				<div class="biu-mark"> <a href="mylike.jsp" target="_blank">收藏</a> </div>
				<div class="biu-footprint"> <a href="footprint.jsp" target="_blank">足迹</a> </div>
			</div>
			<div class="biu-go2top"> </div>
		</div>
		<script type="text/javascript" src="pc\jsmin\jquery.js?1.12.4"></script>
		<script type="text/javascript" src="__static\logger\0.1.8\logger.js"></script>
		<script src="__newtown\im_web\assets\common\openim\index.js"></script>
		<script src="pc\~page\search\catalog base.bin?1607171726.25"></script>
		<script>
			fml.use('page/search/catalog');;
			fml.use('base');;
			fml.iLoad();
		</script>
	</body>
</html>
