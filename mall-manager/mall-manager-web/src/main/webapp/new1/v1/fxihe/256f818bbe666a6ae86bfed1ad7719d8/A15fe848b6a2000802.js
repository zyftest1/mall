//# sourceMappingURL=index.js.map

$(function(tip){function _switchStatus(e){var o={success:"",error:"",protofunc:""},t=[];switch(e.model){case"关注":o.success="关注成功",o.error="已关注",o.protofunc="addfollow",t.push(collectPost.addfollow(e.userId));break;case"领券":case"关注领券":o.success="成功领取",o.error="您已领取此优惠券",o.protofunc="getCoupon",t.push(collectPost.addfollowAndgetCoupon(e.proId,e.shopId||""));break;case"收藏":o.success="收藏成功",o.error="已收藏",o.protofunc="collectShop",t.push(collectPost.collectShop(e.shopId));break;case"锚点":var a=e.txt,r=$('.J_in_Follow[data-txt="'+a+'"]');$(window,document).scrollTop(r.closest(".module_row").offset().top),window.detePtp&&window.detePtp.triggerLog("anchor",a),lock=!0}return t.length>0?void $.when.apply($,t).always(function(){if("success"==arguments[1]){var e=arguments[0];callBack(e,o)}else"error"==arguments[1]&&tip.show({text:"服务繁忙，请稍后尝试",duration:2e3,callback:function(){lock=!0}})}):!1}function login(){if(ua.isWap)window.location.href=ua.isNative?"mgj://login?a=1":"http://m.mogujie.com/x5/login?redirect_url="+window.location.href;else{var e="http://www.mogujie.com/login?refer="+encodeURIComponent(window.location.href);window.location.href=e}}function callBack(e,o){var t="",a=null;switch(e.status.code){case 1001:t=o.success;break;case 1002:case 1022:login();break;case 1003:case 1032:t=o.error;break;case 1004:t="已领完";break;case 1005:t="操作频繁，请稍后尝试";break;case 4004:t=e.status.msg;break;default:t=e.status.msg}t&&(ua.isWap?tip.show({text:t,duration:2e3,callback:function(){lock=!0,a&&"function"==typeof a&&a()}}):$.alert(t,function(){lock=!0,a&&"function"==typeof a&&a()}))}var lock=!0,index=0,parentDom;$(".mod_row").on("click","a.anchor",function(ev){var $self=$(this),_href=decodeURIComponent($self.attr("href")).replace(" ","");if(parentDom=$self.parents(".module_row"),_href&&/{([,]*\w*\:(\w|[\u4e00-\u9fa5])*)*}/.test(_href)&&!$(ev.target).hasClass("anchor_del")){if(!lock)return!1;lock=!1;var _arr=_href.match(/(\w|[\u4e00-\u9fa5])+(?=[,|}])/g),temp=0,matchArr=[];if(_arr&&"object"==typeof _arr&&_arr.length){for(;temp<_arr.length;temp++){var storeStr=_arr[temp];_href=_href.replace(storeStr,'"'+storeStr+'"')}matchArr=_href.match(/{([,]*\w*\:['"]+(\w|[\u4e00-\u9fa5])*['" ]+)*}/);var _json=eval("("+matchArr[0]+")");return _switchStatus(_json),!1}return lock=!0,!0}return lock=!0,!0});var collectPost={addfollow:function(e){return $.ajax({url:"http://www.mogujie.com/x6/follow/addfollow",data:{uid:e},type:"GET",dataType:"jsonp"})},addfollowAndgetCoupon:function(e,o){return $.ajax({url:"http://www.mogujie.com/act/req/getCoupon",data:{proId:e,shopId:o},type:"GET",dataType:"jsonp"})},collectShop:function(e){return $.ajax({url:"http://www.mogujie.com/x6/shop/"+e+"/collectShop",data:{isCollected:1,noCancel:1},type:"GET",dataType:"jsonp"})}},u=window.navigator.userAgent.toLocaleLowerCase(),ua={isWap:$(".page_type_h5")&&$(".page_type_h5").length>0,isNative:u.indexOf("mogujie")>-1&&-1==u.indexOf("nonative")}});
//# sourceMappingURL=index.js.map



define("wall-item.tpl",[],function(){return'	{{?it.v}}	\n		<div class="item-wrap rec-show-log">\n			<a data-ext-acm="{{=it.v.acm}}" data-log-index="{{= it.index }}" data-log-content="{{= it.v.acm }}" class="item-goods show-log-item" href="{{= it.v.item_url}}">\n				<div class="lazy-load-img img-box">\n					<img src="{{=it.v.image}}">\n					<span class="mark"></span>\n				</div>\n				<div class="sale-info">\n					<div>\n						<span class="price">￥{{= it.v.discountPrice}}</span>\n						<span class="orgin-price">￥{{= it.v.price}}</span>\n					</div>\n					<div class="title">{{=it.v.title}}</div>	\n				</div>\n			</a>\n		</div>\n	{{?}}'}),require(["components/waterfall","wall-item.tpl"],function(a,t){function n(a){var t=a.split("&"),n={};return $(t).each(function(a,t){var i=t.split("=");n[i[0]]=i[1]}),n}var i=$(".MCUBE_MOD_ID_82710"),e=i.find(".sourceKey").val(),l=i.find(".custom-param").val(),c={},o=function(t){waterfall=a.init({el:$(".wall-wrap"),wrapEl:$(".module-wrap").length?$(".module-wrap"):$(window),tmpl:t.itemTpl,url:t.url,data:t.data,dataName:"data.list",metaDataName:"data",colNum:4,colGap:"0 0",onFetchSuccess:function(){waterfall.getParam("rawData").data.isEnd&&waterfall.lock()},onLayoutFinished:function(){MoGu&&MoGu.dynamicImage&&MoGu.dynamicImage.checkImages()}}).start()};c={url:"http://mce.mogucdn.com/jsonp/get/3",data:$.extend({pid:e},n(l)),itemTpl:t},o(c),$(document).on("waterfall_repaint",function(a,t){c=$.extend(c,t),$(".wall-wrap").jsp(""),waterfall&&waterfall.destroy(),o(c)})});
//# sourceMappingURL=index.js.map
