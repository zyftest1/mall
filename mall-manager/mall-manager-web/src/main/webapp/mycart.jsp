﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

	<head>
		<script type="text/javascript">
			window.__trace__headstart = +new Date;
			window.__server__startTime = 1471487722297;
			window.__token = "KwNcAe6R0OEM01bkBt9QueLZ1n/OJxnmxeRttnw/vr8=";
		</script>
		<meta charset="UTF-8">

		<meta http-equiv="Cache-Control" content="no-transform ">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>我的购物车</title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<meta name="copyright" content="meilishuo.com">

		<link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml">
		<link rel="icon" href="http://s16.mogucdn.com/p1/160614/idid_ifrtgzddgm3dmnjshezdambqhayde_49x48.png" type="image/x-icon">

		<script>
			curl = {
				apiName: 'require'
			};
			var MOGU = {};
			var MoGu = {};
		</script>

		<link href="css\index.css-dbb86485.css" rel="stylesheet" type="text/css">

		<link href="__newtown\trade_cart_web\assets\mls-pc\pages\cartList\index.css-005591bf.css" rel="stylesheet" type="text/css">

		<script type="text/javascript" src="js\pkg-pc-base.js-beb518b8.js"></script>

		<script type="text/javascript">
			var MOGU_DEV = 0;

			if(window.require) {
				require.config({
					domain: 0
				});
			}

			MOGUPROFILE = {};

			//性能打点数据检测
			window.__trace__headendt = +new Date;
			(function() {
				window.__trace__domready = null;
				window.__trace__ladingendt = null;
				if(document.readyState) {
					function setDomOperation() {
						if(document.readyState == 'interactive') {
							window.__trace__domready = +new Date();
						} else if(document.readyState == 'complete') {
							window.__trace__ladingendt = +new Date();
						}
					}
					setDomOperation();
					document.onreadystatechange = setDomOperation;
				}
			})();
		</script>
	</head>

	<body>

		<script type="text/javascript">
			/**
			 ** for layout 960
			 **/
			(function() {
				var wWidth = $(window).width();
				if(wWidth < 1212) {
					$('body').addClass('media_screen_960');
				} else {
					$('body').addClass('media_screen_1200');
				}
				//initTime for log 判断对象是否存在
				window.MoGu && $.isFunction(MoGu.set) && MoGu.set('initTime', (new Date()).getTime());

				var ua = navigator.userAgent;
				// 判断是否是ipad
				var is_plat_ipad = ua.match(/(iPad).*OS\s([\d_]+)/);
				if(is_plat_ipad) {
					$('body').addClass('media_ipad');
				}
				// 判断是否是ipadApp
				var is_plat_ipadApp = ua.indexOf('MeilishuoHD') >= 0 || location.href.indexOf('_atype=ipad') >= 0;
				if(is_plat_ipadApp) {
					$('body').addClass('media_ipad_app');
					// 隐藏头尾
					$('body').append('<style type="text/css">.header_2015,.header_nav,.foot .foot_wrap{display: none;}.foot{height: 0;background: none;}.back2top_wrap{height:0;width:0;overflow:hidden;opacity:0;}</style>');
					// 移除购物车，返回顶部
					setTimeout(function() {
						$('.back2top_wrap').remove();
					}, 1000)
				}
			})();
		</script>

		<div class="mgj_rightbar" data-ptp="_sidebar"></div>
		<div id="header" class="J_sitenav header_2015" data-ptp="_head">
			<div class="wrap clearfix"></div>
		</div>
		<!-- 中间区域 -->
		<!--<div class="header_mid clearfix">
    <div class="wrap">
        <a rel="nofollow" href="http://www.mogujie.com" class="logo" title="蘑菇街首页"></a>
                        <div class="mid_fr">
            <div class="nav_mogu_qrcode">
                <img width="70" height="70" src="http://s18.mogucdn.com/p1/150929/upload_iezggyjwgrrdgztfgmzdambqmmyde_300x300.png" alt="蘑菇街客户端下载"/>
                <p>蘑菇街客户端</p>
            </div>
        </div>
    </div>
</div>
-->

		<div id="body_wrap">
			<div class="g-header clearfix">
				<div class="g-header-in wrap clearfix">
					<div class="process-bar">
						<div class="md_process md_process_len4">
							<div class="md_process_wrap md_process_step1_5">
								<div class="md_process_sd"></div>
								<i class="md_process_i md_process_i1">
                            1                <span class="md_process_tip">购物车</span>
                        </i>
								<i class="md_process_i md_process_i2">
                            2                <span class="md_process_tip">确认订单</span>
                        </i>
								<i class="md_process_i md_process_i3">
                            3                <span class="md_process_tip">支付</span>
                        </i>
								<i class="md_process_i md_process_i4">
                            <img src="//www.mogujie.com/img/pay/right.png" width="23" height="23" alt="">
                            <span class="md_process_tip">完成</span>
                        </i>
							</div>
						</div>
					</div>
					<div class="logo logo-cart"></div>
				</div>
			</div>

			<script type="text/template" id="tpl_cart_tab">

				<div class="g-wrap wrap">
					{{?it && it.tabItemNum}}
					<ul class="clearfix cart_slide pb20" id="cartSlide">
						<li>
							<a href="javascript:;" url="0" class="mr10 cart_slide_item cartSlideItemAll cart_slide_item_cur  {{?it.tabItemNum.allItemNum<=0}}cart_slide_not_allowed{{?}}">
								全部商品 (<span class="num">{{=it.tabItemNum.allItemNum}}</span>)
							</a>
						</li>
						<li class="cartslide-line">|</li>
						<li>
							<a href="javascript:;" url="1" class="mr10 cart_slide_item cartSlideItemCut {{?it.tabItemNum.promotionItemNum<=0}}cart_slide_not_allowed{{?}}">
								优惠 (<span class="num">{{=it.tabItemNum.promotionItemNum}}</span>)
							</a>
						</li>
						<li class="cartslide-line">|</li>
						<li>
							<a href="javascript:;" url="2" class="mr10 cart_slide_item cartSlideItemLess  {{?it.tabItemNum.stockNotEnoughItemNum<=0}}cart_slide_not_allowed{{?}}">
								库存紧张 (<span class="num">{{=it.tabItemNum.stockNotEnoughItemNum}}</span>)
							</a>
						</li>
					</ul>
					{{?}}

					<!-- 不为空的情况 -->

					<div class="cart_wrap cart_nobdbtm">

						<div class="cart_page_wrap" id="cartPage">

						</div>

						<div class="cart_page_wrap" id="cartEmptyPage" style="display:none;">
							<div class="cart_empty">
								<div class="cart_empty_icon"></div>

								<h5 class="mb20">您的购物车还是空的，赶快去挑选商品吧！</h5>
								<ul class="cart_empty_list">
									<li>去看看大家都喜欢的
										<a href="#/guang/hot" class="cart_red cart_uline">最热</a>
									</li>
									<li>去看看正在折扣中的优品
										<a href="#/tuan/" class="cart_red cart_uline">团购</a>
									</li>
								</ul>
							</div>
						</div>

					</div>

					{{?it && it.totalItemNum > 0}}

					<div class="cart_paybar wrap" id="cartPaybar">
						<a href="javascript:;" class="cart_paybtn fr cart_paybtn_disable" id="payBtn">去付款</a>

						<div class="cart_paybar_info_cost cart_deep_red cart_bold cart_font26 cart_money fr goodsSum">¥ </div>
						<div class="cart_paybar_info cart_pregray fr">
							共有 <span class="cart_deep_red goodsNum">0</span> 件商品，总计：
						</div>

						<!-- <div class="act-bottom-event fr">
                     <img class="event-img" src="" />
                     <span></span>
                             <span id="J_ActCountdown" data-remaining="">
                                 <span class="an"></span>天<span
                                         class="an"></span>小时<span
                                         class="an"></span>分<span
                                         class="an"></span>秒
                             </span>
                 </div> -->

						<div class="cart_paybar_vmbox">
							<input type="checkbox" name="s_all" class="s_all_slave cart_vm" id="s_all_f" />

							<label for="s_all_f" class="mr10">全选</label>

							<a href="javascript:;" class="mr10 cart_uline cart_pregray" id="cartRemoveChecked">删除</a>
							<a href="javascript:;" class="mr10 cart_uline cart_pregray" id="cartRemoveUnuse">清空失效商品</a>
						</div>

					</div>

					<form action="http://buy.meilishuo.com/mls/buy" id="postform" method="POST">
						<input type="hidden" name="postdata" id="postdata" />
						<input type="hidden" name="mtk" value="" />
						<input type="hidden" name="ptp" id="ptpdata" />
					</form>

					{{?}}
				</div>
			</script>
			<script type="text/template" id="tpl_cart_mcart">
				<input type="hidden" name="shop_domain" id="shop_domain" value="" />
				<input type="hidden" name="data_props" id="data_props" value="" />
				<input type="hidden" id="coudan_type" value="{{?it.coudanOpen}}1{{??}}0{{?}}" />

				<!-- 表格 -->
				<table class="cart_table" id="cartOrderTable">
					<thead>
						<tr>
							<th class="cart_table_check_wrap cart_alleft pl10">
								<input type="checkbox" name="s_all" class="s_all tr_checkmr" id="s_all_h" />
								<label for="s_all_h">全选</label>
							</th>
							<th class="cart_table_goods_wrap">商品</th>
							<th class="cart_table_goodsinfo_wrap">商品信息</th>
							<th>单价(元)</th>
							<th class="cart_table_goodsnum_wrap">数量</th>
							<th class="cart_table_goodssum_wrap">小计(元)</th>
							<th class="cart_table_goodsctrl_wrap">操作</th>
						</tr>
					</thead>
					<tbody>
						{{~it.shopGroup:shop:index}} {{var flag; $.each(shop.cartItemGroup,function(i,o){ }} {{if(!o.sku.inValid){flag = false;return false;} else{flag = true;} }} {{ }); }}

						<tr id="{{?shop.shopInfo}}shoptit_{{=shop.shopInfo.shopIdEsc}}{{?}}" data-bid="{{?shop.shopInfo}}{{=shop.shopInfo.shopIdEsc}}{{?}}" data-sellerid="{{=shop.cartItemGroup[0].sku.sellerUserIdEsc}}" class="{{?!shop.shopInfo}}s_shopall{{?}}">
							<!-- id 是店铺id -->
							<td colspan="7" class="cart_group_head">
								<!-- data-bid 这里 店铺id -->
								{{?shop.shopInfo && shop.shopInfo.shopIdEsc}} {{ if(flag == false){ }}<input type="checkbox" class="s_shopall tr_checkmr" data-bid="{{?shop.shopInfo}}{{=shop.shopInfo.shopIdEsc}}{{?}}" name="s_shopall" data-sellerid="{{=shop.cartItemGroup[0].sku.sellerUserIdEsc}}" />{{ } }}

								<label for="" class="cart_lightgray">店铺：</label> {{?shop.shopInfo.shopIdEsc == '1qfnyw'}}
								<span>{{=shop.shopInfo.shopName}}</span> {{??}}
								<a href="shop.jsp#{{=shop.shopInfo.shopIdEsc}}" target="_blank" class="cart_hoverline">{{=shop.shopInfo.shopName}}</a>
								{{?}}
								<a href="javascript:;" data-shopid="{{=shop.shopInfo.shopIdEsc}}" class="mlstalk_widget_btn" data-toid="{{=MoGu.fn.url2id(shop.shopInfo.sellerUserIdEsc)}}">联系客服</a>
								{{?}} {{? !$.isEmptyObject(shop.shopRelatedTagBlock) }} {{ $.each(shop.shopRelatedTagBlock, function(i,o){ }}
								<img src="{{=o.image}}"> {{ }); }} {{?}}

								<!-- 有更多满减信息 -->
								{{? !$.isEmptyObject(shop.promotionRelatedTagBlock) }}
								<div class="cart_tip_red cart_hidetip" data-sellerid="{{= shop.shopInfo.sellerUserIdEsc}}">
									<div class="cart_tip_hd">
										<span>领取</span><i class="cart_icon_redarrow">√</i>
									</div>
									<div class="cart_hidden"></div>
								</div>
								<span class="cart_tip_red red">优惠券：</span>
								<ul class="discount cart_tip_red">
									{{ $.each(shop.promotionRelatedTagBlock, function(i,o){ }}
									<li><i></i>{{=o.text}}</li>
									{{ }); }}
								</ul>
								{{?}}
							</td>
						</tr>

						{{~shop.cartItemGroup:mitem}}

						<tr class="cart_mitem {{?mitem.sku.inValid}}outline{{?}}" data-cut="{{?mitem.disCountFee>0 && !mitem.sku.inValid}}true{{??}}false{{?}}" data-isless="{{?mitem.sku.stock<=5 && !mitem.sku.inValid}}true{{??}}false{{?}}" data-bid="{{?shop.shopInfo}}{{=shop.shopInfo.shopIdEsc}}{{??}}{{=mitem.sku.sellerUserIdEsc}}{{?}}" data-sellerid="{{=mitem.sku.sellerUserIdEsc}}" data-stockid="{{=mitem.sku.stockIdEsc}}" data-tradeitemid="{{=mitem.sku.itemIdEsc}}" data-ptps="{{=mitem.ptp}}" data-ptp="_shoppingcart" data-price="{{=mitem.sku.price}}">
							<td class="{{?mitem.sku.inValid}}cart_midcenter{{??}}vm{{?}} ">
								{{? mitem.sku.inValid}}
								<span class=" cart_bold cart_pregray outline-tip">失效</span> {{??}}
								<input type="checkbox" class="cart_thcheck" data-stockid="{{=mitem.sku.stockIdEsc}}" /> {{?}}
							</td>

							<td class="cart_table_goods_wrap">
								<!-- 商品 -->
								<a href="shopdetail.jsp#?{{=mitem.sku.itemIdEsc}}" target="_blank" class="cart_goods_img">

									<img class="cartImgTip" src="{{= it.getImgThumbnailUrl(mitem.sku.imgUrl,100,100)}}" width="78" height="78" alt="{{=mitem.sku.title}}" /> {{? !$.isEmptyObject(mitem.skuImageBottomTagBlock)}} {{ $.each(mitem.skuImageBottomTagBlock,function(i,o){ }} {{if(o.image){ }}<img class="event_tips" src="{{=o.image}}">
									<!-- 活动标 -->{{ } }} {{ }); }} {{?}}

								</a>
								<!-- 商品title -->
								<a href="shopdetail.jsp#?{{=mitem.sku.itemIdEsc}}{{?mitem.ptp}}?ptpfrom={{=mitem.ptp}}{{?}}" target="_blank" class="cart_goods_t cart_hoverline" title="{{=mitem.sku.title}}">
									{{=mitem.sku.title}}
								</a>

								<!-- 321活动提醒
                    <div class="event_tip_wrap">
                        <p class="event_tips">
                            <b><img src="" alt=""></b><span class="e_price">321活动提醒</span>
                        </p>
                    </div>-->

								<!-- 321活动提醒 end -->
								<p class="remind_btm">
									<!-- 降价信息 -->
									{{? !$.isEmptyObject(mitem.remindRelatedTagBlock)}} {{ $.each(mitem.remindRelatedTagBlock,function(i,o){ }}
									<span class="cut_infor mr5">{{=o.text}}</span> {{ }); }} {{?}}
								</p>
							</td>

							<td>
								{{$.each(mitem.sku.skuAttributes, function(ii,ss){ }}
								<p class="cart_lh20">{{=ss.key}}：{{=ss.value}}</p>
								{{ }); }}

							</td>

							<td class="cart_alcenter">
								<!-- 单价 -->
								{{?mitem.sku.price != mitem.sku.nowprice}}
								<p class="cart_lh20 cart_throughline cart_lightgray">{{=(mitem.sku.price / 100).toFixed(2)}}</p>
								<p class="cart_lh20 cart_bold cart_data_sprice" data-price="{{=(mitem.sku.nowprice / 100).toFixed(2)}}">
									{{=(mitem.sku.nowprice / 100).toFixed(2)}}
								</p>
								{{??}}
								<p class="cart_lh20 cart_bold cart_data_sprice" data-price="{{=(mitem.sku.nowprice / 100).toFixed(2)*10}}">
									{{=(mitem.sku.nowprice / 100).toFixed(2)}}
								</p>
								{{?}} {{?mitem.sku.price != mitem.sku.nowprice}}
								<p> <span class="cart_tip_yellow cart_tip_focuswidth">促销{{=(mitem.sku.nowprice / mitem.sku.price * 10).toFixed(2)}}折</span> </p>
								{{?}}
							</td>

							<td class="cart_alcenter">
								<!-- 数量 -->
								{{?mitem.sku.isInValid}}
								<div>
									<div class="cart_num cart_counter">
										<p class="cart_alcenter">
											<input type="hidden" class="cart_num_input" value="{{=mitem.number}}" />
										</p>
									</div>
								</div>
								{{??}}
								<div>
									<div class="cart_num cart_counter" data-stockid="{{=mitem.sku.stockIdEsc}}" data-stocknum="{{=mitem.sku.stock}}" data-timestamp="" data-ptp="{{=mitem.ptp}}">
										<input type="text" class="cart_num_input cart_bold" maxlength="3" value="{{=mitem.number}}" {{?mitem.isLimit}}readonly="readonly" {{?}}/> {{?!mitem.isLimit}}
										<span class="cart_num_add"></span>
										<span class="cart_num_reduce"></span> {{?}}
									</div>
								</div>
								{{?}} {{? !$.isEmptyObject(mitem.skuNumberRelatedTagBlock)}} {{ $.each(mitem.skuNumberRelatedTagBlock, function(i,o){ }}
								<p> <span class="cart_tip_yellow cart_w68">{{=o.text}}</span> </p>

								{{ }); }} {{?}}
							</td>

							<td class="cart_alcenter">
								<!-- 小计 -->
								<p class="cart_deep_red cart_font16 item_sum" data-unit="{{=mitem.sku.nowprice / 100}}" data-price="{{?mitem.isCanSell}}{{=mitem.sku.nowprice / 100}}{{??}}0.00{{?}}">
									{{?mitem.isCanSell}}{{=mitem.sku.nowprice / 100}}{{??}}0.00{{?}}
								</p>
							</td>

							<td class="cart_alcenter">
								<!-- 操作 -->
								<a href="javascript:;" class="cart_hoverline delete">删除</a>
							</td>
						</tr>
						{{~}} {{~}}
						<tr class="J_mundo m-undo">
							<td colspan="7">
								<div class="m-undo-wrap">成功删除 <span class="J_num">1</span> 件商品，如有误，可
									<a href="javascript:;" class="J_undo">撤销本次删除</a>
								</div>
							</td>
						</tr>

					</tbody>
				</table>
				<!-- 表格 end -->
			</script>
		</div>

		<div class="g-footer">
			<p title="mofa015027">
				<a href="index.jsp" target="_blank">美丽说</a>
				© 2016 Meilishuo.com,All Rights Reserved.
			</p>
			<div class="icons">
				<a class="vs" href="javascript:;"></a>
				<a class="mc" href="javascript:;"></a>
				<a class="up" href="javascript:;"></a>
				<a class="pa" href="http://bank.pingan.com/index.sjsp" target="_blank"></a>
				<a class="kx" href="https://ss.knet.cn/verifyseal.dll?sn=e14090533010053532r3hn000000&ct=df&a=1&pa=500267&tp=1.0.20.0.28.KXYH9AB" target="_blank"></a>
				<a class="pc" href="http://www.pingpinganan.gov.cn/" target="_blank"></a>
			</div>
		</div>

		<script type="text/javascript" src="js\index.js-3052ac85.js"></script>

		<script type="text/javascript" src="__newtown\trade_cart_web\assets\mls-pc\pages\cartList\index.js-44a0103f.js"></script>

	</body>

</html>