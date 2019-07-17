! function(e, t) {
	"object" == typeof exports && "object" == typeof module ? module.exports = t() : "function" == typeof define && define.amd ? define("mls-pc/pages/list/index", [], t) : "object" == typeof exports ? exports["mls-pc/pages/list/index"] = t() : e["mls-pc/pages/list/index"] = t()
}(this, function() {
	return function(e) {
		function t(n) {
			if(r[n]) return r[n].exports;
			var a = r[n] = {
				exports: {},
				id: n,
				loaded: !1
			};
			return e[n].call(a.exports, a, a.exports, t), a.loaded = !0, a.exports
		}
		var r = {};
		return t.m = e, t.c = r, t.p = "", t(0)
	}([function(e, t, r) {
		"use strict";
		var n = r(1);
		n.init()
	}, function(e, t, r) {
		"use strict";
		var n = r(2),
			a = r(3),
			o = r(6),
			i = r(5),
			s = r(7),
			d = r(8),
			l = r(9),
			c = function(e) {
				return e > 9 ? e : "0" + e
			},
			p = {
				init: function() {
					location.href.indexOf("from=pay") < 0 || this.open()
				},
				open: function(e) {
					if(!(void 0 === e && (e = $(".order-section").filter(".unpaid, .unconfirmed").eq(0), e.length <= 0))) {
						var t = {
								title: " ",
								lightBoxId: "lbOrderConfirm",
								contentHtml: this.getTpl(e),
								scroll: !1,
								isBgClickClose: !1,
								closeCallBack: function() {
									location.href = location.href.replace(/from=pay&?/, "")
								}
							},
							r = new i(t);
						r.init(), $("#lbOrderConfirm").on("click", ".mogutalk_btn", function() {
							r.close()
						})
					}
				},
				getTpl: function(e) {
					var t = e.data("payid"),
						r = e.hasClass("unpaid");
					return MoGu.ui.getTemplate(s.payTpl, {
						unpaid: r,
						payDone: "/mls/order/list4buyer",
						payChange: r ? "/mls/order/cashier?orderId=" + t : "http://www.meilishuo.com/trade/orderpay/transitionpay?orderId=" + t + "&outPayType=9"
					})
				}
			},
			m = {
				init: function() {
					var e = this;
					e.render(), p.init()
				},
				render: function() {
					var e = this,
						t = o.getQueryString("status") || "all",
						r = {
							buyerUserId: "",
							marketType: "market_meilishuo",
							page: o.getQueryString("page") || 1,
							pageSize: 10,
							status: t,
							orderPlatformCode: "PC",
							orderVisibleStatusCode: o.getQueryString("orderVisibleStatusCode") || ""
						};
					a.ajax({
						data: {
							data: JSON.stringify(r)
						},
						url: n.ORDER_LIST,
						type: "GET"
					}, function(t) {
						if("SUCCESS" == t.status.code) {
							var r = e.parseData(t.result),
								n = function(e) {
									if("" == e) return "";
									var t = new Date(1e3 * e),
										r = t.getFullYear(),
										n = c(t.getMonth() + 1),
										a = c(t.getDate()),
										o = r + "." + n + "." + a;
									return o
								};
							r.transTimeform = n;
							var o = function(e) {
								if("" == e) return "";
								var t = new Date(1e3 * e),
									r = c(t.getMonth() + 1),
									n = c(t.getDate()),
									a = r + "月" + n + "日";
								return a
							};
							r.transDateform = o, $("#orderWrap").jsp(MoGu.ui.getTemplate(d, r)), a.countdown.init(), e.bindEvents()
						} else "FAIL_BIZ_NOT_LOGIN" == t.status.code ? location.href = "./login.jsp" : "SESSION_INVALID" == t.status.code ? $.alert("亲～您还没有登录哦", function() {
							location.href = "./login.jsp"
						}) : $.alert(t.status.msg)
					})
				},
				bindEvents: function() {
					var e = this;
					$(".order-pay").click(function() {
						var e = ($(this).attr("payOrderId"), $(this).parents(".order-section"));
						p.open(e)
					}), $(".order-cancel").click(function(e) {
						a.openModal(e, {
							url: n.CLOSE_ORDER,
							data: {
								data: JSON.stringify({
									orderId: $(this).data("payid")
								}),
								marketType: "market_meilishuo"
							},
							msg: "亲，这么好的商品确定不要了吗？"
						})
					}), $(".order-remove").click(function(e) {
						a.openModal(e, {
							url: n.DELETE_CANCLEDORDER,
							data: {
								data: JSON.stringify({
									orderid: $(this).data("shopid")
								}),
								marketType: "market_meilishuo"
							},
							msg: "你确定要删除这笔订单吗？删除后你可在订单回收站找回,或永久删除"
						})
					}), $(".order-check-all").change(function() {
						$("input[name='checkbox']").attr("checked", this.checked)
					}), $("input[name='checkbox']").click(function() {
						$(".order-check-all").attr("checked", $("input[name='checkbox']").length == $("input[name='checkbox']:checked").length)
					}), $(".ui-tags-item").hover(function() {
						$(this).find(".ui-tag-text").toggleClass("ui-hide")
					}), $(".order-confirm").on("click", e.orderConfirm), $(".order-remind").on("click", e.orderRemind), $(".delivery-info").on("hover", e.deliveryInfo), $(".order-delete").on("click", e.orderDelete), $(".order-recover").on("click", function() {
						e.orderRecover.call(this, e)
					}), $(".order-delete-all").on("click", e.orderDeleteAll.bind(e)), $(".order-recover-all").on("click", e.orderRecoverAll.bind(e)), $(".pay-mls-old-alert").on("click", e.payMlsOldAlert)
				},
				parseData: function(e) {
					return e && e.buyerOrderList ? ($.each(e.buyerOrderList, function(e, t) {
						$.each(t.shopOrderList, function(e, t) {
							t.createdDate = a.formatDate(t.created), t.shopOrderOperations && t.shopOrderOperations.length > 0 && $.each(t.shopOrderOperations, function(e, r) {
								"opt_show_delivery_order" == r.operationName && t.shipExpressId && t.shipExpressName && (t.isShowDeliveryOrder = !0, t.showDeliveryOrderDesc = r.operationDesc)
							})
						});
						var r = t.shopOrderList[0],
							n = r.expiredTime;
						if(n && n > 0) {
							var o = +new Date / 1e3 >>> 0,
								i = n - o;
							i > 0 && (t.payOrder.timestampseconds = i, t.payOrder.timestamp = a.formatTime(i))
						}
						var s = "",
							d = !1,
							l = r.orderStatus;
						switch(l) {
							case "ORDER_CREATED":
								s = "待付款";
								break;
							case "ORDER_PAID":
								s = "待发货";
								break;
							case "ORDER_SHIPPED":
								s = "已发货";
								break;
							case "ORDER_COMPLETED":
								s = "交易完成", d = !0;
								break;
							case "ORDER_RECEIVED":
								s = "已收货", d = !0;
								break;
							case "ORDER_CLOSED":
								s = "交易关闭", d = !0;
								break;
							case "ORDER_CANCELLED":
								s = "交易取消", d = !0
						}
						if(t.payOrder.orderStatus = l, t.payOrder.orderStatusName = s, t.payOrder.isComplete = d, "YS" == r.orderTags && t.orderStageInfo) {
							t.payOrder.orderTags = r.orderTags;
							var c = "",
								p = "",
								m = t.orderStageInfo.stageStatus;
							switch(m) {
								case "UN_PRE_PAY":
									c = "待付定金", p = "-";
									break;
								case "WAITING_TAIL_PAY_OPEN":
								case "UN_TAIL_PAY":
									c = "已付定金", p = "待付尾款";
									break;
								case "TAIL_PAY_SUCCESS":
									c = "已付定金", p = "已付尾款"
							}
							t.orderStageInfo.orderStageList[0].stageStatusName = c, t.orderStageInfo.orderStageList[1].stageStatusName = p
						}
					}), setTimeout(function() {
						if(e.paginator && e.paginator.totalPage > 1) {
							var t = e.paginator;
							t.currentPage < 1 && (t.currentPage = 1), t.currentPage > t.totalPage && (t.currentPage = t.totalPage), t.headPageSize = 1, t.tailPageSize = 1, t.offsetPage = 5, t.uk = a.randomWord(!1, 40).toLowerCase(), t.curPage = Number(o.getQueryString("page")) || 1, t.status = o.getQueryString("status") || "all", t.orderVisibleStatusCode = o.getQueryString("orderVisibleStatusCode") || "", $("#paginator-list").jsp(MoGu.ui.getTemplate(l, t))
						}
					}, 0), e) : e
				},
				orderConfirm: function(e) {
					a.openModal(e, {
						url: n.CONFIRM_RECEIVED_BY_USER,
						data: {
							data: JSON.stringify({
								orderId: $(this).data("shopid")
							}),
							marketType: "market_meilishuo"
						},
						msg: "请亲收到货后再确认收货,<br/>否则可能钱货两空！",
						btnText: "确认收货",
						line: 2
					})
				},
				orderRemind: function(e) {
					var t = $(this);
					t.hasClass("disabled") || a.ajax({
						data: {
							data: JSON.stringify({
								orderid: t.data("shopid")
							}),
							marketType: "market_meilishuo"
						},
						url: n.TIP_SHIP
					}, function() {
						t.removeClass("order-remind").addClass("disabled").text("已提醒商家发货").parents("ul").find(".order-remind-tip").addClass("show"), t.parents("ul").find(".order-remind-tip").delay(2e3).fadeOut()
					})
				},
				deliveryInfo: function() {
					var e = $(this);
					e.data("detail") || a.ajax({
						url: n.SHOW_DELIVERY,
						type: "get",
						data: {
							expressId: e.data("expressid"),
							expressName: e.data("expressname")
						}
					}, function(t) {
						if(1001 === t.status.code) {
							t.result.shopid = e.data("shopid");
							var r = MoGu.ui.getTemplate(s.deliveryDetailTpl, t.result);
							e.next().find(".inner").jsp(r), e.data("detail", !0)
						}
					})
				},
				orderDelete: function(e) {
					var t = [];
					t.push($(this).data("shopid")), a.openModal(e, {
						url: n.DELETE_RECYCLE_ORDER,
						msg: "你确定要删除这笔订单吗？",
						desc: "永久删除后,你将无法查看该笔订单,也无法进行投诉维权,请谨慎操作",
						line: 2,
						data: {
							data: JSON.stringify({
								orderIds: t
							}),
							marketType: "market_meilishuo"
						}
					})
				},
				payMlsOldAlert: function() {
					MoGu.alert("订单失效，请重新下单")
				},
				orderRecover: function(e) {
					var t = [];
					t[0] = JSON.stringify($(this).data("shopid")), e.recoverOrder(t)
				},
				orderDeleteAll: function(e) {
					e.preventDefault();
					var t = this.getOrderIds();
					0 != t.length && a.openModal(e, {
						url: n.DELETE_RECYCLE_ORDER,
						msg: "你确定要删除这些订单吗？",
						desc: "永久删除后,你将无法查看这些订单,也无法进行投诉维权,请谨慎操作",
						line: 2,
						data: {
							data: JSON.stringify({
								orderIds: t
							}),
							marketType: "market_meilishuo"
						}
					})
				},
				orderRecoverAll: function(e) {
					e.preventDefault();
					var t = this.getOrderIds();
					0 != t.length && this.recoverOrder(t)
				},
				getOrderIds: function() {
					for(var e = $(".check"), t = [], r = 0; r < e.length; r++)
						if(e[r].checked) {
							var n = $(e[r]).data("shopid");
							t.push(JSON.stringify(n))
						}
					return t
				},
				recoverOrder: function(e) {
					e.length < 0 || a.ajax({
						url: n.RECOVERY_RECYCLE_ORDER,
						data: {
							data: JSON.stringify({
								orderIds: e
							}),
							marketType: "market_meilishuo"
						}
					}, function(e) {
						"SUCCESS" === e.status.code && location.reload()
					})
				},
				fqalert: function(e) {
					$.alert("分期订单，请到手机APP上完成分期购买哦~ ")
				}
			};
		e.exports = m
	}, function(e, t) {
		"use strict";
		var r = {
			SERVICE_GET_BUCKET: "/trade/abtest/service/getBucket",
			ORDER_LIST: "api/order/list4buyer",
			SHOW_DELIVERY: "/trade/order/showDelivery",
			TIP_SHIP: "/api/order/tipShip",
			CLOSE_ORDER: "/api/order/close",
			DELETE_CANCLEDORDER: "/api/order/deleteCanceledOrder",
			CONFIRM_RECEIVED_BY_USER: "/api/order/confirmReceivedbyUser",
			DELETE_RECYCLE_ORDER: "/api/order/deleterecycleorder",
			RECOVERY_RECYCLE_ORDER: "/api/order/recoveryrecycleorder",
			ORDER_DETSIL: "api/order/detail4buyer",
			RECOMMEND_PRODUCT: "/widget/trade/recommend/productUrl"
		};
		e.exports = r
	}, function(e, t, r) {
		"use strict";
		r(4);
		var n = r(5);
		e.exports = {
			ajax: function(e, t) {
				var r = {
					type: "post",
					dataType: "json",
					data: []
				};
				e = $.extend(r, e), $.ajax({
					url: e.url,
					type: e.type,
					dataType: e.dataType,
					data: e.data
				}).then(function(e) {
					"SUCCESS" == e.status.code || 1001 == e.status.code ? t && t(e) : MOGU.alert(e.status.msg)
				}, function() {
					e.box && e.box.close(), MOGU.alert("网络错误，请稍后重试")
				})
			},
			openModal: function(e, t) {
				e.preventDefault();
				var r = this,
					a = ['<div class="content' + (t.line ? " line-" + t.line : "") + '">', '    <div class="lb-tips">', "        <p>" + t.msg + "</p>" + (t.desc ? '<p class="lb-tips-desc">' + t.desc + "</p>" : ""), "    </div>", '    <div class="lb-action">', '        <a class="order-btn primary" href="javascript:;">' + (t.btnText || "确认") + "</a>", '        <a class="order-btn cancel" href="javascript:;">取消</a>', "    </div>", "</div>"].join(""),
					o = {
						title: " ",
						lightBoxId: "lbOrderConfirm",
						contentHtml: a,
						scroll: !0
					},
					i = new n(o);
				i.init(), $("#lbOrderConfirm").on("click", ".primary", function() {
					var e = $(this);
					e.hasClass("disabled") || (e.addClass("disabled"), r.ajax({
						data: t.data,
						url: t.url,
						type: t.type,
						box: i
					}, function(e) {
						e.result && void 0 !== e.result.url ? location.href = "index.jsp" + e.result.url : location.reload()
					}))
				}).on("click", ".cancel", function() {
					i.close()
				})
			},
			countdown: {
				init: function() {
					var e = this;
					$(".timer").each(function(t, r) {
						e.setCountdown($(r))
					})
				},
				setCountdown: function(e) {
					var t = Math.floor(e.data("time") / 60);
					0 > t && (t = 0);
					var r = null,
						n = function a() {
							return r && clearTimeout(r), e.text("还剩" + Math.floor(t / 1440) + "天" + Math.floor(t / 60) % 24 + "时" + t % 60 + "分"), 0 === t ? (e.parents(".order-section").toggleClass("unpaid finished"), e.remove(), null) : (t--, setInterval(a, 6e4))
						};
					r = n()
				}
			},
			formatDate: function(e) {
				var t = new Date(1e3 * e),
					r = function(e) {
						return 10 > e ? "0" + e : e
					},
					n = t.getFullYear(),
					a = r(t.getMonth() + 1),
					o = r(t.getDate()),
					i = r(t.getHours()),
					s = r(t.getMinutes()),
					d = r(t.getSeconds());
				return n + "-" + a + "-" + o + " " + i + ":" + s + ":" + d
			},
			formatTime: function(e) {
				var t, r, n;
				t = e / 86400 >>> 0, r = (e / 3600 >>> 0) - 24 * t, n = (e / 60 >>> 0) - 60 * (24 * t + r);
				var a = t > 0 ? t + "天" : "",
					o = r > 0 ? r + "小时" : "00小时",
					i = 10 > n ? "0" + n + "分" : n + "分";
				return a + o + i
			},
			randomWord: function(e, t, r) {
				var n = "",
					a = t,
					o = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
				e && (a = Math.round(Math.random() * (r - t)) + t);
				for(var i = 0; a > i; i++) {
					var s = Math.round(Math.random() * (o.length - 1));
					n += o[s]
				}
				return n || ""
			}
		}
	}, function(e, t) {
		"use strict";
		window.MOGU = window.MOGU || {},
			function(e, t) {
				var r = {};
				r.Util = {
					mask: function() {
						var t = e(".light_box_fullbg");
						t.length <= 0 && (t = e(['<div class="light_box_fullbg"></div>'].join("")), e("body").append(t))
					},
					show: function(t, r) {
						var n, a, o, i = e("#vp_wrap"),
							s = e(".light_box_fullbg").eq(0);
						i.length <= 0 && (i = e(['<div class="vp_wrap" id="vp_wrap">', '<h5 class="vp_t"></h5>', '<a href="javascript:;" class="vp_cls">×</a>', '<div class="v_pop_box"></div>', "</div>"].join("")), e("body").append(i), s.off("click").on("click", function() {
							clearTimeout(o), i.addClass("vp_shake"), o = setTimeout(function() {
								i.removeClass("vp_shake")
							}, 500)
						})), r.isShowCloser ? i.find(".vp_cls").show() : i.find(".vp_cls").hide(), i.find(".vp_t").jsp(r.title), a = {
							alert: function(t) {
								return n = e(".vp_alert"), n.length <= 0 ? n = e(['<div class="vp_alert vp_inner">', '<p class="vp_cnt"></p>', '<a href="javascript:;" class="vp_btn vp_btn_' + t.btn.theme + ' vp_ok">' + t.btn.text + "</a>", "</div>"].join("")) : n.find(".vp_btn").removeClass("vp_btn_red").removeClass("vp_btn_normal").addClass("vp_btn_" + t.btn.theme).jsp(t.btn.text), n.show().find(".vp_cnt").jsp(t.content), n
							},
							confirm: function(t) {
								if(n = e(".vp_cfm"), n.length <= 0) n = e(['<div class="vp_cfm vp_inner">', '<p class="vp_cnt"></p>', '<a href="javascript:;" class="vp_btn vp_btn_' + t.btn1.theme + ' vp_ok">' + t.btn1.text + "</a>", '<a href="javascript:;" class="vp_btn vp_btn_' + t.btn2.theme + ' vp_cancel">' + t.btn2.text + "</a>", "</div>"].join(""));
								else {
									var r = n.find(".vp_btn");
									r.removeClass("vp_btn_red").removeClass("vp_btn_normal"), r.eq(0).addClass("vp_btn_" + t.btn1.theme).jsp(t.btn1.text), r.eq(1).addClass("vp_btn_" + t.btn2.theme).jsp(t.btn2.text)
								}
								return n.show().find(".vp_cnt").jsp(t.content), n
							}
						}, i.find(".v_pop_box").append(a[t](r)), i.css({
							display: "block",
							opacity: 0
						}).css({
							"margin-left": -i.width() / 2 - 1,
							"margin-top": -i.height() / 2 - 1,
							opacity: 1
						}), s.show()
					},
					close: function(t, r) {
						e(".light_box_fullbg").eq(0).hide(), e("#vp_wrap").find(".vp_inner").hide().end().hide(), void 0 !== r && "function" == typeof r && r(t)
					}
				}, e.alert = function(t, n, a) {
					var o = e.extend(!0, {
							title: "提示",
							content: t,
							btn: {
								text: "确定",
								theme: "red",
								val: void 0
							},
							isShowCloser: !0,
							close_val: void 0
						}, a),
						i = function() {
							e("#vp_wrap").off("click").on("click", ".vp_ok", function(e) {
								e.preventDefault(), r.Util.close(o.btn.val, n)
							}).on("click", ".vp_cls", function(e) {
								e.preventDefault(), r.Util.close(o.close_val, n)
							})
						};
					! function() {
						r.Util.mask(), r.Util.show("alert", o), i()
					}()
				}, e.confirm = function(t, n, a) {
					var o = e.extend(!0, {
							title: "提示",
							content: t,
							btn1: {
								text: "确定",
								theme: "red",
								val: !0
							},
							btn2: {
								text: "取消",
								theme: "normal",
								val: !1
							},
							isShowCloser: !0,
							close_val: !1
						}, a),
						i = function() {
							e("#vp_wrap").off("click").on("click", ".vp_ok", function(e) {
								e.preventDefault(), r.Util.close(o.btn1.val, n)
							}).on("click", ".vp_cancel", function(e) {
								e.preventDefault(), r.Util.close(o.btn2.val, n)
							}).on("click", ".vp_cls", function(e) {
								e.preventDefault(), r.Util.close(o.close_val, n)
							})
						};
					! function() {
						r.Util.mask(), r.Util.show("confirm", o), i()
					}()
				}, t.MOGU.alert = e.alert, t.MOGU.confirm = e.confirm
			}(jQuery, window)
	}, function(e, t) {
		"use strict";
		var r = function(e) {
			var t = this,
				r = {
					title: "",
					titleLink: "",
					titleLinkText: "",
					lightBoxId: "",
					ajax: !1,
					contentHtml: "",
					scroll: !1,
					isBgClickClose: !0,
					resizeshow: !0,
					closeCallBack: function() {}
				},
				n = null,
				a = '<div id="{id}" class="light_box"><iframe frameborder="0" scrolling="no" class="lb_fix"></iframe>{content}</div>',
				o = '<table class="lb_wrap clearfix r5"><tbody><tr><td><div class="lb_hd">{title}{title_link}<a href="javascript:;" class="lb_close">×</a></div><div class="lb_bd">{body}</div></td></tr></tbody></table>',
				i = '<div class="light_box_fullbg"></div>',
				s = '<table class="lb_info r5"><tbody><tr><td><div class="lb_l">{text}......（<a class="lb_cs" href="javascript:;">取消</a>）</div></td></tr></tbody></table>',
				d = '<table class="lb_info r5"><tbody><tr><td><div class="lb_s">{text}</div></td></tr></tbody></table>',
				l = '<table class="lb_info r5"><tbody><tr><td><div class="lb_f">{text}</div></td></tr></tbody></table>',
				c = $.extend(r, e),
				p = null,
				m = null,
				u = null,
				h = !1,
				f = function() {
					var e = (document.documentElement.scrollTop || document.body.scrollTop) + ((document.documentElement.clientHeight || document.body.clientHeight) - p.height()) / 2,
						t = window.location.toString();
					return 0 > e ? e = 0 : t.indexOf("is_qzone") > 0 && (e /= 6), e
				};
			t.getBoxFrame = function() {
				return p
			}, t.getFrameId = function() {
				return c.lightBoxId
			}, t.getBackground = function() {
				return u
			}, t.close = function() {
				n && n.abort(), p.hide(), c.closeCallBack(), p.remove(), 0 == $(".light_box").size() && u.remove(), $("body").unbind("keydown")
			}, t.hide = function() {
				p.hide(), u.hide(), $("body").unbind("keydown")
			}, t.show = function() {
				p.show(), u.show()
			}, t.resize = function() {
				var e = $(window).width(),
					t = (e - p.width()) / 2,
					r = f();
				if(m.css({
						width: p.width(),
						height: p.height()
					}), $.browser.msie && "6.0" == $.browser.version && u.css("height", document.documentElement.clientHeight || document.body.clientHeight), c.scroll)
					if($.browser.msie && "6.0" == $.browser.version) p.css({
						left: t,
						top: r
					}).show(), h || $(window).scroll(function() {
						var e = f();
						p.css("top", e)
					});
					else {
						r = ((document.documentElement.clientHeight || document.body.clientHeight) - p.height()) / 2;
						var n = window.location.toString();
						0 > r ? r = 0 : n.indexOf("is_qzone") > 0 && (r /= 6), p.css({
							left: t,
							top: r,
							position: "fixed"
						}).show()
					}
				else p.css({
					left: t,
					top: r
				}).show()
			}, t.init = function() {
				if("" != c.lightBoxId) {
					var e = a.replace(/{id}/g, c.lightBoxId).replace(/{content}/, o);
					c.title && "" != c.title && (e = e.replace(/{title}/g, '<span class="lb_title">' + c.title + "</span>")), e = "" != c.titleLinkText ? e.replace(/{title_link}/g, '<span class="lb_lnk">（<a href="' + c.titleLink + '" target="_blank">' + c.titleLinkText + "</a>）</span>") : e.replace(/{title_link}/g, ""), e = c.ajax ? e.replace(/{body}/g, "") : e.replace(/{body}/g, c.contentHtml);
					var r = $(".light_box_fullbg");
					0 == r.size() ? $("body").append(e + i) : ($("body").append(e), r.eq(0).show()), p = $("#" + c.lightBoxId), m = $(".lb_fix"), u = $(".light_box_fullbg"), c.ajax ? t.loading() : (t.resize(), c.resizeshow && $(window).resize(function() {
						p.filter(":visible").length <= 0 || t.resize()
					}), p.find(".lb_close").click(function() {
						t.close()
					})), c.isBgClickClose && $(".light_box_fullbg").click(function() {
						t.close()
					})
				}
			}, t.fadeout = function() {
				n && n.abort(), p.fadeOut(500), u.fadeOut(500, function() {
					t.close()
				})
			}, t.startAjax = function(e) {
				n = e
			}, t.buildContent = function(e) {
				if(0 == p.find(".lb_wrap").size()) {
					var r = o.replace(/{body}/, e);
					c.title && "" != c.title && (r = r.replace(/{title}/g, '<span class="lb_title">' + c.title + "</span>")), r = "" != c.titleLinkText ? r.replace(/{title_link}/g, '<span class="lb_lnk">（<a href="' + c.titleLink + '" target="_blank">' + c.titleLinkText + "</a>）</span>") : r.replace(/{title_link}/g, ""), p.find(".lb_info").after(r).remove(), $("#" + c.lightBoxId + " .lb_close").click(function() {
						t.close()
					})
				} else p.find(".lb_bd").jsp(e);
				t.resize()
			}, t.success = function(e) {
				var r = d.replace(/{text}/, e);
				p.find(".lb_wrap").after(r).remove(), t.resize(), setTimeout(function() {
					t.fadeout()
				}, 1e3)
			}, t.success_close = function(e, r) {
				var n = d.replace(/{text}/, e);
				p.find(".lb_wrap").after(n).remove(), t.resize();
				var r = r || 1e3;
				setTimeout(function() {
					t.close()
				}, r)
			}, t.fail = function(e, r) {
				var n = l.replace(/{text}/, e);
				p.find(".lb_wrap").after(n).remove(), t.resize();
				var r = r || 2e3;
				setTimeout(function() {
					t.close()
				}, r)
			}, t.loading = function(e) {
				e = e || "请稍后";
				var r = s.replace(/{text}/, e);
				p.find(".lb_wrap").after(r).remove(), t.resize(), p.find(".lb_l .lb_cs").click(function() {
					t.close()
				}), t.resize()
			}
		};
		e.exports = r
	}, function(e, t) {
		"use strict";
		e.exports = {
			getQueryString: function(e, t) {
				t = null == t ? window.location.href : t, t = t.split("#")[0];
				var r = new RegExp("(^|\\?|&)" + e + "=([^&]*)(\\s|&|$)", "i");
				return r.test(t) ? decodeURIComponent(RegExp.$2.replace(/\+/g, " ")) : ""
			},
			prasekvObj: function(e) {
				for(var t = {}, r = 0, n = e.length; n > r; r++) t[e[r].name] = $.trim(e[r].value);
				return t
			},
			verifyData: function(e, t, r, n, a) {
				if("function" != typeof n && (window.MOGU && MOGU.alert ? (n = MOGU.alert, a = this) : (n = window.alert, a = this)), e && e.status)
					if(1001 === e.status.code) t && t(e.result);
					else {
						var o = e.result || e.status.msg || "未知错误，可能的原因：1.网络问题 2.服务器超时 3.其他原因";
						n.call(a, o), r && r(o)
					}
				else {
					var o = "未知错误，可能的原因：1.网络问题 2.服务器超时 3.其他原因";
					n.call(a, o), r && r(o)
				}
			},
			setCookie: function(e, t, r) {
				var n, a = [];
				return r = r || {}, null == t && (t = "", r.expires = -1), "number" == typeof r.expires ? (n = new Date, n.setTime(n.getTime() + 1e3 * r.expires)) : r.expires instanceof Date && (n = r.expires), a.push(e + "=" + encodeURIComponent(t)), n && a.push("expires=" + n.toUTCString()), r.path && a.push("path=" + r.path), r.domain && a.push("domain=" + r.domain), r.secure && a.push("secure"), document.cookie = a.join("; ")
			},
			getCookie: function(e) {
				var t, r, n, a;
				if(document.cookie)
					for(r = document.cookie.split("; "), n = 0, a = r.length; a > n; n++)
						if(0 === r[n].indexOf(e + "=")) {
							t = decodeURIComponent(r[n].substr(e.length + 1));
							break
						}
				return t
			},
			mul: function(e, t) {
				var r = 0,
					n = e.toString(),
					a = t.toString();
				try {
					r += n.split(".")[1].length
				} catch(o) {}
				try {
					r += a.split(".")[1].length
				} catch(o) {}
				return Number(n.replace(".", "")) * Number(a.replace(".", "")) / Math.pow(10, r)
			},
			getImgOriginalURL: function(e) {
				var t = /\.png|\.jpg|\.gif|\.jpeg|\.webp/gi;
				return t.test(e) ? (e = (e || "").split(t), e.slice(0, 1).join("") + ".jpg") : e
			},
			getImgThumbnailUrl: function(e, t, r) {
				return /\/([a-zA-Z0-9]{28})_/.test(e) ? e : (e = this.getImgOriginalURL(e), t && r ? [e, "_", t, "x", r, ".jpg"].join("") : e)
			}
		}
	}, function(e, t) {
		"use strict";
		var r = [' <div class="content pay">', '   <div class="lb-tips">', '     <div class="info">', "     {{?it.unpaid}}", "       <h1>请您在新打开的页面上完成付款</h1>", '       <p class="sub">付款完成前请不要关闭此窗口</p>', '       <p class="sub">完成付款后请根据您的情况点击下面的按钮</p>', "     </div>", "   </div>", '   <div class="lb-action">', '     <a href="{{=it.payDone}}" class="order-btn primary">已完成付款</a>', '     <a href="{{=it.payChange}}" target="_blank" class="order-btn cancel">更换支付方式</a>', "     {{??}}", "       <h1>请在新打开页面完成下单</h1>", '       <p class="sub">下单完成前请不要关闭此窗口</p>', '       <p class="sub">完成下单后请根据您的情况点击下面的按钮</p>', "     </div>", "   </div>", '   <div class="lb-action">', '     <a href="{{=it.payDone}}" class="order-btn primary">已完成下单</a>', '     <a href="{{=it.payChange}}" target="_blank" class="order-btn cancel">重新下单</a>', "     {{?}}", "   </div>", '   <div class="lb-more">', '     <p class="tag mb10"></p>', "   </div>", " </div>"].join(""),
			n = ["<p>快递名：{{=it.expressCompany}}</p>", "<p>运单号：{{=it.expressId}}</p>", "<ul>", " {{var first = true;}}", "  {{~it.items:item:index}}", "   {{?first}}", '   <li class="newest">', "    {{first = false;}}", "    {{??}}", "   <li>", "   {{?}}", "     <p>{{=item.desc}}</p>", "     <p>{{=item.time}}</p>", "   </li>", " {{~}}", "</ul>", '<a href="orderdetail.jsp#?orderId={{=it.shopid}}#order_wuliu" class="delivery-more go-detail-link" target="_blank">查看详情</a>'].join("");
		e.exports = {
			payTpl: r,
			deliveryDetailTpl: n
		}
	}, function(e, t) {
		e.exports = '<!-- 有订单 -->\n{{? it.buyerOrderList&&it.buyerOrderList.length>0}}\n<!-- 回收站 -->\n{{? it.stage&&it.stage == \'all-recyle\' }}\n<div class="order-operate">\n    <label><input type="checkbox" class="order-check-all checkall"  name="checkall" />全选</label>\n    <a class="delete order-delete-all" href="javascript:;" data-url="/mls/trade/order/deleterecycleorder">批量永久删除</a>\n    <a class="recover order-recover-all" href="javascript:;" data-url="/mls/trade/order/recoveryrecycleorder">批量还原</a>\n</div>\n{{?}}\n\n<div class="order-list">\n  {{~ it.buyerOrderList :orderItem:orderIndex}}\n  <!--订单class\n      未支付 order-section unpaid\n      //未确认 order-section unconfirmed\n      完成 order-section finished\n  -->\n  <div class="order-section {{? orderItem.payOrder.isWaitPay }}unpaid{{?? orderItem.payOrder.isComplete }}finished{{?}}" data-payid="{{= orderItem.payOrder.payOrderId}}">\n    <table class="order-table">\n      <tbody>\n        {{~ orderItem.shopOrderList :shopItem:shopIndex}}\n          <!-- shop头部 -->\n          <tr class="order-table-header">\n            <td colspan="7">\n              <div class="order-info fl">\n                {{? it.stage&&it.stage == \'all-recyle\' }}\n                    <input type="checkbox" class="J_check check" name="checkbox" data-shopid="{{= shopItem.shopOrderId}}">\n                {{?}}\n                <!-- 编号：已付款->shopOrderId 未付款->payOrderId -->\n                <span class="no">\n                  订单编号：\n                  <span class="order_num">\n                    {{= shopItem.shopOrderId}}\n                  </span>\n                </span>\n                <span class="deal-time">\n                  成交时间：{{= shopItem.createdDate }}\n                </span>\n                {{? shopItem.shopInfo }}\n                  <a class="shop-name" target="_blank"  {{? shopItem.shopInfo.shopIdEsc!=\'1qfnyw\' }}href="shop.jsp#{{= shopItem.shopInfo.shopIdEsc}}"{{?}}>\n                    店铺：<span>{{= shopItem.shopInfo.shopName }}</span>\n                  </a>\n                {{?}}\n              </div>\n              {{? shopItem.shopInfo }}\n              <a href="javascript:;" class="mlstalk_widget_btn" data-shopid="{{= shopItem.shopInfo.shopIdEsc}}" data-toid="{{= MoGu.fn.url2id(shopItem.sellerUserIdEsc) }}" {{? shopItem.shopInfo }} {{??}} {{?}}>\n                联系商家\n              </a>\n              {{? }}\n            </td>\n          </tr>\n          <!-- shop头部end -->\n          <!-- shop内容 -->\n          {{~ shopItem.itemOrders :contentItem:contentIndex }}\n          <tr class="order-table-item {{? shopItem.itemOrders.length - 1 == contentIndex}}last{{?}}">\n            <td class="goods">\n              <a class="pic" href="shopdetail.jsp#?{{= contentItem.itemIdEsc}}" title="查看宝贝详情" hidefocus="true" target="_blank">\n                <img src="{{= contentItem.imgUrl}}" alt="查看宝贝详情" width="70">\n              </a>\n\n              <div class="desc">\n                <p>\n                  <a href="shopdetail.jsp#?{{= contentItem.itemIdEsc}}" target="_blank">{{= contentItem.title}}</a>\n                  <!--订单快照-->\n                  {{? shopItem.created >= 1412697600 && contentItem.title}}\n                    <!-- <a class="snapshot" href="http://www.meilishuo.com/mls/trade/order/snap?orderId={{= contentItem.itemOrderIdEsc}}" target="_blank">[交易快照]</a> -->\n                  {{?}}\n                </p>\n                {{? contentItem.skuAttributes && contentItem.skuAttributes.length>0 }}\n                  {{~ contentItem.skuAttributes :sku:skuIndex}}\n                    <p>{{= sku.key}}：{{= sku.value}}</p>\n                  {{~}}\n                {{?}}\n                {{? contentItem.serviceTags && contentItem.serviceTags.length>0 }}\n                  <ul class="ui-tags-list clearfix">\n                    {{~ contentItem.serviceTags :tag:tagIndex}}\n                      <li class="ui-tags-item">\n                        <img class="ui-tag-pic" src="http://s7.mogujie.com/{{= tag.image}}" alt="">\n                        <div class="ui-tag-text ui-hide">\n                          <a class="ui-tag-link" href="javascript:void(0)">{{= tag.text}}</a>\n                          <span class="ui-icon-arrow"></span>\n                        </div>\n                      </li>\n                    {{~}}\n                  </ul>\n                {{?}}\n              </div>\n            </td>\n\n            <td class="price">\n              {{? contentItem.price != contentItem.nowPrice }}\n                <p class="price-old">{{= (contentItem.price/100).toFixed(2) }}</p>\n              {{?}}\n              <p>{{= (contentItem.nowPrice/100).toFixed(2) }}</p>\n            </td>\n\n            <td class="quantity">{{= contentItem.number}}</td>\n\n            <td class="aftersale">\n              {{? contentItem.itemOrderOperations && contentItem.itemOrderOperations.length>0 }}\n                {{~ contentItem.itemOrderOperations :itemOptItem:itemOptIndex}}\n                  <!-- 申请退货退款等操作 -->\n                  {{? itemOptItem.operationName == \'opt_create_refund\' }}\n                    <a class="order-link" target="_blank" data-orderid="" href="http://refund.meilishuo.com/mls/trade/refund/request?orderId={{=contentItem.itemOrderId}}">{{= itemOptItem.operationDesc}}</a>\n\n\n\n\n\n                  <!-- 申请详情 class="order-link refund"-->\n                  {{?? itemOptItem.operationName == \'opt_show_detail_refund\' }}\n                    <a class="order-link" target="_blank" href="http://refund.meilishuo.com/mls/trade/refund/detail?orderId={{=contentItem.itemOrderId}}">{{= itemOptItem.operationDesc}}</a>\n                  <!-- 申请维权 -->\n                  {{?? itemOptItem.operationName == \'opt_create_complaint\' }}\n                      {{? shopItem.marketType==\'market_meilishuo_old\'}}\n                         \n                      {{??}}\n                          <a href="http://xiaodian.meilishuo.com/trade/complaint/add?orderId={{=contentItem.itemOrderId}}" class="order-link go-detail-link" target="_blank">{{= itemOptItem.operationDesc}}</a>\n                      {{?}}\n                    <!-- <a class="order-link" target="_blank" href="http://www.meilishuo.com/mls/trade/complaint/add?orderId={{=contentItem.itemOrderId}}">{{= itemOptItem.operationDesc}}</a> -->\n                  <!-- 维权详情 class="order-link complaint" -->\n                  {{?? itemOptItem.operationName == \'opt_show_detail_complaint\' }}\n                      {{? shopItem.marketType==\'market_meilishuo_old\'}}\n                         <!-- <a href="http://order.meilishuo.com/refund/list/?order_id={{= shopItem.extraInfo.outId}}">仲裁详情</a> -->\n                      {{??}}\n                          <a href="http://xiaodian.meilishuo.com/trade/complaint/detail?orderId={{=contentItem.itemOrderId}}" class="order-link go-detail-link" target="_blank">{{= itemOptItem.operationDesc}}</a>\n                      {{?}}\n                    <!-- <a class="order-link" target="_blank" href="http://www.meilishuo.com/mls/trade/complaint/detail?comId={{=contentItem.complaintId}}">{{= itemOptItem.operationDesc}}</a> -->\n                  {{?}}\n                {{~}}\n              {{?}}\n            </td>\n\n            <!-- 多个商品的时候 后三列中每列只显示同个内容 -->\n            {{? contentIndex==0 }}\n            <td class="total" rowspan="{{= shopItem.itemOrders.length }}">\n              {{?shopItem.shopOrderPrice}}\n                <p class="total-price">￥ {{= (shopItem.shopOrderPrice/100).toFixed(2)}}</p>\n              {{?}}\n              {{? shopItem.shopOrderPriceRemark }}\n                <p>({{= shopItem.shopOrderPriceRemark }})</p>\n              {{?}}\n              {{? shopItem.shipExpressNameRemark }}\n                <p>{{= shopItem.shipExpressNameRemark }}</p>\n              {{?}}\n            </td>\n            <td class="status" rowspan="{{= shopItem.itemOrders.length }}">\n              <p class="{{? shopItem.orderStatus==\'ORDER_CREATED\' }}wait_pay{{?? shopItem.orderStatus==\'ORDER_SHIPPED\' }}icon icon-delivery{{?? shopItem.orderStatus==\'ORDER_COMPLETED\' }}done{{?}}">\n                {{= orderItem.payOrder.orderStatusName}}\n              </p>\n\n\n\n                      {{? shopItem.marketType==\'market_meilishuo_old\'}}\n                         <a href="http://order.meilishuo.com/order/detail/?order_id={{= shopItem.extraInfo.outId}}" class="order-link go-detail-link" target="_blank">订单详情</a>\n                      {{??}}\n                          <a href="orderdetail.jsp#?orderId={{= shopItem.shopOrderId}}" class="order-link go-detail-link" target="_blank">订单详情</a>\n                      {{?}}\n\n\n              <!-- 查看物流 -->\n              {{? shopItem.isShowDeliveryOrder }}\n                <div class="delivery">\n                  <a class="order-link delivery-info" href="javascript:;"\n                     data-expressid="{{= shopItem.shipExpressId}}"\n                     data-expressname="{{= shopItem.shipExpressName}}"\n                     data-shopid="{{= shopItem.shopOrderId}}"\n                   >{{= shopItem.showDeliveryOrderDesc }}</a>\n                  <div class="delivery-detail">\n                      <div class="inner"></div>\n                  </div>\n                </div>\n              {{?}}\n            </td>\n\n            <td class="other" rowspan="{{= shopItem.itemOrders.length }}">\n              <!-- 回收站 -->\n              {{? it.stage&&it.stage == \'all-recyle\' }}\n              <ul>\n                <li>\n                  <a class="order-link order-recover recover-btn" href="javascript:;" data-url="/mls/trade/order/recoveryrecycleorder" data-shopid="{{= shopItem.shopOrderId}}">还原订单</a>\n                </li>\n                <li>\n                  <a class="order-link order-delete delete-btn" href="javascript:;" data-shopid="{{= shopItem.shopOrderId}}">永久删除</a>\n                </li>\n              </ul>\n              {{?}}\n              <!-- 已付款后显示 -->\n              {{? !orderItem.payOrder.isWaitPay }}\n              <ul>\n                {{? shopItem.shopOrderOperations && shopItem.shopOrderOperations.length>0 }}\n                  {{~ shopItem.shopOrderOperations :shopOptItem:shopOptIndex}}\n                    <!-- 删除！订单 -->\n                    {{? !(it.stage&&it.stage == \'all-recyle\') && shopOptItem.operationName==\'opt_delete_order\' }}\n                      <li><a class="order-link order-remove" href="javascript:;" data-shopid="{{= shopItem.shopOrderId}}">{{= shopOptItem.operationDesc }}</a></li>\n                    <!-- 提醒商家发货 -->\n                    {{?? shopOptItem.operationName==\'opt_remind_ship_order\' }}\n                      <li><a class="order-link order-remind" href="javascript:;" data-shopid="{{= shopItem.shopOrderId}}">{{= shopOptItem.operationDesc }}</a></li>\n                      <li><span class="order-remind-tip">+1 已提醒商家</span></li>\n                    <!-- 确认收货 -->\n                    {{?? shopOptItem.operationName==\'opt_confirm_order\' }}\n                      <li><a class="order-btn primary order-confirm" href="javascript:;" data-shopid="{{= shopItem.shopOrderId}}">{{= shopOptItem.operationDesc }}</a></li>\n                      {{? orderItem.payOrder.timestampseconds}}\n                        <li><p class="timer" data-time=\'{{= orderItem.payOrder.timestampseconds}}\'><i class="icon icon-clock"></i>还剩{{= orderItem.payOrder.timestamp}}</p></li>\n                      {{?}}\n                    <!-- 评价 -->\n                    {{?? shopOptItem.operationName==\'opt_rate_order\' }}\n                      <li><a class="order-btn" target="_blank" href="http://rate.meilishuo.com/trade/mlsrate/list4buyer?orderId={{= shopItem.shopOrderId}}">{{= shopOptItem.operationDesc }}</a></li>\n                    <!-- 追加评价 -->\n                    {{?? shopOptItem.operationName==\'opt_append_rate_order\' }}\n                      <li><a class="order-btn" target="_blank" href="http://rate.meilishuo.com/trade/mlsrate/list4append?orderId={{= shopItem.shopOrderId}}">{{= shopOptItem.operationDesc }}</a></li>\n                    {{?}}\n                  {{~}}\n                {{?}}\n              </ul>\n              {{?}}\n            </td>\n            {{?}}\n          </tr>\n          {{~}}\n          <!-- shop内容end -->\n          <!-- 预售 -->\n          {{? shopItem.orderTags == \'YS\' && orderItem.orderStageInfo }}\n            {{? orderItem.orderStageInfo.orderStageList && orderItem.orderStageInfo.orderStageList.length>0 }}\n              {{~ orderItem.orderStageInfo.orderStageList :orderStageItem:orderStageIndex}}\n                <tr class="presale prepay">\n                  <td style="width:32%;text-align:left;text-indent:10px;">{{= orderStageItem.stageDesc}}：({{=it.transTimeform(orderStageItem.beginTime)}}-{{=it.transTimeform(orderStageItem.endTime)}})</td>\n                  <td style="width:11.7%">￥{{= (orderStageItem.goodsPrice/100).toFixed(2)}}</td>\n                  <td style="width:6.8%">1</td>\n                  <td style="width:11.7%"></td>\n                  <td style="width:12.5%">￥{{= (orderStageItem.goodsPrice/100).toFixed(2)}}</td>\n                  <td style="width:12.5%">{{= orderStageItem.stageStatusName}}</td>\n                  <td style="width:12.5%"></td>\n                </tr>\n              {{~}}\n            {{?}}\n          {{?}}\n          <!-- 预售end -->\n        {{~}}\n        <!-- 未付款时显示 -->\n        {{? orderItem.payOrder.isWaitPay }}\n        <tr class="order-table-footer">\n          <td colspan="4">\n            <ul>\n                <!-- 剩余时间 -->\n                <li>\n                  <!-- 预售且订单未关闭状态下~ -->\n                  {{? orderItem.payOrder.orderStatus != \'ORDER_CLOSED\'\n                    && orderItem.payOrder.orderStatus != \'ORDER_CANCELLED\'\n                    && orderItem.payOrder.orderTags == \'YS\'\n                    && orderItem.orderStageInfo.stageStatus == \'WAITING_TAIL_PAY_OPEN\' }}\n                      <p>{{=it.transDateform(orderItem.orderStageInfo.orderStageList[1].beginTime)}} - {{=it.transDateform(orderItem.orderStageInfo.orderStageList[1].endTime)}}付尾款</p>\n                  {{??}}\n                    {{? orderItem.payOrder.timestamp}}\n                      <p class="timer" data-time="{{= orderItem.payOrder.timestampseconds}}">\n                        <i class="icon icon-clock"></i>\n                        还剩{{= orderItem.payOrder.timestamp}}\n                      </p>\n                    {{?}}\n                  {{?}}\n                </li>\n\n                <!-- 删除订单 -->\n                {{? orderItem.payOrder.payOrderOperations && orderItem.payOrder.payOrderOperations.length>0 }}\n                  {{~ orderItem.payOrder.payOrderOperations :payOrderOptItem:payOrderOptIndex}}\n                    {{? payOrderOptItem.operationName == \'opt_cancel_order\'}}\n                    <li>\n                      <a class="order-link order-cancel" href="javascript:;" data-payid="{{= orderItem.payOrder.payOrderId}}">{{= payOrderOptItem.operationDesc}}</a>\n                    </li>\n                    {{?}}\n                  {{~}}\n                {{?}}\n\n                <!-- 优惠券 -->\n                {{? orderItem.payOrder.payOrderPromotionInfo && orderItem.payOrder.payOrderPromotionInfo.promotionDesc && orderItem.payOrder.payOrderPromotionInfo.promotionDesc.length>0 }}\n                  {{~ orderItem.payOrder.payOrderPromotionInfo.promotionDesc :promotionItem:promotionIndex}}\n                    <li class="order-promotion">\n                        <div>已使用{{= promotionItem}}</div>\n                    </li>\n                  {{~}}\n                {{?}}\n            </ul>\n          </td>\n          <td class="total">\n            <span class="sub">总计：</span>￥{{= (orderItem.payOrder.payOrderPrice/100).toFixed(2) }}\n          </td>\n          <td class="status">\n              <p class="wait_pay">等待付款</p>\n          </td>\n          <td class="other">\n            <!-- 付款按钮 -->\n\n            {{? orderItem.payOrder.payOrderOperations && orderItem.payOrder.payOrderOperations.length>0 }}\n\n              {{~ orderItem.payOrder.payOrderOperations :payOrderOptItem:payOrderOptIndex}}\n                {{? payOrderOptItem.operationName == \'opt_pay_order\'}}\n\n                      {{~ orderItem.shopOrderList :shopItem:shopIndex}}\n                          {{? shopItem.marketType==\'market_meilishuo_old\'}}\n                              <!-- <a class="order-btn primary order-pay pay-mls-old-alert" target="_blank"  href="javascript:void(0)">{{= payOrderOptItem.operationDesc}}</a> -->\n                          {{??}}\n                              <!-- <a class="order-btn primary order-pay" target="_blank"  href="/mls/order/cashier?orderId={{= orderItem.payOrder.payOrderId }}">{{= payOrderOptItem.operationDesc}}</a> -->\n                          {{?}}\n                      {{~}}\n\n\n                  <a class="order-btn primary order-pay" target="_blank"  href="/mls/order/cashier?orderId={{= orderItem.payOrder.payOrderId }}">{{= payOrderOptItem.operationDesc}}</a>\n                {{?? payOrderOptItem.operationName == \'opt_prepay_order\'}}\n                  <!-- 预售付款按钮 -->\n                  <a class="order-btn primary" href="http://www.meilishuo.com/mls/trade/orderpay/presalepay?orderId={{= orderItem.payOrder.payOrderId }}">付定金</a>\n                {{??  payOrderOptItem.operationName == \'opt_tailpay_order\'}}\n                  <!-- 预售付款按钮 -->\n                  <a class="order-btn primary" href="http://www.meilishuo.com/mls/trade/orderpay/transitionpay?orderId={{= orderItem.payOrder.payOrderId }}">付尾款</a>\n                {{?}}\n              {{~}}\n            {{?}}\n          </td>\n        </tr>\n        {{?}}\n        <!-- 未付款时显示end -->\n      </tbody>\n    </table>\n  </div>\n  {{~}}\n</div>\n<!-- 翻页 -->\n<div id="paginator-list"></div>\n{{??}}\n<!-- 有订单end -->\n<!-- 无订单 -->\n<div class="order-list-empty clearfix">\n  <div class="empty-icon fl"></div>\n  <div class="empty-content fl">\n      <h5 class="empty-title">\n        {{? it.stage && it.stage==\'all\'}}\n          <p>你还没有购买过商品，赶紧去挑选商品～</p>\n        {{??}}\n          <p>哎呀，此状态下没有对应的订单！</p>\n        {{?}}\n      </h5>\n      <ul class="empty-list">\n          <li>去 <a href="http://www.meilishuo.com/guang/hot">服饰</a> 看看大家都喜欢的商品</li>\n          <li>去 <a href="http://www.meilishuo.com/tuan/">团购</a> 看看正在折扣中的商品</li>\n      </ul>\n  </div>\n</div>\n{{?}}\n';
	}, function(e, t) {
		e.exports = '<div class="pagination mt20">\n  <ul class="ui-pagination clearfix">\n    {{? it.currentPage != 1 }}\n      <a href="/mls/order/list4buyer?page={{= it.curPage-1}}&status={{= it.status}}&_uk={{= it.uk}}{{?it.orderVisibleStatusCode}}&orderVisibleStatusCode=DELETED{{?}}">&lt;上一页</a>\n    {{?}}\n\n    {{ for( var page=1;page<=it.totalPage;page++){ }}\n      <!-- 头部 -->\n      {{? page<=it.headPageSize }}\n        <a class="ui-link {{? it.currentPage==page}}selected{{?}}" href="/mls/order/list4buyer?page={{= page}}&status={{= it.status}}&_uk={{= it.uk}}{{?it.orderVisibleStatusCode}}&orderVisibleStatusCode=DELETED{{?}}">{{= page}}</a>\n      {{?}}\n      <!-- 只判断一次 ( it.currentPage>=(it.totalPage-it.offsetPage) || it.currentPage>=it.offsetPage )-->\n      {{? page==1 && it.totalPage>=(it.offsetPage+it.offset) && it.currentPage>=it.offsetPage }}\n        <i>...</i>\n      {{?}}\n\n      <!-- 中间 -->\n      {{? page>it.headPageSize && page<=(it.totalPage-it.tailPageSize) }}\n        {{?  (it.currentPage < it.offsetPage)&&(page <= it.offsetPage)\n          || ((it.currentPage-it.offset) > (it.totalPage-it.offsetPage))&&(page > (it.totalPage-it.offsetPage) )\n          || (page >= (it.currentPage-it.offset) && page <= (it.currentPage+it.offset))\n        }}\n          <a class="ui-link {{? it.currentPage==page}}selected{{?}}" href="/mls/order/list4buyer?page={{= page}}&status={{= it.status}}&_uk={{= it.uk}}{{?it.orderVisibleStatusCode}}&orderVisibleStatusCode=DELETED{{?}}">{{= page}}</a>\n        {{?}}\n      {{?}}\n\n      <!-- 尾部 -->\n      <!-- 只判断一次 -->\n      {{? page==it.totalPage && it.totalPage>=(it.offsetPage+it.offset) && (it.currentPage+it.offset)<(it.totalPage-it.tailPageSize) }}\n        <i>...</i>\n      {{?}}\n      {{? page>(it.totalPage-it.tailPageSize) }}\n        <a class="ui-link {{? it.currentPage==page}}selected{{?}}" href="/mls/order/list4buyer?page={{= page}}&status={{= it.status}}&_uk={{= it.uk}}{{?it.orderVisibleStatusCode}}&orderVisibleStatusCode=DELETED{{?}}">{{= page}}</a>\n      {{?}}\n    {{ } }}\n\n    {{? it.currentPage != it.totalPage }}\n      <a href="/mls/order/list4buyer?page={{= it.curPage+1}}&status={{= it.status}}&_uk={{= it.uk}}{{?it.orderVisibleStatusCode}}&orderVisibleStatusCode=DELETED{{?}}">&gt;下一页</a>\n    {{?}}\n  </ul>\n</div>\n'
	}])
}), "function" == typeof define && define.amd && require(["mls-pc/pages/list/index"]);