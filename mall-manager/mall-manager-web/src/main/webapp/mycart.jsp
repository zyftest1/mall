<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false" %>
<html>

<head>
	<meta charset="UTF-8">

	<meta http-equiv="Cache-Control" content="no-transform ">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>我的购物车</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<meta name="copyright" content="meilishuo.com">
	<link rel="stylesheet" type="text/css" href="pc\css\base.css?1607170150.25">

	<link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml">
	<link rel="icon" href="http://s16.mogucdn.com/p1/160614/idid_ifrtgzddgm3dmnjshezdambqhayde_49x48.png" type="image/x-icon">

	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<script>
		curl = {
			apiName: 'require'
		};
		var MOGU = {};
		var MoGu = {};
	</script>

<%--	<link href="css\index.css-dbb86485.css" rel="stylesheet" type="text/css">--%>
	<link href="css\iconfont\iconfont.css" rel="stylesheet">
	<link href="css\common.css" rel="stylesheet">
	<link href="css\cart.css" rel="stylesheet">
	<link href="__newtown\trade_cart_web\assets\mls-pc\pages\cartList\index.css-005591bf.css" rel="stylesheet" type="text/css">

<%--	<script type="text/javascript" src="webjars/jquery/3.4.1/.jqueryjs"></script>--%>
<%--	<script type="text/javascript" src="js\pkg-pc-base.js-beb518b8.js"></script>--%>

	<%--		<style>--%>
	<%--			.mydesign{--%>
	<%--				position: absolute;--%>
	<%--				top: 30%;--%>
	<%--				left: 35%;--%>
	<%--				margin: -150px 0 0 -200px;--%>
	<%--				width: 1000px;--%>
	<%--				height: 500px;--%>
	<%--				border: 1px solid red;--%>
	<%--			}--%>
	<%--		</style>--%>
	<style>
		.thdesign{
			width: 200px;
			height: 80px;
			bgcolor:"#F0FFFF";
		}
	</style>
	<style>
		.table_dd{
			bgcolor:"#F0FFFF";
		}
	</style>
	<style>
		.meilili{
			padding: 40px 0;
			text-align: center;
			position:absolute;
			left:800px;
			bottom:0;
		}
	</style>
	<style type="text/css">
		input.aa{
			border: none;
			background-color: #F4F4F4;
			width:50px;
			height: 30px;
		}
		span.bb{
			font-size: 15px;
		}
	</style>
</head>

<body>



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
<div class="cart-header wrapper">
	<div class="logo">
		<a href="index.do"><img src="pic\bs-logo.png" alt="logo" style="width: 100px;height:100px"></a>
	</div>
	<div class="step-box">
		<div class="row">
			<div class="step first active col-3">
				<span class="num">1</span><span class="line"></span><span class="label">我的购物车</span>
			</div>
			<div class="step col-3">
				<span class="num">2</span><span class="line"></span><span class="label">确认订单信息</span>
			</div>
			<div class="step col-3">
				<span class="num">3</span><span class="line"></span><span class="label">选择支付方式</span>
			</div>
			<div class="step last col-3">
				<span class="num">4</span><span class="line"></span><span class="label">完成付款</span>
			</div>
		</div>
	</div>
</div>

<div id="body_wrap">
	<div class="wrapper">
		<table class="cart-table" id="tabname">
			<thead>
			<tr class="hd">
				<th width="30px" class="first"><label class="check"><input id="checkall" type="checkbox" name="all"><span>全选</span></label></th>
				<th width="430px">商品名称</th>
				<th width="180px">单价</th>
				<th width="190px">数量</th>
				<th width="180px">小计</th>
				<th width="190px">操作</th>
			</tr>
			</thead>
			<tbody>
            <c:forEach items="${bsShoppingCarList}" var="bsShoppingCar">
                <tr class="goods">
                    <td class="first"><div class="check"><input type="checkbox" name=""></div></td>
                    <td>
                        <div class="info-box">
                            <img src="${bsShoppingCar.picture}" alt="">
                            <div class="info">
                                <div class="name">${bsShoppingCar.describe}</div>
                                <div class="meta"><span>黑色</span><span>${bsShoppingCar.size}</span></div>
                            </div>
                        </div>
                    </td>
                    <td>￥<span class="unitprice">${bsShoppingCar.price}</span></td>
                    <td>
                        <div class="mod-numbox cart-numbox" data-max="30">
                            <span class="count-minus"></span>
                            <input class="count-input" value="${bsShoppingCar.quantity}" type="text" name="num" id="quantity">
                            <span class="count-plus"></span>
                        </div>
                    </td>
                    <td class="txt-error">￥<span class="price">${bsShoppingCar.price*bsShoppingCar.quantity}</span></td>
                    <td align="center" valign="middle">
                        <a href="/car.do?_method=deleteCar&carID=${bsShoppingCar.carID}&id=${sessionScope.bsUserAccount.ID}&addID=${requestScope.addID}">删除</a>
                    </td>
                </tr>
            </c:forEach>
			</tbody>
		</table>
		<div class="cart-total-box">
			<div class="cart-total">
				<div class="fl">
					<div class="back"><a href="/index.do">继续购物</a></div><div class="count">共 <span class="num" id="totalNum">1</span> 件商品， 已选择 <span class="num" id="selectedNum">1</span> 件</div>
				</div>
				<div class="fr">
					<div class="price">
<%--                        <a class="btn btn-default" href="/bsAddress.do?_method=address&userId=${sessionScope.bsUserAccount.ID}&addID=${requestScope.addID}" role="button" style="margin-right: 30px">选择地址</a>--%>
                        合计（不含运费）：<span id="totalMoney"></span>元
					</div>
					<a class="go-account ui-btn-theme"  onclick="succ()">去结算</a>
				</div>
			</div>
		</div>
	</div>

<%--	<div class="mydesign">--%>

<%--		<table class="table table-hover" id="tabname">--%>
<%--			<tbody>--%>
<%--			<c:forEach items="${bsShoppingCarList}" var="bsShoppingCar">--%>
<%--				<tr>--%>
<%--					<td align="center" valign="middle"><img src="${bsShoppingCar.picture}" style="width: 60px;height: 80px"></td>--%>
<%--					<td align="center" valign="middle">${bsShoppingCar.describe}</td>--%>
<%--					<td align="center" valign="middle">${bsShoppingCar.price}</td>--%>
<%--					<td align="center" valign="middle">${bsShoppingCar.quantity}</td>--%>
<%--					<td align="center" valign="middle">--%>
<%--						<a href="/car.do?_method=deleteCar&carID=${bsShoppingCar.carID}&id=${sessionScope.bsUserAccount.ID}&addID=${requestScope.addID}">删除</a>--%>
<%--					</td>--%>
<%--				</tr>--%>
<%--			</c:forEach>--%>
<%--			</tbody>--%>
<%--		</table>--%>
<%--		<div class="form-group">--%>
<%--			<div class="col-sm-offset-2 col-sm-10" style="margin-top:150px;margin-left: 950px" >--%>
<%--				<span class="bb">应付金额：</span><input type="text" value="" class="aa" id="total" >--%>
<%--				<a class="btn btn-default" href="/bsAddress.do?_method=address&userId=${sessionScope.bsUserAccount.ID}&addID=${requestScope.addID}" role="button" style="margin-right: 30px">选择地址</a>--%>
<%--				<a class="btn btn-default"  onclick="succ()" role="button" style="">立即支付</a>--%>
<%--			</div>--%>
<%--		</div>--%>
<%--		</form>--%>
<%--	</div>--%>
</div>
<!--脚部-->
<%--<div class="fatfooter">--%>
<%--    <div class="meilili">--%>
<%--        <p title="mofa015027">--%>
<%--            <a href="index.jsp" target="_blank">Beauty Show</a>--%>
<%--            © 2016 Meilishuo.com,All Rights Reserved.--%>
<%--        </p>--%>
<%--        <div class="icons">--%>
<%--            <a class="vs" href="javascript:;"></a>--%>
<%--            <a class="mc" href="javascript:;"></a>--%>
<%--            <a class="up" href="javascript:;"></a>--%>
<%--            <a class="pa" href="http://bank.pingan.com/index.sjsp" target="_blank"></a>--%>
<%--            <a class="kx" href="https://ss.knet.cn/verifyseal.dll?sn=e14090533010053532r3hn000000&ct=df&a=1&pa=500267&tp=1.0.20.0.28.KXYH9AB" target="_blank"></a>--%>
<%--            <a class="pc" href="http://www.pingpinganan.gov.cn/" target="_blank"></a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>



<script type="text/javascript" src="js\index.js-3052ac85.js"></script>

<script type="text/javascript" src="__newtown\trade_cart_web\assets\mls-pc\pages\cartList\index.js-44a0103f.js"></script>

<script type="text/javascript">
	function succ() {
		var s = $("#totalMoney").text()

		// alert(s)

				<%--window.location.href="/bsAddress.do?_method=success&ful="+s+"&addID=${requestScope.addID}";--%>
		window.location.href="/bsAddress.do?_method=address&userId=${sessionScope.bsUserAccount.ID}&ful="+s;
	}
	// function tableAdd(tab,total,d) {
	// 	var s = 0;
	// 	var tr = $(tab).find("tr");
	// 	for (var i = 1; i < tr.length; i++)
	// 		s += parseFloat(tr.eq(i).find("td").eq(d).text()) || 0;
	// 	$(total).val(s);
	// }
	// $(function(){
	// 	tableAdd("#tabname","#total",2);//这里的1是求和的列号，你每次修改或增加一行数据之后都要再次调用下这个函数
	// });

</script>

</body>
<script src="js\jquery.js"></script>
<link rel="stylesheet" href="js\icheck\style.css">
<script src="js\icheck\icheck.min.js"></script>
<script src="js\global.js"></script>
<script>
	/*商品数量操作*/
	function goodsCount(o){
		if(!(o instanceof Object)) var o={};
		var inputCell = o.inputCell || ".count-input",
				minusCell = o.minusCell || ".count-minus",
				plusCell = o.plusCell || ".count-plus",
				disClass = o.disClass || "disabled";
		return this.each(function(){
			var $wrap = $(this),
					$input = $(inputCell,$wrap),
					$minus = $(minusCell,$wrap),
					$plus = $(plusCell,$wrap),
					maxnum=parseInt($wrap.attr('data-max')) || false,
					minnum=$wrap.attr('data-min') || 1,
					initnum=$input.val() || minnum;
			/*初始*/
			$input.val(initnum);
			checkIlegal();
			function checkIlegal(){
				var value =parseInt($input.val());

				//
				if (maxnum&&value>maxnum) {
					$input.val(maxnum);
				}
				else if (value<minnum) {
					$input.val(minnum);
				}
				if(value<=minnum){
					$minus.addClass(disClass);
				}else{
					$minus.removeClass(disClass);
				}
				if (value>=maxnum) {
					$plus.addClass(disClass);
				}else {
					$plus.removeClass(disClass);
				}

			}
			function checknull() {
				var value =$input.val();
				if(value === "" || value === "0"){
					$input.val(minnum);
				}
			}
			$input.keyup(function(evt){
				var value = $(this).val();
				var newvalue = value.replace(/[^\d]/g,"");
				$(this).val(newvalue);
				checknull();
			});
			$input.blur(function(){
				checknull();
				checkIlegal();
			})

			$minus.click(function(){
				minus();
				checkIlegal();
			});

			$plus.click(function(){
				add();
				checkIlegal();
			});

			function add () {
				var value = $input.val();
				var plus = parseInt(value)+1;
				$input.val(plus);
			}
			function minus () {
				var value = parseInt($input.val());
				var minus = value-1;
				$input.val(minus);
			}
		});
	}
	$.fn.goodsCount = goodsCount;
</script>
<script>
	$(function () {

		$('.mod-numbox').goodsCount(); //数量加减
		$('.check input').iCheck({
			checkboxClass: 'sty1-checkbox'
		});

		+function () {
			var box=$('.cart-table');
			function caculate () {
				var selectNum=0,
						totalNum=0,
						totalPrice=0;
				checkNum=0,
						itemlen=box.find('.goods:not(.goods-useless)').length;
				$('.goods:not(.goods-useless)').each(function () {
					var $check=$(this).find('.check input'),
							$price=$(this).find('.price'),
							$count=$(this).find('.count-input'),
							unitp=parseFloat($(this).find('.unitprice').text()),
							num=parseInt($count.val());
					var price=unitp*num;
					$price.text(price.toFixed(2)); //设置单个商品总价
					totalNum+=num;
					if ($check.is(':checked')) {
						selectNum+=num;
						totalPrice+=price;
						checkNum+=1;
					}

				});
				$('#selectedNum').text(selectNum);
				$('#totalNum').text(totalNum);
				$('#totalMoney').text(totalPrice.toFixed(2));
				if (itemlen==0) {return false;}
				if (checkNum<itemlen) {
					$('#checkall').iCheck('uncheck');
				}
				else {
					$('#checkall').iCheck('check');
				}
			}
			function shopaccess () {
				$('.shop').each(function(index, el) {
					var next=$(this).parents('tbody').next('tbody');
					if (next.find('.goods:not(.goods-useless)').length<=0) {
						$(this).find('.check input').iCheck('disable');
						return;
					}
				});
			}
			function shopcheck (obj) {
				var shop=obj.prev('tbody').find('.shop'),
						goods=obj.find('.goods:not(.goods-useless)'),
						len=goods.length,
						cur=0;
				goods.each(function(index, el) {
					if ($(this).find('.check input').is(':checked')) {
						cur++;
					}
				});
				if (cur==len) {
					shop.find('.check input').iCheck('check')
				}
				else {
					shop.find('.check input').iCheck('uncheck')
				}
			}

			$('.count-input').on('change blur',function () {
				caculate();
			});
			$('.mod-numbox span').on('click',function () {
				caculate();
			});
			box.find('.goods .check input').on('ifToggled',function () {
				caculate();
				var gbox=$(this).parents('tbody');
				shopcheck(gbox);
			});
			$('#checkall').on('ifClicked',function () {
				//全选
				if ($(this).is(':checked')) {
					$('.check input').iCheck('uncheck');
				}
				else {
					$('.check input').iCheck('check');
				}
				caculate();
			})

			box.find('.shop .check input').on('ifClicked',function () {
				//店铺全选

				var curItem=$(this).parents('tbody').next('tbody').find('.goods');

				if ($(this).is(':checked')) {
					curItem.find('.check input').iCheck('uncheck');
				}
				else {
					curItem.find('.check input').iCheck('check');
				}
				caculate();
			});
			//删除
			$('.goods .del').on('click',function () {
				var self=$(this),
						shop=self.parents('tbody').prev('tbody'),
						gbox=self.parents('tbody');
				self.parents('.goods').remove();
				var len=gbox.find('.goods').length;
				if (len<=0) {
					shop.remove();
				}
				caculate();
				shopaccess();
				shopcheck(gbox);
			});
			// $('#delall').on('click',function () {
			//    $('.shop:not(.goods-useless) .check input').each(function () {
			//        if ($(this).prop('checked')==true) {
			//            $(this).parents('.cart-item').remove();
			//        }
			//    });
			//    caculate();
			//    shopaccess()
			// });

			box.find('.check input').iCheck('check',true);//初始化全选测试

			caculate();
			shopaccess();
		}();


		//结算固定显示
		$(window).on('load resize scroll',function () {
			var bar=$('.cart-total'),
					barH=bar.outerHeight(),
					barWrap=bar.parent(),
					otop=barWrap.offset().top,
					oleft=barWrap.offset().left,
					sTop=$(this).scrollTop(),
					wh=$(this).height();
			if (sTop+wh-barH<otop) {
				bar.addClass('fixed');
				var left2=oleft-$(this).scrollLeft()
				bar.css('left',left2);
			}
			else {
				bar.removeClass('fixed');
			}
		});
	});
</script>

</html>