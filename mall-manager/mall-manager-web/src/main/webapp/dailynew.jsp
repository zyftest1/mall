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
		<title>每日上新_美丽说</title>
		<meta name="description" content="美丽说，专注时尚新款发布。海量新款每日上新，每周五新款大促火热进行中！旗下海淘品牌“HIGO”挑选全球时尚好货，满足你全方位的时尚购物体验！">
		<meta name="keywords" content="美丽说,higo,衣服,鞋子,包包,配饰,家居,美妆,搭配,团购,美丽说higo">
		<link rel="dns-prefetch" href="http://s.meilishuo.net/">
		<link rel="dns-prefetch" href="http://i.meilishuo.net/">
		<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
		<link rel="stylesheet" type="text/css" href="pc\css\base-6.css?1607191228.25">
		<link rel="icon" href="pic/_o/9e/fb/7d026282ff00a259b6a7b90eee6d_48_48.c5.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="pc\css\page\select\dailynew.css?1607191228.25">
		<script type="text/javascript" src="pc\jsmin\fml.js?1"></script>
		<script>
			fml.setOptions({
				'sversion': '1607191228.25',
				'defer': true,
				'modulebase': 'pc/jsmin/'
			});
			var Meilishuo = {
				"config": {
					"nt": "1yQyN1tU7ssTVQ5GeZ16w+QmpD5M8hpRYmow7HRC50xQ46C8u7nHzlY1VEmVAvQf",
					"main_site_domain": "/",
					"server_url": "/",
					"picture_url": "http://i.meilishuo.net/css/",
					"captcha_url": "http://captcha.meilishuo.com/",
					"im_url": "http://imlab.meilishuo.com/",
					"forSale": false,
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
		<div class="main_wrap">
			<div class="nav_wrap">
				<ul class="time_nav">
					<a href="dailynew.jsp#?shelfTime=1471536000">
						<li class="time_item select" data-time="1471536000">今日</li>
					</a>
					<a href="dailynew.jsp#?shelfTime=1471449600">
						<li class="time_item normal" data-time="1471449600">8月18日</li>
					</a>
					<a href="dailynew.jsp#?shelfTime=1471363200">
						<li class="time_item normal" data-time="1471363200">8月17日</li>
					</a>
					<a href="dailynew.jsp#?shelfTime=1471276800">
						<li class="time_item normal" data-time="1471276800">8月16日</li>
					</a>
				</ul>
			</div>
			<div class="poster_main">
				<div class="wall_wrap"></div>
				<div class="pullUp"></div>
				<div id="pagination" class="pagination"></div>
			</div>
		</div>
		<script type="text/jsp" id="posterWall">
			<?		var item = this.v;		var itemLink = (item.itemType == 2) ? '/detail/?goods_id='+item.tradeItemId : item.link;	?>
				<a class="poster_item" href="<?=itemLink?>" target="_blank">
					<div class="img-wrap J_dynamic_imagebox mls_lazypic_bg" asrc="<?=item.show.img?>" style="background-image:url('<?=item.show.img?>')"> </div>
					<div class="goods_desc">
						<div class="clear">
							<p class="price">￥
								<?=item.price?>
							</p>
							<?var favnum = item.cfav ? item.cfav:'0';?>
								<p class="fav"> <span class="fav_icon"></span> <span class="favnum"><?=favnum?></span> </p>
						</div>
						<p class="title">
							<?=item.title?>
						</p>
					</div>
				</a>
		</script>
		<script>
			fml.vars.poster0 = {
				"success": true,
				"returnCode": "1001",
				"returnMessage": null,
				"data": {
					"total": 9830,
					"sort": "new",
					"isEnd": false,
					"cpc_offset": 0,
					"param": {
						"ptpWallDoc": "_wall_docs",
						"_mgjuuid": "e320d57a-fde9-4936-99c2-27ee528b7657",
						"sort": "new",
						"eventId": 70001,
						"cpc_offset": 0,
						"page": "1",
						"cKey": "pc-new",
						"cpcEventId": 70004,
						"ptpWallCpc": "_wall_cpc",
						"ptpPartC": "_mb_mls_0_pc-new_noab-noab",
						"section": "0",
						"minPrice": "5"
					},
					"page": 1,
					"list": [{
						"orgPrice": "￥333.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt3u0",
						"link": "shopdetail.jsp#?1glt3u0?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1192877609_0ekg4hjb1i01bkfh179l6kld94234_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "韩版格子宽松大码针织衫长袖毛衣外套",
						"cfav": 1,
						"price": "99.90",
						"tradeItemId": 502044344,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥236.86",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glst1q",
						"link": "shopdetail.jsp#?1glst1q?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://d01.res.meilishuo.net/pic/_o/16/c3/d5e4fcbe8306a1cb7bc8e0f3e117_640_832.c5.jpg_0b0f367c_s3_224_340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "新款秋装时尚气质百搭宽松显瘦中长款外套女",
						"cfav": 0,
						"price": "236.86",
						"tradeItemId": 502037355,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥116.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glst1o",
						"link": "shopdetail.jsp#?1glst1o?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1294292727_2hk3ic4hel964lehk7fjg528a9254_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "秋季新款韩版慵懒短裤款小蝙蝠袖纯色宽松长袖T恤",
						"cfav": 0,
						"price": "58.00",
						"tradeItemId": 502037354,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥1151.00",
						"acm": "2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"iid": "1ljd3dg",
						"link": "http://www.meilishuo.com/detail/?goods_id=651156622&acm=2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"itemType": 2,
						"cparam": null,
						"itemMarks": null,
						"show": {
							"img": "http://s7.mogucdn.com/p2/160819/upload_2d1b9l76jk78jc307ddb60b453ld3_383x510.jpg",
							"w": 320,
							"h": 427
						},
						"type": 2,
						"sale": null,
						"title": "【摩纳哥】女士大号手提包",
						"cfav": 0,
						"price": "1151.00",
						"tradeItemId": 651156622,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥129.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt0to",
						"link": "shopdetail.jsp#?1glt0to?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/o64ydc_5d5jj6ic44f214ejgijellif3g19l_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "饰恩北包包休闲小清新背包2016新款女小双肩包校园风景小背包",
						"cfav": 0,
						"price": "129.00",
						"tradeItemId": 502042394,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥761.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glteoc",
						"link": "shopdetail.jsp#?1glteoc?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/992000378_4dh5l2gdf27k15la5e49j6ld8kk2e_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "【LoieJiaoHu...】甜美风可爱兔耳朵毛球牛皮纯色系带韩版新款平底低帮休闲板鞋女鞋",
						"cfav": 0,
						"price": "761.00",
						"tradeItemId": 502051370,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥119.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsw94",
						"link": "shopdetail.jsp#?1glsw94?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/egby5w_747jg64796el8afabkbclcki99e3i_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "麦子木村耀司新款潮流腰包男女帆布包时尚单肩包斜挎胸包学院风运",
						"cfav": 0,
						"price": "119.00",
						"tradeItemId": 502039432,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥65.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt0tm",
						"link": "shopdetail.jsp#?1glt0tm?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dqrrhg_0h37fj03l6i4i5keal4gfebb08bdf_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "2016春装新款女装休闲复古背带裙学院风中长款宽松连衣裙子潮",
						"cfav": 0,
						"price": "65.00",
						"tradeItemId": 502042393,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥305.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltd4q",
						"link": "shopdetail.jsp#?1gltd4q?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1281897013_770987dbhch75eckc4lia5l3c226l_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "经典瘦身款！秋冬新品时尚休闲粗跟短筒靴",
						"cfav": 0,
						"price": "91.50",
						"tradeItemId": 502050369,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥108.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltho2",
						"link": "shopdetail.jsp#?1gltho2?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/oapli5_7d56jc80jfh1302g2ddfe7b5hfb4b_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "2016春夏新款单鞋内增高超高跟松糕底女鞋坡跟星星休闲韩版运",
						"cfav": 0,
						"price": "108.00",
						"tradeItemId": 502053309,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥138.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltho0",
						"link": "shopdetail.jsp#?1gltho0?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/841260320_6fl777k6fc4c9hj25ehj0kceieg15_640x959.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "抽绳松紧腰宽松显瘦小脚哈伦裤",
						"cfav": 0,
						"price": "69.00",
						"tradeItemId": 502053308,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥532.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt0tk",
						"link": "shopdetail.jsp#?1glt0tk?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/950269170_689678g4480l233j34c1bg7da3c2d_640x900.jpg_224x340.jpg",
							"w": 320,
							"h": 450
						},
						"type": 2,
						"sale": 0,
						"title": "【专柜品质，显瘦显白】欧美名媛细跟高跟单鞋浅口单鞋婚鞋",
						"cfav": 0,
						"price": "483.00",
						"tradeItemId": 502042392,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥98.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt6we",
						"link": "shopdetail.jsp#?1glt6we?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://d01.res.meilishuo.net/pic/_o/1b/6f/fe1772e5f273d4d86c2f6a748991_640_832.c5.jpg_75a38fbf_s3_224_340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "性感V字领修身蕾丝长袖上衣+弹力修身不规则流苏半身裙套装",
						"cfav": 0,
						"price": "98.00",
						"tradeItemId": 502046331,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥1275.00",
						"acm": "2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"iid": "1ljd3de",
						"link": "http://www.meilishuo.com/detail/?goods_id=651156621&acm=2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"itemType": 2,
						"cparam": null,
						"itemMarks": null,
						"show": {
							"img": "http://s7.mogucdn.com/p2/160819/upload_5gbj2d9lji6i3667el18ghgic8iei_383x510.jpg",
							"w": 320,
							"h": 427
						},
						"type": 2,
						"sale": null,
						"title": "【迈克高仕】女士手提单肩包",
						"cfav": 0,
						"price": "1275.00",
						"tradeItemId": 651156621,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥39.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltg48",
						"link": "shopdetail.jsp#?1gltg48?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dqrrhg_676g752i61khh68ha9ld2f0ik56bf_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "夏季新款小清新百搭宽松显瘦下摆系带袖口开衩短款短袖T恤女",
						"cfav": 0,
						"price": "39.00",
						"tradeItemId": 502052304,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥90.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt8gu",
						"link": "shopdetail.jsp#?1glt8gu?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/kn84xr_3k62dk3g3ai4gg8gfeal43j47aedc_640x841.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "人本平底休闲小白鞋学生纯色韩版帆布鞋夏布洛克运动系带女鞋子",
						"cfav": 0,
						"price": "90.00",
						"tradeItemId": 502047347,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥118.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltg46",
						"link": "shopdetail.jsp#?1gltg46?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/o7tvtv_35f2e5bk5gke0gjdfld8bek5k59ii_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "七皇后秋冬锁骨链短款银水晶韩国时尚颈链韩版配饰S925银项链",
						"cfav": 0,
						"price": "118.00",
						"tradeItemId": 502052303,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥498.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsz8u",
						"link": "shopdetail.jsp#?1glsz8u?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/839377753_74l69bgc31gk5led44530e5gg7hec_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "【星期九】2016新款日韩百搭多功能双肩背包女",
						"cfav": 0,
						"price": "498.00",
						"tradeItemId": 502041371,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥55.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glteoa",
						"link": "shopdetail.jsp#?1glteoa?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dzido2_4d5gbe99jllfkglkcbdk4bf571f32_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "韩版夏季女装新款蓝色翻领短袖棉麻衬衫女轻薄学院风无袖上衣",
						"cfav": 0,
						"price": "55.00",
						"tradeItemId": 502051369,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥45.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltbkw",
						"link": "shopdetail.jsp#?1gltbkw?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dzido2_540108h25l2fkk4f141ah9b6jbk7j_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "贵芳夏装新款卡通印花可爱短袖T恤女韩版宽松显瘦学生",
						"cfav": 0,
						"price": "45.00",
						"tradeItemId": 502049364,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥80.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glthny",
						"link": "shopdetail.jsp#?1glthny?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1463369242_3g53hl6kfbea99efa5jekf3aj42ca_2016x3024.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "早秋新品别致的小夹心锁骨链 18K金设计师款韩范小清新",
						"cfav": 0,
						"price": "80.00",
						"tradeItemId": 502053307,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥110.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt6wc",
						"link": "shopdetail.jsp#?1glt6wc?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/o64ydc_3ie5fag53e6f7820ihaejgg4h41j4_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "饰恩书包小学生男女生1-3-4-6-10-12年级周岁背包孩",
						"cfav": 0,
						"price": "110.00",
						"tradeItemId": 502046330,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥224.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltma0",
						"link": "shopdetail.jsp#?1gltma0?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1029888604_544ej0hlc59k35a2eal6c6abi5f34_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "洋气吊肩纯色休闲毛衣",
						"cfav": 0,
						"price": "224.00",
						"tradeItemId": 502056296,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥1319.00",
						"acm": "2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"iid": "1ljd3dc",
						"link": "http://www.meilishuo.com/detail/?goods_id=651156620&acm=2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"itemType": 2,
						"cparam": null,
						"itemMarks": null,
						"show": {
							"img": "http://s7.mogucdn.com/p2/160819/upload_4aj2eeeff2cghef6d4ab57bb0cal8_383x510.jpg",
							"w": 320,
							"h": 427
						},
						"type": 2,
						"sale": null,
						"title": "【摩纳哥】女士中号手提单肩包",
						"cfav": 0,
						"price": "1319.00",
						"tradeItemId": 651156620,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥122.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt2ai",
						"link": "shopdetail.jsp#?1glt2ai?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/egby5w_13lfda103802j8h4e6gkli52dc8l8_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "麦子安丽雅欧美时尚信封包链条圆环单肩包韩版新款斜挎包磨砂拼接",
						"cfav": 0,
						"price": "122.00",
						"tradeItemId": 502043345,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥299.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltbku",
						"link": "shopdetail.jsp#?1gltbku?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://d01.res.meilishuo.net/pic/_o/44/4f/31d6aca43dc2275f3adf3d178995_640_832.c5.jpg_83228006_s3_224_340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "孕妇背带裤秋季新款小脚裤托腹裤孕妇装长裤连体裤孕妇裤",
						"cfav": 0,
						"price": "75.00",
						"tradeItemId": 502049363,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥176.86",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glthnw",
						"link": "shopdetail.jsp#?1glthnw?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://d01.res.meilishuo.net/pic/_o/f0/19/de44e380a5d3475b25ddb0f448e4_640_832.c5.jpg_1b7ec3be_s3_224_340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "新款秋装宽松收腰系腰带下摆开叉长款连衣裙",
						"cfav": 0,
						"price": "176.86",
						"tradeItemId": 502053306,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥54.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltd4m",
						"link": "shopdetail.jsp#?1gltd4m?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/lda2tj_6hhgjg6ea6jh42jeh19b2baebd5k9_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "补习袋小学生手提袋男女儿童补习包手拎书袋补课包斜挎三用书包",
						"cfav": 0,
						"price": "37.80",
						"tradeItemId": 502050367,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥328.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsw92",
						"link": "shopdetail.jsp#?1glsw92?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/841353592_83a03g10bdaag5ek76a3b3lgci1ad_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "S925银复古树叶绿玛瑙项链锁骨链气质款",
						"cfav": 0,
						"price": "98.40",
						"tradeItemId": 502039431,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥109.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltd4k",
						"link": "shopdetail.jsp#?1gltd4k?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/oapli5_8bj9f9ckhj5eec98hdi8685fa7il1_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "2016春秋新款小白鞋女鞋运动鞋女白色板鞋韩版休闲系带平底单",
						"cfav": 0,
						"price": "109.00",
						"tradeItemId": 502050366,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥157.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsz8s",
						"link": "shopdetail.jsp#?1glsz8s?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s18.mogucdn.com/p2/160819/1339294259_1e9cd36d8j1e43d50174ka54fc5el_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "明星同款 秋季新款韩版圆领套头长袖字母印花卫衣",
						"cfav": 0,
						"price": "94.20",
						"tradeItemId": 502041370,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥65.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glthns",
						"link": "shopdetail.jsp#?1glthns?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dqrrhg_3l5ek62lje485a0kb8ce4gkd46h1j_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "16春夏新款韩版纯色名媛风时尚百褶连衣裙圆领勾花镂空中袖女裙",
						"cfav": 0,
						"price": "65.00",
						"tradeItemId": 502053304,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥299.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt2ag",
						"link": "shopdetail.jsp#?1glt2ag?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/915403619_0f1dd2lbcl5ell8405eh4chi0hhgi_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "2016秋季新款条纹针织衫+开叉半身裙两件套",
						"cfav": 0,
						"price": "299.00",
						"tradeItemId": 502043344,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥2882.00",
						"acm": "2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"iid": "1ljd3da",
						"link": "http://www.meilishuo.com/detail/?goods_id=651156619&acm=2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"itemType": 2,
						"cparam": null,
						"itemMarks": null,
						"show": {
							"img": "http://s7.mogucdn.com/p2/160819/upload_7gd8l279llklkibhk2f3kgegbel53_383x510.jpg",
							"w": 320,
							"h": 427
						},
						"type": 2,
						"sale": null,
						"title": "【Furla】中号手提单肩包",
						"cfav": 0,
						"price": "2882.00",
						"tradeItemId": 651156619,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥299.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt5gk",
						"link": "shopdetail.jsp#?1glt5gk?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://d01.res.meilishuo.net/pic/_o/e5/57/5c8d2c7a6a7d76f610c80f87666c_640_832.c5.jpg_47a81708_s3_224_340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "学院风全棉白色牛仔外套韩范宽松休闲百搭夹克潮",
						"cfav": 0,
						"price": "99.00",
						"tradeItemId": 502045398,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥55.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltkrs",
						"link": "shopdetail.jsp#?1gltkrs?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dqrrhg_3aj3gg1a9d8a8bhac317lg22d18i6_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "夏季韩版新款时尚休闲百搭宽松显瘦镂空蕾丝花边领短袖T恤女",
						"cfav": 0,
						"price": "55.00",
						"tradeItemId": 502055320,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥227.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt3ty",
						"link": "shopdetail.jsp#?1glt3ty?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/995460401_434512iif0cdc579echhhg35l248j_640x900.jpg_224x340.jpg",
							"w": 320,
							"h": 450
						},
						"type": 2,
						"sale": 0,
						"title": "秋装新款大码显瘦性感露背连衣裙",
						"cfav": 0,
						"price": "68.10",
						"tradeItemId": 502044343,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥59.80",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltkrq",
						"link": "shopdetail.jsp#?1gltkrq?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dzido2_3e4bfihdjjh0ij9fjab7gh6fgic1d_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "韩版夏季新品宽松大码竖条纹V领五分短袖学院风韩范蝙蝠袖衬衫女",
						"cfav": 0,
						"price": "59.80",
						"tradeItemId": 502055319,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥55.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltd4i",
						"link": "shopdetail.jsp#?1gltd4i?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dzido2_5bf5de51344f68dj77kgi16hh7l3d_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "16夏装新款韩版百搭圆领短袖宽松显瘦印花字母中长款T恤衫女潮",
						"cfav": 0,
						"price": "55.00",
						"tradeItemId": 502050365,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥132.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsz8q",
						"link": "shopdetail.jsp#?1glsz8q?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/egby5w_1cai01b0357bd21a4598i1g40ka81_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "麦子卡拉羊单肩包男士休闲运动背包竖款斜挎包女斜跨小包包男包C",
						"cfav": 0,
						"price": "132.00",
						"tradeItemId": 502041369,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥126.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glthnq",
						"link": "shopdetail.jsp#?1glthnq?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/o64ydc_59ldd2h419j9i346h8b4c851edjl5_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "饰恩爱华仕旗下劲美休闲双肩包男大容量出差旅行背包中学生书包女",
						"cfav": 0,
						"price": "126.00",
						"tradeItemId": 502053303,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥45.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsz8o",
						"link": "shopdetail.jsp#?1glsz8o?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/lda2tj_240cgd6bi8gi207k7ljggfahh6el7_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "咔米嗒儿童背包幼儿园可爱小黄人书包宝宝包包卡通男童女孩1-3",
						"cfav": 0,
						"price": "31.50",
						"tradeItemId": 502041368,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥218.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltg44",
						"link": "shopdetail.jsp#?1gltg44?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/956654638_814lblke78cl35lc3ghle892i5lf5_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "韩版休闲宽松女装时尚钩花长袖蕾丝衫+翻领无袖雪纺衫甜美两件套",
						"cfav": 0,
						"price": "89.00",
						"tradeItemId": 502052302,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥2709.00",
						"acm": "2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"iid": "1ljd3d8",
						"link": "http://www.meilishuo.com/detail/?goods_id=651156618&acm=2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"itemType": 2,
						"cparam": null,
						"itemMarks": null,
						"show": {
							"img": "http://s7.mogucdn.com/p2/160819/upload_1221kedcbl7d9jej3e7dgfi5agg2b_383x510.jpg",
							"w": 320,
							"h": 427
						},
						"type": 2,
						"sale": null,
						"title": "【迈克高仕】女士中号手提单肩包",
						"cfav": 0,
						"price": "2709.00",
						"tradeItemId": 651156618,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥78.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltm9y",
						"link": "shopdetail.jsp#?1gltm9y?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dqrrhg_87ag9ch6falilgi48f2d217g9ge76_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "16夏季新款韩版水洗浅色牛仔背带裙学院风显瘦中长裙女装连衣裙",
						"cfav": 0,
						"price": "78.00",
						"tradeItemId": 502056295,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥105.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt3tw",
						"link": "shopdetail.jsp#?1glt3tw?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/oapli5_84f64j0c0c62bkgkh3e02jggcfljl_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "秋季老北京布鞋女单鞋平底妈妈鞋透气防滑软底中老年老人大码布鞋",
						"cfav": 0,
						"price": "105.00",
						"tradeItemId": 502044342,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥138.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt5gi",
						"link": "shopdetail.jsp#?1glt5gi?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1340344729_813d732ek82b6lh8c4hb1ecbedai8_640x900.jpg_224x340.jpg",
							"w": 320,
							"h": 450
						},
						"type": 2,
						"sale": 0,
						"title": "学院风情侣棒球外套",
						"cfav": 0,
						"price": "89.70",
						"tradeItemId": 502045397,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥55.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltd4g",
						"link": "shopdetail.jsp#?1gltd4g?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dqrrhg_7i02kfl74hj9h4l080661gbc4758k_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "夏季修身镂空拼接露肩上衣女韩版2016新款百搭短袖纯色套头T",
						"cfav": 0,
						"price": "55.00",
						"tradeItemId": 502050364,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥132.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt5gg",
						"link": "shopdetail.jsp#?1glt5gg?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/egby5w_69l84idb172k2e1k01f58g7777kh3_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "麦子包邮卡拉羊单肩斜挎包运动包男女韩版潮旅游随身小单肩包",
						"cfav": 0,
						"price": "132.00",
						"tradeItemId": 502045396,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥130.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsw90",
						"link": "shopdetail.jsp#?1glsw90?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/o64ydc_4gbhci6add3ed56ijdjd9e1k5kj1f_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "饰恩2016年新款双肩包女包欧美时尚铆钉休闲时尚背包纯色软面",
						"cfav": 0,
						"price": "130.00",
						"tradeItemId": 502039430,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥94.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsun8",
						"link": "shopdetail.jsp#?1glsun8?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/811711955_7ei94ge21gh07jc1ihjakae85ag76_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "阿K哥推荐：韩版糖果色露肩波点长袖一字领雪纺衫",
						"cfav": 0,
						"price": "65.80",
						"tradeItemId": 502038390,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥159.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glthno",
						"link": "shopdetail.jsp#?1glthno?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1310073395_6jhd4b5df3j33k8jgh623087a0408_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "秋季弹力破洞牛仔裤显瘦修身弹力磨破洗白铅笔长裤子",
						"cfav": 0,
						"price": "79.50",
						"tradeItemId": 502053302,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥200.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsz8m",
						"link": "shopdetail.jsp#?1glsz8m?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/881280735_63j5icb8583d8jikb9hc68gh92838_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "【VOP】秋季街头潮牌蝙蝠袖宽松套头纯色中袖男士卫衣",
						"cfav": 0,
						"price": "118.00",
						"tradeItemId": 502041367,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [{
							"img": "http://s18.mogucdn.com/b7/avatar/160520/1y0mpt_ie4tqodbgrrdcnlbhazdambqgqyde_50x54.jpg",
							"w": 50,
							"h": 54
						}],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥9949.00",
						"acm": "2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"iid": "1ljd3d6",
						"link": "http://www.meilishuo.com/detail/?goods_id=651156617&acm=2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"itemType": 2,
						"cparam": null,
						"itemMarks": null,
						"show": {
							"img": "http://s7.mogucdn.com/p2/160819/upload_154kad12cj5aa8gle0cf4ehbc74c0_383x510.jpg",
							"w": 320,
							"h": 427
						},
						"type": 2,
						"sale": null,
						"title": "【McQ - Alex...】女士中号手提单肩包",
						"cfav": 0,
						"price": "9949.00",
						"tradeItemId": 651156617,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥258.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltj4a",
						"link": "shopdetail.jsp#?1gltj4a?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1296841475_5ece522aeb28j5b8di344c7c21l3k_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "2016新款韩国棉豹纹图案女性围巾披肩",
						"cfav": 0,
						"price": "258.00",
						"tradeItemId": 502054249,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥118.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt6wa",
						"link": "shopdetail.jsp#?1glt6wa?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/o7tvtv_8el07gb97ddk68g2l1ek2aclb5l63_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "Twinstyle雪花锁骨链女简约气质短款日韩国甜美项链吊坠",
						"cfav": 0,
						"price": "118.00",
						"tradeItemId": 502046329,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥55.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltbko",
						"link": "shopdetail.jsp#?1gltbko?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dzido2_26lh6b0ij7401c9fchgic1g492hac_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "夏季女装新款系带宽松灯笼五分袖慵懒风条纹衬衫防晒衣衫",
						"cfav": 0,
						"price": "55.00",
						"tradeItemId": 502049360,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥197.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsun6",
						"link": "shopdetail.jsp#?1glsun6?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/819614231_638kilf7ld5ld7cclki7861bbii60_1200x1800.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "秋季新款女士纯棉家居服长袖睡裙",
						"cfav": 0,
						"price": "197.00",
						"tradeItemId": 502038389,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥816.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt9zw",
						"link": "shopdetail.jsp#?1glt9zw?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/938033947_4e2hl9k0k9lg7c8i75jggg4k764e9_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "冬季加绒加厚保暖蚕丝绒四件套法兰绒4件被套天鹅珊瑚绒床上用品",
						"cfav": 0,
						"price": "244.80",
						"tradeItemId": 502048338,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥119.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltkro",
						"link": "shopdetail.jsp#?1gltkro?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/oapli5_5f6ebl103ff6388kd96b7jdlbjica_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "SHOEBOX鞋柜专柜正品男鞋休闲鞋系带休闲跑步鞋特价透气鞋",
						"cfav": 0,
						"price": "119.00",
						"tradeItemId": 502055318,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥498.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltj48",
						"link": "shopdetail.jsp#?1gltj48?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/839377753_1jkgccbg2555b3g36a4l2778j06ag_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "【星期九】2016新款休闲韩版潮学院风书包旅行背包女包包双肩包",
						"cfav": 0,
						"price": "498.00",
						"tradeItemId": 502054248,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥266.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltnsm",
						"link": "shopdetail.jsp#?1gltnsm?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/873992216_055le4k681h4ah34ll2762460bhjc_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "韩版开衩毛衣+显瘦针织鱼尾裙两件套",
						"cfav": 0,
						"price": "133.00",
						"tradeItemId": 502057279,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥112.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt2ae",
						"link": "shopdetail.jsp#?1glt2ae?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/870476342_7fd83177j3a3eaj5e7b4bc29k4666_720x1080.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "春秋新款韩版原宿风徽章贴布休闲百搭宽松加厚太空棉夹克棒球外套",
						"cfav": 0,
						"price": "112.00",
						"tradeItemId": 502043343,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥3082.00",
						"acm": "2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"iid": "1ljd3d4",
						"link": "http://www.meilishuo.com/detail/?goods_id=651156616&acm=2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"itemType": 2,
						"cparam": null,
						"itemMarks": null,
						"show": {
							"img": "http://s7.mogucdn.com/p2/160819/upload_8h63498fj7i5dk7he378e5hjki624_383x510.jpg",
							"w": 320,
							"h": 427
						},
						"type": 2,
						"sale": null,
						"title": "【高田贤三】中号手提单肩包",
						"cfav": 0,
						"price": "3082.00",
						"tradeItemId": 651156616,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥140.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsxpo",
						"link": "shopdetail.jsp#?1glsxpo?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/o64ydc_6lllllbe4iabj61842ac98381i4je_788x1038.jpg_224x340.jpg",
							"w": 320,
							"h": 422
						},
						"type": 2,
						"sale": 0,
						"title": "饰恩UTTUS2016夏新款韩版简约尼龙布包双肩包学生包休闲",
						"cfav": 0,
						"price": "140.00",
						"tradeItemId": 502040378,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥330.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt8go",
						"link": "shopdetail.jsp#?1glt8go?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1285223355_0534fdf71jeg3ikk4dicijlalik0k_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "2016秋冬新品韩版加厚学院风V领短款长袖双口袋纯色毛衣",
						"cfav": 0,
						"price": "99.00",
						"tradeItemId": 502047344,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥79.80",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt5ge",
						"link": "shopdetail.jsp#?1glt5ge?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dqrrhg_711310e5hhakf7d74eebl8kehgkeh_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "16夏装新款韩国甜美公主紫色钩花复古镂空针织修身连衣裙送吊带",
						"cfav": 0,
						"price": "79.80",
						"tradeItemId": 502045395,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥111.65",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt8gm",
						"link": "shopdetail.jsp#?1glt8gm?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/egby5w_25cb5j800492k2a7hhhig9h8k9d46_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "麦子阿伊凡2016新款兔耳朵果冻包手提斜挎包包潮时尚女包迷你",
						"cfav": 0,
						"price": "111.65",
						"tradeItemId": 502047343,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥256.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltg42",
						"link": "shopdetail.jsp#?1gltg42?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/upload_4ai940je9k62d7929dd48hggb1971_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "名媛潮袖透视拼接里衬蕾丝连衣裙",
						"cfav": 0,
						"price": "128.00",
						"tradeItemId": 502052301,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥57.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsun4",
						"link": "shopdetail.jsp#?1glsun4?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1266224965_818dgj1ch7g3hih8gfdid7bf3clek_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "2016年秋韩版学院风原宿风卡通字母香蕉刺绣撞色短款长袖上衣",
						"cfav": 0,
						"price": "57.00",
						"tradeItemId": 502038388,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥49.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glthnm",
						"link": "shopdetail.jsp#?1glthnm?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dqrrhg_019928ae031ia4g14ga08bfb2j2fl_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "夏季韩版新款纯色百搭修身显瘦喇叭袖低领性感上衣短袖T恤女",
						"cfav": 0,
						"price": "49.00",
						"tradeItemId": 502053301,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥99.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glst1k",
						"link": "shopdetail.jsp#?1glst1k?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s18.mogucdn.com/p2/160819/1466822940_5b3ekjd1dkjde8585lbae9ickagj3_640x832.png_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "夏季新款韩版裤子破洞浅色高腰牛仔裤宽松长裤显瘦哈伦裤女潮",
						"cfav": 0,
						"price": "99.00",
						"tradeItemId": 502037352,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥196.67",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt8gk",
						"link": "shopdetail.jsp#?1glt8gk?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/1129035281_5f0cc2a760300cfba1cjcf411a88l_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "抽绳收腰中长款纯色工装薄风衣外套",
						"cfav": 0,
						"price": "59.00",
						"tradeItemId": 502047342,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥13810.00",
						"acm": "2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"iid": "1ljd3d2",
						"link": "http://www.meilishuo.com/detail/?goods_id=651156615&acm=2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"itemType": 2,
						"cparam": null,
						"itemMarks": null,
						"show": {
							"img": "http://s7.mogucdn.com/p2/160819/upload_6llb4h01bg27d8g885ja4fgjhh1gg_383x510.jpg",
							"w": 320,
							"h": 427
						},
						"type": 2,
						"sale": null,
						"title": "【巴黎世家】女士大号手提单肩包",
						"cfav": 0,
						"price": "13810.00",
						"tradeItemId": 651156615,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥398.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsxpm",
						"link": "shopdetail.jsp#?1glsxpm?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/818190999_0aka3dj5995ijckdi9gah78k8jjej_1334x2000.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "【萱妮丝漫】秋冬季真皮短靴粗跟尖头女靴流苏短靴",
						"cfav": 0,
						"price": "398.00",
						"tradeItemId": 502040377,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥109.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsun2",
						"link": "shopdetail.jsp#?1glsun2?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/oapli5_4kid4c4h95h46577694aihe139f1f_640x841.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "SHOEBOX鞋柜商务休闲加绒套脚款短靴男鞋11136180",
						"cfav": 0,
						"price": "109.00",
						"tradeItemId": 502038387,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥450.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt3tq",
						"link": "shopdetail.jsp#?1glt3tq?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/950269170_0hdjl08ldf0h08dh34jff6ad93gdg_640x900.jpg_224x340.jpg",
							"w": 320,
							"h": 450
						},
						"type": 2,
						"sale": 0,
						"title": "【专柜品质，显瘦显白】欧美名媛细跟高跟单鞋浅口单鞋",
						"cfav": 0,
						"price": "401.00",
						"tradeItemId": 502044339,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥59.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltbkk",
						"link": "shopdetail.jsp#?1gltbkk?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dzido2_2fh226f9gig0g923e1l542clallij_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "韩版女装夏季新品复古欧美学院风系带流苏条纹衬衫套头上衣女学生",
						"cfav": 0,
						"price": "59.00",
						"tradeItemId": 502049358,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥168.57",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt3to",
						"link": "shopdetail.jsp#?1glt3to?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/875119773_8a65kblc9acii04c0522el36l43e8_1000x1500.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "韩版真皮小白鞋星星拼接做旧磨砂皮斑马纹平底板鞋",
						"cfav": 0,
						"price": "168.57",
						"tradeItemId": 502044338,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥169.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltd4e",
						"link": "shopdetail.jsp#?1gltd4e?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/873824421_8cih4ljbk86g8l6igdk351633123i_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "【肖小姐】韩版秋季潮流九分萝卜型垮裤女式",
						"cfav": 0,
						"price": "169.00",
						"tradeItemId": 502050363,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥39.80",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt2ac",
						"link": "shopdetail.jsp#?1glt2ac?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dzido2_7a319l7l4gl4lb9hfle9a8c1aga69_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "韩版2016夏装新款百搭后腰缕空蝴蝶结系带短袖套头T恤休闲",
						"cfav": 0,
						"price": "39.80",
						"tradeItemId": 502043342,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥198.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt6w6",
						"link": "shopdetail.jsp#?1glt6w6?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/991908034_4if81g18d6g7ai9agg9d5ke1308ah_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "秋季职业装男女同款工作服长袖商务衬衫正装面试装衬衣正装工装",
						"cfav": 1,
						"price": "99.00",
						"tradeItemId": 502046327,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥130.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glteo6",
						"link": "shopdetail.jsp#?1glteo6?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/o64ydc_3128kd135i06bb73ahd82dha211al_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "饰恩LESHAER乐沙儿2016新款休闲风猫耳朵五金打造马卡",
						"cfav": 0,
						"price": "130.00",
						"tradeItemId": 502051367,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥1368.00",
						"acm": "2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"iid": "1ljd3cy",
						"link": "http://www.meilishuo.com/detail/?goods_id=651156613&acm=2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"itemType": 2,
						"cparam": null,
						"itemMarks": null,
						"show": {
							"img": "http://s7.mogucdn.com/p2/160819/upload_3hggk020deiclca9jb254hkagcg76_383x510.jpg",
							"w": 320,
							"h": 427
						},
						"type": 2,
						"sale": null,
						"title": "【摩纳哥】女士中号手提单肩包",
						"cfav": 0,
						"price": "1368.00",
						"tradeItemId": 651156613,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥96.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt2aa",
						"link": "shopdetail.jsp#?1glt2aa?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://d01.res.meilishuo.net/pic/_o/78/fc/0e4dddc64822db2cdef7b71d2915_640_832.c5.jpg_f12adfb0_s3_224_340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "【Mechilado】秋季新款古力娜扎同款唐老鸭图案针织半身裙套装两件套裙子",
						"cfav": 0,
						"price": "96.00",
						"tradeItemId": 502043341,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥112.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsun0",
						"link": "shopdetail.jsp#?1glsun0?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/egby5w_21l24h3ade1560e9a9fi5l898318l_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "麦子汇驰迷你双肩包女韩版小背包新款单肩双肩斜挎多功能小包包女",
						"cfav": 0,
						"price": "112.00",
						"tradeItemId": 502038386,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥158.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltkrm",
						"link": "shopdetail.jsp#?1gltkrm?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/m07k5j_12hla57jd5df82l6clh01jkibj6b5_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "貂绒毛衣宽松舒适灯笼袖套头打底衫",
						"cfav": 0,
						"price": "79.00",
						"tradeItemId": 502055317,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥108.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltbki",
						"link": "shopdetail.jsp#?1gltbki?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/oapli5_53dk4dc39jilgg5i02bac5k4ahcf4_640x842.jpg_224x340.jpg",
							"w": 320,
							"h": 421
						},
						"type": 2,
						"sale": 0,
						"title": "泰瑞合新款小圆头民族风绣花鞋千层底老北京布鞋内增高单鞋女鞋",
						"cfav": 0,
						"price": "108.00",
						"tradeItemId": 502049357,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥150.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt5ga",
						"link": "shopdetail.jsp#?1glt5ga?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://d01.res.meilishuo.net/pic/_o/7a/9b/34312b819916da486a389c856f6d_640_832.c5.jpg_90ff3c26_s3_224_340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "初秋韩版休闲纯色百搭衬衫",
						"cfav": 0,
						"price": "150.00",
						"tradeItemId": 502045393,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥79.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsw8w",
						"link": "shopdetail.jsp#?1glsw8w?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/dqrrhg_86h4h8d8jgca89h6a4f6j7g154dc0_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "2016夏装新款宽松休闲大V领条纹两件套吊带连衣裙带腰带女",
						"cfav": 0,
						"price": "79.00",
						"tradeItemId": 502039428,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥139.80",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt2a8",
						"link": "shopdetail.jsp#?1glt2a8?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s18.mogucdn.com/p2/160819/1197051911_1d56jf78g8a9a23f4576g598k120j_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "2016新款韩版中长款套头加厚毛衣针织打底衫女",
						"cfav": 0,
						"price": "139.80",
						"tradeItemId": 502043340,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥49.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsumy",
						"link": "shopdetail.jsp#?1glsumy?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s18.mogucdn.com/p2/160819/dqrrhg_15a22cl32k4d3d24c39783dfjl755_640x961.jpg_224x340.jpg",
							"w": 320,
							"h": 481
						},
						"type": 2,
						"sale": 0,
						"title": "夏季韩版新款不规则细横条纹百搭露肩宽松显瘦上衣短袖T恤女",
						"cfav": 0,
						"price": "49.00",
						"tradeItemId": 502038385,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥294.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltm9u",
						"link": "shopdetail.jsp#?1gltm9u?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s18.mogucdn.com/p2/160819/eex6m0_2478j2jca72j1g9el7i586l5l308b_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "秋装韩版OL气质高腰显瘦开叉微喇叭裤长腿神器工装长裤西装裤",
						"cfav": 0,
						"price": "88.20",
						"tradeItemId": 502056293,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥1709.00",
						"acm": "2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"iid": "1ljd3cw",
						"link": "http://www.meilishuo.com/detail/?goods_id=651156612&acm=2.ms.2_4.0.5808.yUhpUiomJS7.t_0",
						"itemType": 2,
						"cparam": null,
						"itemMarks": null,
						"show": {
							"img": "http://s7.mogucdn.com/p2/160819/upload_1igcgcj6eahjcl26252dk8ac579le_383x510.jpg",
							"w": 320,
							"h": 427
						},
						"type": 2,
						"sale": null,
						"title": "【迈克高仕】女士中号手提单肩包",
						"cfav": 0,
						"price": "1709.00",
						"tradeItemId": 651156612,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥247.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glsz8i",
						"link": "shopdetail.jsp#?1glsz8i?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/upload_1ei9h7jbae5leb72ghhi78808a563_640x975.jpg_224x340.jpg",
							"w": 320,
							"h": 488
						},
						"type": 2,
						"sale": 0,
						"title": "原宿BF风个性卡通印花反光防风衣连帽棒球服外套",
						"cfav": 0,
						"price": "98.00",
						"tradeItemId": 502041365,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥296.70",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltbkg",
						"link": "shopdetail.jsp#?1gltbkg?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/upload_41a8ag0fkehl3d59cek23f1613k1k_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "春秋新款韩版学院风宽松BF风破洞背带裤牛仔长裤乞丐磨破连体裤",
						"cfav": 0,
						"price": "89.01",
						"tradeItemId": 502049356,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥196.60",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glst1i",
						"link": "shopdetail.jsp#?1glst1i?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://d01.res.meilishuo.net/pic/_o/29/65/dde958077a18844c9495d7bdd0b2_640_832.c5.jpg_ea7a4837_s3_224_340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "秋季韩版 欧根纱拼接针织上衣",
						"cfav": 0,
						"price": "196.60",
						"tradeItemId": 502037351,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥130.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt0te",
						"link": "shopdetail.jsp#?1glt0te?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/o64ydc_0j7ei0kde53kdie8ij89kjklk90kh_646x850.jpg_224x340.jpg",
							"w": 320,
							"h": 422
						},
						"type": 2,
						"sale": 0,
						"title": "饰恩包包女生书包潮印花双肩包包休闲时尚新款铆钉学生书包旅行背",
						"cfav": 0,
						"price": "130.00",
						"tradeItemId": 502042389,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥80.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1gltg40",
						"link": "shopdetail.jsp#?1gltg40?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/923563101_26dhk502h125185k5a6a0c6625e78_640x960.jpg_224x340.jpg",
							"w": 320,
							"h": 480
						},
						"type": 2,
						"sale": 0,
						"title": "韩国大东门蓝色棉麻做旧流苏超长超大学生防晒围巾披肩两用女",
						"cfav": 0,
						"price": "80.00",
						"tradeItemId": 502052300,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}, {
						"orgPrice": "￥180.00",
						"acm": "2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"iid": "1glt2a6",
						"link": "shopdetail.jsp#?1glt2a6?acm=2.ms.2_4.0.5806.yUhpUiomJS7.t_0",
						"itemType": 5,
						"cparam": null,
						"itemMarks": "98",
						"show": {
							"img": "http://s2.mogucdn.com/p2/160819/984491724_00h64ahkadihflg8c4g86bce8k8i6_640x832.jpg_224x340.jpg",
							"w": 320,
							"h": 416
						},
						"type": 2,
						"sale": 0,
						"title": "问童子Mr Lonely 单身狗公仔毛绒创意男女生日朋友礼物",
						"cfav": 0,
						"price": "90.00",
						"tradeItemId": 502043339,
						"ptpC": "_mb_mls_0_pc-new_noab-noab",
						"lefttop_taglist": [],
						"leftbottom_taglist": []
					}],
					"ptpPartC": "_mb_mls_0_pc-new_noab-noab",
					"filter": {
						"title": "美丽说pc上新图墙",
						"list": [{
							"title": "最新",
							"sort": "new",
							"style": null,
							"type": "sort"
						}, {
							"title": "销量",
							"sort": "sell",
							"style": null,
							"type": "sort"
						}, {
							"title": "流行",
							"sort": "pop",
							"style": null,
							"type": "sort"
						}, {
							"title": "价格",
							"sort": null,
							"style": {
								"desc": "price_desc",
								"asc": "price_asc"
							},
							"type": "sortDesc"
						}]
					}
				}
			};
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
		<script src="__newtown\im_web\assets\common\openim\index.js"></script>
		<script src="pc\~page\select\dailynew base.bin?1607191228.25"></script>
		<script>
			fml.use('page/select/dailynew');;
			fml.use('base');;
			fml.iLoad();
		</script>
		<script type="text/javascript" src="__static\logger\0.1.8\logger.js"></script>
	</body>

</html>
