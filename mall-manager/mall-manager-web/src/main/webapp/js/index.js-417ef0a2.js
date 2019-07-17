! function(e, t, n) {
	t.MGTOOL = {}, e.extend(MGTOOL, {
		byteLength: function(e) {
			var t = e.match(/[^\x00-\x80]/g);
			return e.length + (t ? t.length : 0)
		},
		jsMbSubstr: function(e, t) {
			if(!e || !t) return "";
			var n = 0,
				o = 0,
				r = "",
				i = e.length;
			for(o = 0; i > o; o++) {
				if(n = e.charCodeAt(o) > 255 ? n += 2 : ++n, n > 2 * t) return r;
				r += e.charAt(o)
			}
			return e
		},
		formatMoney: function(e, t, n) {
			if(t = MGTOOL.empty(e) ? "2" : t, MGTOOL.empty(n)) return e.toFixed(t);
			var o = 0 > e ? "-" : "",
				r = parseInt(e = Math.abs(+e || 0).toFixed(t), 10) + "",
				i = (i = r.length) > 3 ? i % 3 : 0;
			return o + (i ? r.substr(0, i) + n : "") + r.substr(i).replace(/(\d{3})(?=\d)/g, "$1" + n) + (t ? "." + Math.abs(e - r).toFixed(t).slice(2) : "")
		}
	}), e.extend(MGTOOL, {
		emptyObj: function(e) {
			for(var t in e) return !1;
			return !0
		},
		empty: function(e) {
			return null == e || 0 === e.length
		},
		objToJson: function(e) {
			return JSON.stringify(e)
		}
	}), e.extend(MGTOOL, {
		setCookie: function(e, t, n) {
			n = n || {}, null === t && (t = "", n.expires = -1);
			var o = "";
			if(n.expires && ("number" == typeof n.expires || n.expires.toUTCString)) {
				var r;
				"number" == typeof n.expires ? (r = new Date, r.setTime(r.getTime() + 864e5 * n.expires)) : r = n.expires, o = "; expires=" + r.toUTCString()
			}
			var i = n.path ? "; path=" + n.path : "",
				u = n.secure ? "; secure" : "",
				a = "";
			n.domain ? a = "; domain=" + n.domain : (a = document.domain.toString().split("."), a = "; domain=." + a[1] + "." + a[2]), document.cookie = [e, "=", encodeURIComponent(t), o, i, a, u].join("")
		},
		getCookie: function(e) {
			var t = document.cookie.match(new RegExp("(^| )" + e + "=([^;]*)(;|$)"));
			return null !== t ? decodeURIComponent(t[2]) : ""
		},
		removeCookie: function(e) {
			MGTOOL.setCookie(e, null, {
				expires: -1
			})
		},
		setCacheCookie: function(t, n, o, r) {
			o = o || {}, null === n && (n = "");
			var i = "undefined" == typeof r ? MGTOOL.getCookie("__mgjuuid") : r;
			e.ajax({
				url: "/collect/uedcookie",
				type: "POST",
				timeout: 6e4,
				data: {
					cookiename: t,
					uuid: i,
					type: "set",
					value: n,
					lifetime: 86400 * o.expires
				},
				dataType: "json",
				success: function(e) {
					"" === e && alert(MGLANG.msgTimeout)
				}
			})
		},
		getCacheCookie: function(t, n) {
			var o = "undefined" == typeof n ? MGTOOL.getCookie("__mgjuuid") : n,
				r = "";
			return e.ajax({
				url: "/collect/uedcookie",
				type: "POST",
				timeout: 6e4,
				async: !1,
				data: {
					cookiename: t,
					uuid: o,
					type: "get"
				},
				dataType: "json",
				success: function(e) {
					var t = e.status.code;
					e.status.msg;
					if(1001 == t) {
						var n = e.result.data.value;
						r = n
					} else alert(MGLANG.msgTimeout)
				}
			}), r
		}
	}), e.extend(MGTOOL, {
		getQueryString: function(e, t) {
			t = "undefined" != typeof t ? t : location.href;
			var n = new RegExp("(^|\\?|&)" + e + "=([^&]*)(\\s|&|$)", "i");
			return n.test(t) ? RegExp.$2.replace(/\+/g, " ") : ""
		},
		getPicExtension: function(e) {
			return /(.+)\.(.+)/.exec(e) ? RegExp.$2 : ""
		},
		filterDomain: function(e) {
			var t = /http:\/\/[^\/]+/;
			return e.replace(t, "")
		}
	}), e.extend(MGTOOL, {
		throttleM: {
			isLoading: !1,
			throttoleXhr: function(e, t) {
				var n = this;
				if(!n.isLoading) {
					t = t || 500, n.isLoading = !0;
					var o = e();
					o.complete = function() {
						setTimeout(function() {
							n.isLoading = !1
						}, t)
					}
				}
			}
		}
	}), e.extend(MGTOOL, {
		getMsgLength: function(e) {
			var t = e.length;
			if(t > 0) {
				for(var n = 41, o = 140, r = 24, i = e, u = e.match(/http[s]?:\/\/[a-zA-Z0-9-]+(\.[a-zA-Z0-9]+)+([-A-Z0-9a-z_\$\.\+\!\*\(\)\/\/,:;@&=\?\~\#\%]*)*/gi) || [], a = 0, s = 0, c = u.length; c > s; s++) {
					var l = MGTOOL.byteLength(u[s]);
					/^(http:\/\/meilishuo.cn)/.test(u[s]) || (a += /^(http:\/\/)+(meilishuo.cn|meilishuo.com)/.test(u[s]) && n >= l ? l : o >= l ? r : l - o + r, i = i.replace(u[s], ""))
				}
				return Math.ceil((a + MGTOOL.byteLength(i)) / 2)
			}
			return 0
		},
		getAbsoluteLocation: function(n) {
			if(1 !== arguments.length || null === n) return null;
			var o = e(n),
				r = o.offset(),
				i = r.top,
				u = r.left,
				a = o.height(),
				s = e(t).height(),
				c = e(document).scrollTop(),
				l = i >= c && c + s >= i,
				g = i + a + 200 >= c && c + s >= i - 400;
			return {
				absoluteTop: i,
				absoluteLeft: u,
				isInView: l,
				isLoad: g
			}
		},
		distance2Bottom: function(n) {
			var o = e(document),
				r = e(t),
				i = o.scrollTop(),
				u = r.height(),
				a = o.height();
			return i + u + n >= a
		},
		isParent: function(e, t) {
			for(; e !== n && null !== e && "BODY" != e.tagName.toUpperCase();) {
				if(e == t) return !0;
				e = e.parentNode
			}
			return !1
		},
		template: function(e, t) {
			return doT.template(e)(t)
		},
		log: function(e) {
			t.console !== n && console.log(e)
		},
		dataFormat: function(e, t) {
			var n = {
				"M+": e.getMonth() + 1,
				"d+": e.getDate(),
				"h+": e.getHours(),
				"m+": e.getMinutes(),
				"s+": e.getSeconds(),
				"q+": Math.floor((e.getMonth() + 3) / 3),
				S: e.getMilliseconds()
			};
			/(y+)/.test(t) && (t = t.replace(RegExp.$1, (e.getFullYear() + "").substr(4 - RegExp.$1.length)));
			for(var o in n) new RegExp("(" + o + ")").test(t) && (t = t.replace(RegExp.$1, 1 == RegExp.$1.length ? n[o] : ("00" + n[o]).substr(("" + n[o]).length)));
			return t
		}
	}), e.extend(MGTOOL, {
		trim: function(t) {
			return e.trim(t)
		},
		getRequest: function(e, t) {
			return this.getQueryString(e, t)
		}
	})
}(jQuery, window);
window.MOGU = window.MOGU || {},
	function(t, n) {
		var e = {};
		e.Util = {
			mask: function() {
				var n = t(".light_box_fullbg");
				n.length <= 0 && (n = t(['<div class="light_box_fullbg"></div>'].join("")), t("body").append(n))
			},
			show: function(n, e) {
				var l, i, o, a = t("#vp_wrap"),
					c = t(".light_box_fullbg").eq(0);
				a.length <= 0 && (a = t(['<div class="vp_wrap" id="vp_wrap">', '<h5 class="vp_t"></h5>', '<a href="javascript:;" class="vp_cls">×</a>', '<div class="v_pop_box"></div>', "</div>"].join("")), t("body").append(a), c.off("click").on("click", function() {
					clearTimeout(o), a.addClass("vp_shake"), o = setTimeout(function() {
						a.removeClass("vp_shake")
					}, 500)
				})), e.isShowCloser ? a.find(".vp_cls").show() : a.find(".vp_cls").hide(), a.find(".vp_t").jsp(e.title), i = {
					alert: function(n) {
						return l = t(".vp_alert"), l.length <= 0 ? l = t(['<div class="vp_alert vp_inner">', '<p class="vp_cnt"></p>', '<a href="javascript:;" class="vp_btn vp_btn_' + n.btn.theme + ' vp_ok">' + n.btn.text + "</a>", "</div>"].join("")) : l.find(".vp_btn").removeClass("vp_btn_red").removeClass("vp_btn_normal").addClass("vp_btn_" + n.btn.theme).jsp(n.btn.text), l.show().find(".vp_cnt").jsp(n.content), l
					},
					confirm: function(n) {
						if(l = t(".vp_cfm"), l.length <= 0) l = t(['<div class="vp_cfm vp_inner">', '<p class="vp_cnt"></p>', '<a href="javascript:;" class="vp_btn vp_btn_' + n.btn1.theme + ' vp_ok">' + n.btn1.text + "</a>", '<a href="javascript:;" class="vp_btn vp_btn_' + n.btn2.theme + ' vp_cancel">' + n.btn2.text + "</a>", "</div>"].join(""));
						else {
							var e = l.find(".vp_btn");
							e.removeClass("vp_btn_red").removeClass("vp_btn_normal"), e.eq(0).addClass("vp_btn_" + n.btn1.theme).jsp(n.btn1.text), e.eq(1).addClass("vp_btn_" + n.btn2.theme).jsp(n.btn2.text)
						}
						return l.show().find(".vp_cnt").jsp(n.content), l
					}
				}, a.find(".v_pop_box").append(i[n](e)), a.css({
					display: "block",
					opacity: 0
				}).css({
					"margin-left": -a.width() / 2 - 1,
					"margin-top": -a.height() / 2 - 1,
					opacity: 1
				}), c.show()
			},
			close: function(n, e) {
				t(".light_box_fullbg").eq(0).hide(), t("#vp_wrap").find(".vp_inner").hide().end().hide(), void 0 !== e && "function" == typeof e && e(n)
			}
		}, t.alert = function(n, l, i) {
			var o = t.extend(!0, {
					title: "提示",
					content: n,
					btn: {
						text: "确定",
						theme: "red",
						val: void 0
					},
					isShowCloser: !0,
					close_val: void 0
				}, i),
				a = function() {
					t("#vp_wrap").off("click").on("click", ".vp_ok", function(t) {
						t.preventDefault(), e.Util.close(o.btn.val, l)
					}).on("click", ".vp_cls", function(t) {
						t.preventDefault(), e.Util.close(o.close_val, l)
					})
				};
			! function() {
				e.Util.mask(), e.Util.show("alert", o), a()
			}()
		}, t.confirm = function(n, l, i) {
			var o = t.extend(!0, {
					title: "提示",
					content: n,
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
				}, i),
				a = function() {
					t("#vp_wrap").off("click").on("click", ".vp_ok", function(t) {
						t.preventDefault(), e.Util.close(o.btn1.val, l)
					}).on("click", ".vp_cancel", function(t) {
						t.preventDefault(), e.Util.close(o.btn2.val, l)
					}).on("click", ".vp_cls", function(t) {
						t.preventDefault(), e.Util.close(o.close_val, l)
					})
				};
			! function() {
				e.Util.mask(), e.Util.show("confirm", o), a()
			}()
		}, n.MOGU.alert = t.alert, n.MOGU.confirm = t.confirm
	}(jQuery, window);
var MOGU = MOGU || {};
! function(t) {
	MOGU.Globe_Textarea_Auto_Height = function(e) {
		var o = e.height(),
			i = function() {
				0 > o && (o = e.height()), (t.browser.mozilla || t.browser.safari) && e.height(o);
				var i = e[0].scrollHeight,
					n = o > i ? o : i;
				n = 1.5 * o > n ? o : i, e.height(n)
			};
		e.bind("keyup", i).bind("input", i).bind("propertychange", i).bind("focus", i)
	}, MOGU.Globe_Goods_URL_Support = function(t) {
		var e = /item(.[\w]+)?.taobao.com\/(.?)[item.htm|item_num_id|item_detail|itemID|item_id|default_item_id]/i,
			o = /detail.tmall/i,
			i = /auction\d?.paipai.com/i,
			n = /buy.caomeipai.com\/goods/i,
			a = /www.360buy.com\/product/i,
			c = /product.dangdang.com\/Product.aspx\?product_id=/i,
			r = /book.360buy.com/i,
			s = /www.vancl.com\/StyleDetail/i,
			u = /www.vancl.com\/Product/i,
			l = /vt.vancl.com\/item/i,
			d = /item.vancl.com\/\d+/i,
			m = /item.vt.vancl.com\/\d+/i,
			w = /(mbaobao.com\/pshow)|(mbaobao.com\/item)/i,
			f = /item.buy.qq.com\/item/i,
			_ = /[www|us].topshop.com\/webapp\/wcs\/stores\/servlet\/ProductDisplay/i,
			p = /quwan.com\/goods/i,
			b = /nala.com.cn\/product/i,
			h = /maymay.cn\/pitem/i,
			v = /asos.com/i,
			g = /www.100f1.com\/ProductInfo_/i,
			y = /www.gaojie.com\/product/i,
			G = /a.m.taobao.com\/i/i,
			O = /www.51yugou.com\//i,
			M = /www.1mall.com\//i,
			U = /www.yihaodian.com\//i,
			k = /www.xipin.me\//i,
			j = /www.nuandao.com\//i,
			x = /www.rosebeauty.com.cn\//i,
			C = /www.hmeili.com\//i,
			T = /www.yueji.com\//i,
			L = /www.yougou.com\//i,
			S = /cn.shopbop.com\//i,
			I = /item.jd.com\//i,
			P = /[www|shop].meilishuo.com(.*)\/detail/i;
		return e.test(t) || o.test(t) || r.test(t) || a.test(t) || i.test(t) || n.test(t) || c.test(t) || s.test(t) || u.test(t) || l.test(t) || d.test(t) || m.test(t) || w.test(t) || _.test(t) || p.test(t) || b.test(t) || h.test(t) || v.test(t) || g.test(t) || y.test(t) || f.test(t) || G.test(t) || O.test(t) || U.test(t) || k.test(t) || j.test(t) || x.test(t) || C.test(t) || T.test(t) || L.test(t) || M.test(t) || S.test(t) || I.test(t) || P.test(t)
	}, MOGU.Globe_Input_Text = function(e, o) {
		o = o || e.val(), e.focus(function() {
			var e = t(this);
			t.trim(e.val()) == o && e.val(""), e.css("color", "#000")
		}), e.blur(function() {
			var e = t(this);
			"" == t.trim(e.val()) && (e.val(o), e.css("color", "#ccc"))
		})
	}, MOGU.Globe_Input_Text_Hide = function(e) {
		e.focus(function() {
			var e = t(this);
			t.trim(e.val()) == t.trim(e.attr("def-v")) && e.val(""), e.css("color", "#000")
		}), e.blur(function() {
			var e = t(this);
			"" == t.trim(e.val()) && (e.val(e.attr("def-v")), e.css("color", "#ccc"))
		})
	}, MOGU.WB_Word_Count = function(e, o, i) {
		var n = i ? i : 140;
		if(t("#" + e)[0]) {
			var a = function() {
				var i = 0;
				i = o ? MGTOOL.getMsgLength(t("#" + o).val()) : MGTOOL.getMsgLength(t("#" + e).find(".pub_txt").val());
				var a = n - i;
				0 == i ? t("#" + e).find(".word_count").jsp(n) : i > n ? (t("#" + e).find(".word_count_wrap").jsp('您已超过<em class="word_count"></em>个字').find(".word_count").jsp(Math.abs(a)), t("#" + e).find(".word_count_wrap").show(), t("#" + e).find(".word_count").addClass("out")) : (t("#" + e).find(".word_count_wrap").jsp('还可以输入<em class="word_count"></em>个字').find(".word_count").jsp(a), t("#" + e).find(".word_count").removeClass("out"))
			};
			o ? t("#" + o).bind("keyup", a).bind("input", a).bind("propertychange", a) : t("#" + e).find(".pub_txt").bind("keyup", a).bind("input", a).bind("propertychange", a)
		}
	}, MOGU.Globe_Range_Input = function(t) {
		if(t[0].createTextRange) {
			var e = t[0].createTextRange();
			e.moveEnd("character", t.val().length), e.moveStart("character", t.val().length), e.select()
		} else t[0].setSelectionRange(t.val().length, t.val().length), t.focus()
	}, MOGU.Globe_Check_Login = function() {
		return "" == MOGUPROFILE.userid ? (MOGU.user_handsome_login_init(), MOGU.user_handsome_login(), !1) : !0
	}, MOGU.Globe_Short_Link_From = function() {
		t(".mg_slink").live("click", function() {
			var e = window.location.toString();
			if(!(e.indexOf("is_qzone=1") >= 0)) {
				var o = this,
					i = o.href,
					n = t(o).attr("s"),
					a = t(o).attr("c");
				"" == a && (a = MOGUPROFILE.userid);
				var c = i,
					r = "";
				r = -1 == i.indexOf("?") ? "?c=" + a + "&s=" + n : "&c=" + a + "&s=" + n, c += r, o.href = c, setTimeout(function() {
					o.href = i
				}, 500)
			}
		})
	}, MOGU.Globe_Short_Link_From(), MOGU.Globe_Bind_Keybord_Submit = function(e, o, i) {
		i = i || "need_focus", "need_focus" == i && (e.focus(function() {
			t("body").unbind("keydown"), t("body").bind("keydown", function(t) {
				t.ctrlKey && 13 == t.keyCode && o.click()
			})
		}), e.blur(function() {
			t("body").unbind("keydown")
		})), "not_need_focus" == i && t(document).bind("keydown", function(e) {
			e.ctrlKey && 13 == e.keyCode && (o.click(), t("body").unbind("keydown"))
		})
	}, MOGU.GLobe_GetObj_Length = function(t) {
		var e, o = 0;
		for(e in t) t.hasOwnProperty(e) && o++;
		return o
	}, MOGU.Empty_Message_Tip = function(t) {
		var e = t ? t : {},
			o = e.pub_obj,
			i = null,
			n = 0;
		i = setInterval(function() {
			n++, 6 == n ? (clearInterval(i), o.focus()) : n % 2 == 0 ? o.addClass("empty_tip") : o.removeClass("empty_tip")
		}, 120)
	}, MOGU.Defult_Post_data = function(e) {
		if(e instanceof jQuery || (e = t(e)), e.hasClass("disable")) return !1;
		e.addClass("disable");
		var o = e.data(),
			i = o.url || "";
		if("" !== i) {
			var n = function(t) {
				1001 === t.status.code ? window.location.reload() : alert(t.status.msg)
			};
			jQuery.ajax({
				url: i,
				type: "POST",
				dataType: "json",
				data: o,
				complete: function() {
					e.removeClass("disable")
				},
				success: function(t) {
					n(t)
				}
			})
		}
	}, MOGU.Globe_Trace_Log = function(e) {
		var o = log_stat_url_tmp + "&rerefer=" + encodeURIComponent(window.location.href) + "&tracename=" + e;
		t.ajax({
			url: o,
			type: "post",
			dataType: "jsonp",
			jsonpCallback: "logCallBack",
			success: function() {}
		})
	}, t.fn.serializeObject = function() {
		var e = {},
			o = this.serializeArray();
		return t.each(o, function() {
			void 0 !== e[this.name] ? (e[this.name].push || (e[this.name] = [e[this.name]]), e[this.name].push(this.value || "")) : e[this.name] = this.value || ""
		}), e
	}, MOGU.SerializeFormObject = function(t) {
		t.serializeObject()
	}
}(jQuery), $(function() {
		$(document).off("click", ".__trace__").on("click", ".__trace__", function(t) {
			var e = $(this).attr("data-trace");
			e && MOGU.Globe_Trace_Log(e)
		})
	}),
	function() {
		for(var t, e = function() {}, o = ["assert", "clear", "count", "debug", "dir", "dirxml", "error", "exception", "group", "groupCollapsed", "groupEnd", "info", "log", "markTimeline", "profile", "profileEnd", "table", "time", "timeEnd", "timeStamp", "trace", "warn"], i = o.length, n = window.console = window.console || {}; i--;) t = o[i], n[t] || (n[t] = e)
	}();
! function(e, t) {
	"object" == typeof exports && "object" == typeof module ? module.exports = t() : "function" == typeof define && define.amd ? define("pages/pctest/index", [], t) : "object" == typeof exports ? exports["pages/pctest/index"] = t() : e["pages/pctest/index"] = t()
}(this, function() {
	return function(e) {
		function t(r) {
			if(n[r]) return n[r].exports;
			var i = n[r] = {
				exports: {},
				id: r,
				loaded: !1
			};
			return e[r].call(i.exports, i, i.exports, t), i.loaded = !0, i.exports
		}
		var n = {};
		return t.m = e, t.c = n, t.p = "",
			function() {
				if("undefined" != typeof window) {
					var e = "webpack-livereload-plugin-script";
					if(!document.getElementById(e)) {
						var t = document.createElement("script");
						t.id = e, t.async = !0, t.src = "js/livereload.js", document.head.appendChild(t)
					}
				}
			}(), t(0)
	}([function(e, t, n) {
		"use strict";

		function r(e) {
			return e && e.__esModule ? e : {
				"default": e
			}
		}
		var i = n(1),
			o = r(i),
			s = function() {
				$(document).on("click", ".mlstalk_widget_btn", function(e) {
					if(window.MoGu && !window.MoGu.data.userData) return location.href = "http://account.meilishuo.com/user/login?redirect=" + encodeURIComponent(location.href), !1;
					e.preventDefault();
					var t = e.currentTarget,
						n = $(t).data("toid") || "",
						r = $(t).data("tid") || "";
					(0, o["default"])(n, r)
				})
			};
		s()
	}, function(e, t, n) {
		"use strict";

		function r(e) {
			return e && e.__esModule ? e : {
				"default": e
			}
		}
		t.__esModule = !0;
		var i = n(2),
			o = r(i);
		n(5);
		var s = function(e, t) {
			(0, o["default"])(e, t);
			var n = $("#J-imContainer");
			n.show(), n.contents().focus()
		};
		window._openIm = s, t["default"] = s, e.exports = t["default"]
	}, function(e, t, n) {
		"use strict";

		function r(e) {
			return e && e.__esModule ? e : {
				"default": e
			}
		}
		t.__esModule = !0;
		var i = n(3),
			o = r(i),
			s = null,
			a = {
				getPos: function() {
					function e() {
						var e = void 0;
						return s ? s : window.localStorage && (e = window.localStorage.getItem("IM_POSITION")) ? JSON.parse(e) : {
							x: $(window).width() - 590,
							y: $(window).height() - 440
						}
					}
					return e
				}(),
				setPos: function() {
					function e(e, t) {
						return s = {
							x: e,
							y: t
						}, window.localStorage && window.localStorage.setItem("IM_POSITION", JSON.stringify(s)), !0
					}
					return e
				}()
			},
			u = null;
		t["default"] = function(e, t) {
			var n = "http://webim.meilishuo.com/pc";
			$("#J-imContainer").length || ! function() {
				var e = "left:" + a.getPos().x + "px; top:" + a.getPos().y + "px",
					t = '<div id="J-imContainer" class="im-frame-container" style="' + e + '">\n        <div id="J-closeImFrameBtn" class="im-frame-btn"></div>\n        <div id="J-dragImHandle" class="im-frame-drag"></div>\n        <iframe id="J-openImFrame" class="im-frame-box" frameborder="no" allowtransparency="true">\n        </iframe>\n      </div>';
				$("body").append(t), $("#J-closeImFrameBtn").on("click", function() {
					$("#J-imContainer").hide()
				});
				var n = (0, o["default"])("#J-imContainer").handle("#J-dragImHandle").setMax({
					x: $(window).width(),
					y: $(window).height()
				}).start();
				n.on("end", function(e) {
					a.setPos(e.pos.x, e.pos.y)
				}), $(window).resize(function() {
					u && window.clearTimeout(u), u = setTimeout(function() {
						var e = $(window).width(),
							t = $(window).height();
						console.log(e, t);
						var r = a.getPos();
						r.x + 620 > e && (r.x = e - 620), r.x < 40 && (r.x = 40), r.y < 0 && (r.y = 40), r.y + 470 > t && (r.y = t - 470), a.setPos(r.x, r.y), n.setMax({
							x: e,
							y: t
						}), $("#J-imContainer").css({
							left: r.x,
							top: r.y
						})
					}, 100)
				})
			}(), $("#J-openImFrame").attr("src", n + "#userId=" + e + "&gid=" + t)
		}, e.exports = t["default"]
	}, function(e, t, n) {
		"use strict";

		function r(e) {
			return e && e.__esModule ? e : {
				"default": e
			}
		}

		function i(e, t) {
			if(!(e instanceof t)) throw new TypeError("Cannot call a class as a function")
		}

		function o(e, t) {
			if(!e) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
			return !t || "object" != typeof t && "function" != typeof t ? e : t
		}

		function s(e, t) {
			if("function" != typeof t && null !== t) throw new TypeError("Super expression must either be null or a function, not " + typeof t);
			e.prototype = Object.create(t && t.prototype, {
				constructor: {
					value: e,
					enumerable: !1,
					writable: !0,
					configurable: !0
				}
			}), t && (Object.setPrototypeOf ? Object.setPrototypeOf(e, t) : e.__proto__ = t)
		}
		t.__esModule = !0;
		var a = n(4),
			u = r(a),
			c = null,
			l = !!("ontouchstart" in document.documentElement),
			f = function(e, t) {
				return window.getComputedStyle ? window.getComputedStyle(e, null).getPropertyValue(t) : e.currentStyle[t].getPropertyValue(t)
			},
			d = function(e, t, n) {
				if(t instanceof Array, !n) {
					var r = f(e, t);
					return parseFloat(r)
				}
				e.style[t] = n
			},
			p = function(e) {
				return e && "string" == typeof e ? $ ? $(e)[0] : document.querySelectorAll ? document.querySelectorAll(e)[0] : /^#/.test(e) ? document.getElementById(e.replace(/^#/, "")) : /^./.test(e) ? document.getElementsByClassName(e.replace(/^./, "")) : document.getElementsByName(e) : e
			},
			h = {
				start: "touchstart",
				move: "touchmove",
				end: "touchend"
			},
			v = {
				start: "mousedown",
				move: "mousemove",
				end: "mouseup"
			},
			m = l ? h : v,
			y = function(e, t, n) {
				return e.addEventListener ? e.addEventListener(t, n, !1) : e.attachEvent && e.attachEvent("on" + t, function() {
					var t = window.event;
					t.target = t.srcElement, t.currentTarget = e, n.call(e, t)
				}), e
			},
			g = function(e, t, n) {
				return e.removeEventListener ? e.removeEventListener(t, n, !1) : e.detachEvent && e.detachEvent("on" + t, n), e
			},
			x = function(e) {
				function t(n) {
					i(this, t);
					var r = o(this, e.call(this));
					return r.start = function() {
						return r.unbind(), r._client = {
							x: window.innerWidth,
							y: window.innerHeight
						}, r._eventHandler = function(e) {
							var t = r.current("left") || 0,
								n = r.current("top") || 0,
								i = function() {
									function i(i) {
										var o = void 0,
											s = void 0,
											a = void 0,
											u = void 0;
										l ? 1 === e.touches.length && (o = i.touches[0].clientX - e.touches[0].clientX, s = i.touches[0].clientY - e.touches[0].clientY) : (o = i.clientX - e.clientX, s = i.clientY - e.clientY), a = t + o, u = n + s, r.pos.dX = a - r.current("left"), r.pos.dY = u - r.current("top"), r.maxX && (0 > a ? a = 0 : a >= 0 && a > r.maxX && (a = r.maxX)), r.maxY && (0 > u ? u = 0 : u >= 0 && u > r.maxY && (u = r.maxY)), "x" === r._axis ? d(r.el, "left", a + "px") : "y" === r._axis ? d(r.el, "top", u + "px") : (d(r.el, "left", a + "px"), d(r.el, "top", u + "px")), r.getPos(), r.emit("dragging", r), i.preventDefault ? (i.preventDefault(), i.stopPropagation()) : (i.returnValue = !1, i.cancelBubble = !0)
									}
									return i
								}(),
								o = function() {
									function e() {
										r.emit("end", r), a()
									}
									return e
								}(),
								s = function() {
									function e(e) {
										e.preventDefault ? (e.preventDefault(), e.stopPropagation()) : (e.returnValue = !1, e.cancelBubble = !0)
									}
									return e
								}(),
								a = function() {
									function e() {
										g(document, m.move, i), g(document, m.end, o), g(document, "selectstart", s), g(r._handle, "dragstart", s)
									}
									return e
								}();
							r.emit("start", r), document.body.focus(), y(document, "selectstart", s), y(r._handle, "dragstart", s), y(document, m.move, i), y(document, m.end, o)
						}, r.getPos(), r._handle || (r._handle = r.el), y(r._handle, m.start, r._eventHandler), r
					}, r.el = p(n), r._axis = "both", r.pos = {}, r
				}
				return s(t, e), t.prototype.current = function() {
					function e(e, t) {
						return d(this.el, e, t)
					}
					return e
				}(), t.prototype.setMax = function() {
					function e(e) {
						if(e.x && e.x > 0) {
							var t = d(this.el, "width");
							this.maxX = e.x - t
						}
						if(e.y && e.y > 0) {
							var n = d(this.el, "height");
							this.maxY = e.y - n
						}
						return this
					}
					return e
				}(), t.prototype.axis = function() {
					function e(e) {
						return -1 !== ["x", "y", "both"].indexOf(e) && (this._axis = e), this
					}
					return e
				}(), t.prototype.handle = function() {
					function e(e) {
						return this._handle = p(e), this
					}
					return e
				}(), t.prototype.getPos = function() {
					function e(e) {
						return this.pos.x = this.current("left"), this.pos.y = this.current("top"), e && "function" == typeof e && e.apply(this, this.pos), this
					}
					return e
				}(), t.prototype.unbind = function() {
					function e() {
						return this._eventHandler ? (g(this.el, m.start, this._eventHandler), g(this._handle, m.start, this._eventHandler), this) : this
					}
					return e
				}(), t
			}(u["default"]);
		t["default"] = function(e) {
			return c || (c = new x(e)), c
		}, e.exports = t["default"]
	}, function(e, t) {
		function n() {
			this._events = this._events || {}, this._maxListeners = this._maxListeners || void 0
		}

		function r(e) {
			return "function" == typeof e
		}

		function i(e) {
			return "number" == typeof e
		}

		function o(e) {
			return "object" == typeof e && null !== e
		}

		function s(e) {
			return void 0 === e
		}
		e.exports = n, n.EventEmitter = n, n.prototype._events = void 0, n.prototype._maxListeners = void 0, n.defaultMaxListeners = 10, n.prototype.setMaxListeners = function(e) {
			if(!i(e) || 0 > e || isNaN(e)) throw TypeError("n must be a positive number");
			return this._maxListeners = e, this
		}, n.prototype.emit = function(e) {
			var t, n, i, a, u, c;
			if(this._events || (this._events = {}), "error" === e && (!this._events.error || o(this._events.error) && !this._events.error.length)) {
				if(t = arguments[1], t instanceof Error) throw t;
				var l = new Error('Uncaught, unspecified "error" event. (' + t + ")");
				throw l.context = t, l
			}
			if(n = this._events[e], s(n)) return !1;
			if(r(n)) switch(arguments.length) {
				case 1:
					n.call(this);
					break;
				case 2:
					n.call(this, arguments[1]);
					break;
				case 3:
					n.call(this, arguments[1], arguments[2]);
					break;
				default:
					a = Array.prototype.slice.call(arguments, 1), n.apply(this, a)
			} else if(o(n))
				for(a = Array.prototype.slice.call(arguments, 1), c = n.slice(), i = c.length, u = 0; i > u; u++) c[u].apply(this, a);
			return !0
		}, n.prototype.addListener = function(e, t) {
			var i;
			if(!r(t)) throw TypeError("listener must be a function");
			return this._events || (this._events = {}), this._events.newListener && this.emit("newListener", e, r(t.listener) ? t.listener : t), this._events[e] ? o(this._events[e]) ? this._events[e].push(t) : this._events[e] = [this._events[e], t] : this._events[e] = t, o(this._events[e]) && !this._events[e].warned && (i = s(this._maxListeners) ? n.defaultMaxListeners : this._maxListeners, i && i > 0 && this._events[e].length > i && (this._events[e].warned = !0, console.error("(node) warning: possible EventEmitter memory leak detected. %d listeners added. Use emitter.setMaxListeners() to increase limit.", this._events[e].length), "function" == typeof console.trace && console.trace())), this
		}, n.prototype.on = n.prototype.addListener, n.prototype.once = function(e, t) {
			function n() {
				this.removeListener(e, n), i || (i = !0, t.apply(this, arguments))
			}
			if(!r(t)) throw TypeError("listener must be a function");
			var i = !1;
			return n.listener = t, this.on(e, n), this
		}, n.prototype.removeListener = function(e, t) {
			var n, i, s, a;
			if(!r(t)) throw TypeError("listener must be a function");
			if(!this._events || !this._events[e]) return this;
			if(n = this._events[e], s = n.length, i = -1, n === t || r(n.listener) && n.listener === t) delete this._events[e], this._events.removeListener && this.emit("removeListener", e, t);
			else if(o(n)) {
				for(a = s; a-- > 0;)
					if(n[a] === t || n[a].listener && n[a].listener === t) {
						i = a;
						break
					}
				if(0 > i) return this;
				1 === n.length ? (n.length = 0, delete this._events[e]) : n.splice(i, 1), this._events.removeListener && this.emit("removeListener", e, t)
			}
			return this
		}, n.prototype.removeAllListeners = function(e) {
			var t, n;
			if(!this._events) return this;
			if(!this._events.removeListener) return 0 === arguments.length ? this._events = {} : this._events[e] && delete this._events[e], this;
			if(0 === arguments.length) {
				for(t in this._events) "removeListener" !== t && this.removeAllListeners(t);
				return this.removeAllListeners("removeListener"), this._events = {}, this
			}
			if(n = this._events[e], r(n)) this.removeListener(e, n);
			else if(n)
				for(; n.length;) this.removeListener(e, n[n.length - 1]);
			return delete this._events[e], this
		}, n.prototype.listeners = function(e) {
			var t;
			return t = this._events && this._events[e] ? r(this._events[e]) ? [this._events[e]] : this._events[e].slice() : []
		}, n.prototype.listenerCount = function(e) {
			if(this._events) {
				var t = this._events[e];
				if(r(t)) return 1;
				if(t) return t.length
			}
			return 0
		}, n.listenerCount = function(e, t) {
			return e.listenerCount(t)
		}
	}, function(e, t, n) {
		var r = n(6);
		"string" == typeof r && (r = [
			[e.id, r, ""]
		]);
		n(8)(r, {});
		r.locals && (e.exports = r.locals)
	}, function(e, t, n) {
		t = e.exports = n(7)(), t.push([e.id, ".im-frame-container {\n  width: 580px;\n  height: 430px;\n  position: fixed;\n  z-index: 1000;\n  display: none;\n  left: 10px;\n  top: 10px;\n}\n.im-frame-container .im-frame-box {\n  width: 100%;\n  height: 100%;\n  border: none;\n}\n.im-frame-container .im-frame-drag {\n  width: 470px;\n  height: 32px;\n  position: absolute;\n  z-index: 3;\n  left: 75px;\n  top: 24px;\n}\n.im-frame-container .im-frame-btn {\n  width: 32px;\n  height: 32px;\n  position: absolute;\n  right: 0;\n  top: 24px;\n  z-index: 2;\n  cursor: pointer;\n  opacity: 0;\n  background-color: rgba(255, 102, 153, 0);\n}\n", ""])
	}, function(e, t) {
		e.exports = function() {
			var e = [];
			return e.toString = function() {
				for(var e = [], t = 0; t < this.length; t++) {
					var n = this[t];
					n[2] ? e.push("@media " + n[2] + "{" + n[1] + "}") : e.push(n[1])
				}
				return e.join("")
			}, e.i = function(t, n) {
				"string" == typeof t && (t = [
					[null, t, ""]
				]);
				for(var r = {}, i = 0; i < this.length; i++) {
					var o = this[i][0];
					"number" == typeof o && (r[o] = !0)
				}
				for(i = 0; i < t.length; i++) {
					var s = t[i];
					"number" == typeof s[0] && r[s[0]] || (n && !s[2] ? s[2] = n : n && (s[2] = "(" + s[2] + ") and (" + n + ")"), e.push(s))
				}
			}, e
		}
	}, function(e, t, n) {
		function r(e, t) {
			for(var n = 0; n < e.length; n++) {
				var r = e[n],
					i = p[r.id];
				if(i) {
					i.refs++;
					for(var o = 0; o < i.parts.length; o++) i.parts[o](r.parts[o]);
					for(; o < r.parts.length; o++) i.parts.push(c(r.parts[o], t))
				} else {
					for(var s = [], o = 0; o < r.parts.length; o++) s.push(c(r.parts[o], t));
					p[r.id] = {
						id: r.id,
						refs: 1,
						parts: s
					}
				}
			}
		}

		function i(e) {
			for(var t = [], n = {}, r = 0; r < e.length; r++) {
				var i = e[r],
					o = i[0],
					s = i[1],
					a = i[2],
					u = i[3],
					c = {
						css: s,
						media: a,
						sourceMap: u
					};
				n[o] ? n[o].parts.push(c) : t.push(n[o] = {
					id: o,
					parts: [c]
				})
			}
			return t
		}

		function o(e, t) {
			var n = m(),
				r = x[x.length - 1];
			if("top" === e.insertAt) r ? r.nextSibling ? n.insertBefore(t, r.nextSibling) : n.appendChild(t) : n.insertBefore(t, n.firstChild), x.push(t);
			else {
				if("bottom" !== e.insertAt) throw new Error("Invalid value for parameter 'insertAt'. Must be 'top' or 'bottom'.");
				n.appendChild(t)
			}
		}

		function s(e) {
			e.parentNode.removeChild(e);
			var t = x.indexOf(e);
			t >= 0 && x.splice(t, 1)
		}

		function a(e) {
			var t = document.createElement("style");
			return t.type = "text/css", o(e, t), t
		}

		function u(e) {
			var t = document.createElement("link");
			return t.rel = "stylesheet", o(e, t), t
		}

		function c(e, t) {
			var n, r, i;
			if(t.singleton) {
				var o = g++;
				n = y || (y = a(t)), r = l.bind(null, n, o, !1), i = l.bind(null, n, o, !0)
			} else e.sourceMap && "function" == typeof URL && "function" == typeof URL.createObjectURL && "function" == typeof URL.revokeObjectURL && "function" == typeof Blob && "function" == typeof btoa ? (n = u(t), r = d.bind(null, n), i = function() {
				s(n), n.href && URL.revokeObjectURL(n.href)
			}) : (n = a(t), r = f.bind(null, n), i = function() {
				s(n)
			});
			return r(e),
				function(t) {
					if(t) {
						if(t.css === e.css && t.media === e.media && t.sourceMap === e.sourceMap) return;
						r(e = t)
					} else i()
				}
		}

		function l(e, t, n, r) {
			var i = n ? "" : r.css;
			if(e.styleSheet) e.styleSheet.cssText = _(t, i);
			else {
				var o = document.createTextNode(i),
					s = e.childNodes;
				s[t] && e.removeChild(s[t]), s.length ? e.insertBefore(o, s[t]) : e.appendChild(o)
			}
		}

		function f(e, t) {
			var n = t.css,
				r = t.media;
			if(r && e.setAttribute("media", r), e.styleSheet) e.styleSheet.cssText = n;
			else {
				for(; e.firstChild;) e.removeChild(e.firstChild);
				e.appendChild(document.createTextNode(n))
			}
		}

		function d(e, t) {
			var n = t.css,
				r = t.sourceMap;
			r && (n += "\n/*# sourceMappingURL=data:application/json;base64," + btoa(unescape(encodeURIComponent(JSON.stringify(r)))) + " */");
			var i = new Blob([n], {
					type: "text/css"
				}),
				o = e.href;
			e.href = URL.createObjectURL(i), o && URL.revokeObjectURL(o)
		}
		var p = {},
			h = function(e) {
				var t;
				return function() {
					return "undefined" == typeof t && (t = e.apply(this, arguments)), t
				}
			},
			v = h(function() {
				return /msie [6-9]\b/.test(window.navigator.userAgent.toLowerCase())
			}),
			m = h(function() {
				return document.head || document.getElementsByTagName("head")[0]
			}),
			y = null,
			g = 0,
			x = [];
		e.exports = function(e, t) {
			t = t || {}, "undefined" == typeof t.singleton && (t.singleton = v()), "undefined" == typeof t.insertAt && (t.insertAt = "bottom");
			var n = i(e);
			return r(n, t),
				function(e) {
					for(var o = [], s = 0; s < n.length; s++) {
						var a = n[s],
							u = p[a.id];
						u.refs--, o.push(u)
					}
					if(e) {
						var c = i(e);
						r(c, t)
					}
					for(var s = 0; s < o.length; s++) {
						var u = o[s];
						if(0 === u.refs) {
							for(var l = 0; l < u.parts.length; l++) u.parts[l]();
							delete p[u.id]
						}
					}
				}
		};
		var _ = function() {
			var e = [];
			return function(t, n) {
				return e[t] = n, e.filter(Boolean).join("\n")
			}
		}()
	}])
}), "function" == typeof define && define.amd && require(["pages/pctest/index"]);
var swfobject = function() {
	function e() {
		if(!G) {
			try {
				var e = M.getElementsByTagName("body")[0].appendChild(h("span"));
				e.parentNode.removeChild(e)
			} catch(t) {
				return
			}
			G = !0;
			for(var n = R.length, a = 0; n > a; a++) R[a]()
		}
	}

	function t(e) {
		G ? e() : R[R.length] = e
	}

	function n(e) {
		if(typeof x.addEventListener != L) x.addEventListener("load", e, !1);
		else if(typeof M.addEventListener != L) M.addEventListener("load", e, !1);
		else if(typeof x.attachEvent != L) m(x, "onload", e);
		else if("function" == typeof x.onload) {
			var t = x.onload;
			x.onload = function() {
				t(), e()
			}
		} else x.onload = e
	}

	function a() {
		P ? i() : r()
	}

	function i() {
		var e = M.getElementsByTagName("body")[0],
			t = h(k);
		t.setAttribute("type", O);
		var n = e.appendChild(t);
		if(n) {
			var a = 0;
			! function() {
				if(typeof n.GetVariable != L) {
					var i = n.GetVariable("$version");
					i && (i = i.split(" ")[1].split(","), X.pv = [parseInt(i[0], 10), parseInt(i[1], 10), parseInt(i[2], 10)])
				} else if(10 > a) return a++, void setTimeout(arguments.callee, 10);
				e.removeChild(t), n = null, r()
			}()
		} else r()
	}

	function r() {
		var e = D.length;
		if(e > 0)
			for(var t = 0; e > t; t++) {
				var n = D[t].id,
					a = D[t].callbackFn,
					i = {
						success: !1,
						id: n
					};
				if(X.pv[0] > 0) {
					var r = y(n);
					if(r)
						if(!w(D[t].swfVersion) || X.wk && X.wk < 312)
							if(D[t].expressInstall && l()) {
								var f = {};
								f.data = D[t].expressInstall, f.width = r.getAttribute("width") || "0", f.height = r.getAttribute("height") || "0", r.getAttribute("class") && (f.styleclass = r.getAttribute("class")), r.getAttribute("align") && (f.align = r.getAttribute("align"));
								for(var d = {}, u = r.getElementsByTagName("param"), p = u.length, v = 0; p > v; v++) "movie" != u[v].getAttribute("name").toLowerCase() && (d[u[v].getAttribute("name")] = u[v].getAttribute("value"));
								s(f, d, n, a)
							} else c(r), a && a(i);
					else b(n, !0), a && (i.success = !0, i.ref = o(n), a(i))
				} else if(b(n, !0), a) {
					var h = o(n);
					h && typeof h.SetVariable != L && (i.success = !0, i.ref = h), a(i)
				}
			}
	}

	function o(e) {
		var t = null,
			n = y(e);
		if(n && "OBJECT" == n.nodeName)
			if(typeof n.SetVariable != L) t = n;
			else {
				var a = n.getElementsByTagName(k)[0];
				a && (t = a)
			}
		return t
	}

	function l() {
		return !J && w("6.0.65") && (X.win || X.mac) && !(X.wk && X.wk < 312)
	}

	function s(e, t, n, a) {
		J = !0, A = a || null, N = {
			success: !1,
			id: n
		};
		var i = y(n);
		if(i) {
			"OBJECT" == i.nodeName ? (E = f(i), S = null) : (E = i, S = n), e.id = F, (typeof e.width == L || !/%$/.test(e.width) && parseInt(e.width, 10) < 310) && (e.width = "310"), (typeof e.height == L || !/%$/.test(e.height) && parseInt(e.height, 10) < 137) && (e.height = "137"), M.title = M.title.slice(0, 47) + " - Flash Player Installation";
			var r = X.ie && X.win ? "ActiveX" : "PlugIn",
				o = "MMredirectURL=" + x.location.toString().replace(/&/g, "%26") + "&MMplayerType=" + r + "&MMdoctitle=" + M.title;
			if(typeof t.flashvars != L ? t.flashvars += "&" + o : t.flashvars = o, X.ie && X.win && 4 != i.readyState) {
				var l = h("div");
				n += "SWFObjectNew", l.setAttribute("id", n), i.parentNode.insertBefore(l, i), i.style.display = "none",
					function() {
						4 == i.readyState ? i.parentNode.removeChild(i) : setTimeout(arguments.callee, 10)
					}()
			}
			d(e, t, n)
		}
	}

	function c(e) {
		if(X.ie && X.win && 4 != e.readyState) {
			var t = h("div");
			e.parentNode.insertBefore(t, e), t.parentNode.replaceChild(f(e), t), e.style.display = "none",
				function() {
					4 == e.readyState ? e.parentNode.removeChild(e) : setTimeout(arguments.callee, 10)
				}()
		} else e.parentNode.replaceChild(f(e), e)
	}

	function f(e) {
		var t = h("div");
		if(X.win && X.ie) t.innerHTML = e.innerHTML;
		else {
			var n = e.getElementsByTagName(k)[0];
			if(n) {
				var a = n.childNodes;
				if(a)
					for(var i = a.length, r = 0; i > r; r++) 1 == a[r].nodeType && "PARAM" == a[r].nodeName || 8 == a[r].nodeType || t.appendChild(a[r].cloneNode(!0))
			}
		}
		return t
	}

	function d(e, t, n) {
		var a, i = y(n);
		if(X.wk && X.wk < 312) return a;
		if(i)
			if(typeof e.id == L && (e.id = n), X.ie && X.win) {
				var r = "";
				for(var o in e) e[o] != Object.prototype[o] && ("data" == o.toLowerCase() ? t.movie = e[o] : "styleclass" == o.toLowerCase() ? r += ' class="' + e[o] + '"' : "classid" != o.toLowerCase() && (r += " " + o + '="' + e[o] + '"'));
				var l = "";
				for(var s in t) t[s] != Object.prototype[s] && (l += '<param name="' + s + '" value="' + t[s] + '" />');
				i.outerHTML = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"' + r + ">" + l + "</object>", W[W.length] = e.id, a = y(e.id)
			} else {
				var c = h(k);
				c.setAttribute("type", O);
				for(var f in e) e[f] != Object.prototype[f] && ("styleclass" == f.toLowerCase() ? c.setAttribute("class", e[f]) : "classid" != f.toLowerCase() && c.setAttribute(f, e[f]));
				for(var d in t) t[d] != Object.prototype[d] && "movie" != d.toLowerCase() && u(c, d, t[d]);
				i.parentNode.replaceChild(c, i), a = c
			}
		return a
	}

	function u(e, t, n) {
		var a = h("param");
		a.setAttribute("name", t), a.setAttribute("value", n), e.appendChild(a)
	}

	function p(e) {
		var t = y(e);
		t && "OBJECT" == t.nodeName && (X.ie && X.win ? (t.style.display = "none", function() {
			4 == t.readyState ? v(e) : setTimeout(arguments.callee, 10)
		}()) : t.parentNode.removeChild(t))
	}

	function v(e) {
		var t = y(e);
		if(t) {
			for(var n in t) "function" == typeof t[n] && (t[n] = null);
			t.parentNode.removeChild(t)
		}
	}

	function y(e) {
		var t = null;
		try {
			t = M.getElementById(e)
		} catch(n) {}
		return t
	}

	function h(e) {
		return M.createElement(e)
	}

	function m(e, t, n) {
		e.attachEvent(t, n), H[H.length] = [e, t, n]
	}

	function w(e) {
		var t = X.pv,
			n = e.split(".");
		return n[0] = parseInt(n[0], 10), n[1] = parseInt(n[1], 10) || 0, n[2] = parseInt(n[2], 10) || 0, t[0] > n[0] || t[0] == n[0] && t[1] > n[1] || t[0] == n[0] && t[1] == n[1] && t[2] >= n[2]
	}

	function g(e, t, n, a) {
		if(!X.ie || !X.mac) {
			var i = M.getElementsByTagName("head")[0];
			if(i) {
				var r = n && "string" == typeof n ? n : "screen";
				if(a && (T = null, I = null), !T || I != r) {
					var o = h("style");
					o.setAttribute("type", "text/css"), o.setAttribute("media", r), T = i.appendChild(o), X.ie && X.win && typeof M.styleSheets != L && M.styleSheets.length > 0 && (T = M.styleSheets[M.styleSheets.length - 1]), I = r
				}
				X.ie && X.win ? T && typeof T.addRule == k && T.addRule(e, t) : T && typeof M.createTextNode != L && T.appendChild(M.createTextNode(e + " {" + t + "}"))
			}
		}
	}

	function b(e, t) {
		if(U) {
			var n = t ? "visible" : "hidden";
			G && y(e) ? y(e).style.visibility = n : g("#" + e, "visibility:" + n)
		}
	}

	function C(e) {
		var t = /[\\\"<>\.;]/,
			n = null != t.exec(e);
		return n && typeof encodeURIComponent != L ? encodeURIComponent(e) : e
	}
	var E, S, A, N, T, I, L = "undefined",
		k = "object",
		j = "Shockwave Flash",
		B = "ShockwaveFlash.ShockwaveFlash",
		O = "application/x-shockwave-flash",
		F = "SWFObjectExprInst",
		$ = "onreadystatechange",
		x = window,
		M = document,
		V = navigator,
		P = !1,
		R = [a],
		D = [],
		W = [],
		H = [],
		G = !1,
		J = !1,
		U = !0,
		X = function() {
			var e = typeof M.getElementById != L && typeof M.getElementsByTagName != L && typeof M.createElement != L,
				t = V.userAgent.toLowerCase(),
				n = V.platform.toLowerCase(),
				a = n ? /win/.test(n) : /win/.test(t),
				i = n ? /mac/.test(n) : /mac/.test(t),
				r = /webkit/.test(t) ? parseFloat(t.replace(/^.*webkit\/(\d+(\.\d+)?).*$/, "$1")) : !1,
				o = !1,
				l = [0, 0, 0],
				s = null;
			if(typeof V.plugins != L && typeof V.plugins[j] == k) s = V.plugins[j].description, !s || typeof V.mimeTypes != L && V.mimeTypes[O] && !V.mimeTypes[O].enabledPlugin || (P = !0, o = !1, s = s.replace(/^.*\s+(\S+\s+\S+$)/, "$1"), l[0] = parseInt(s.replace(/^(.*)\..*$/, "$1"), 10), l[1] = parseInt(s.replace(/^.*\.(.*)\s.*$/, "$1"), 10), l[2] = /[a-zA-Z]/.test(s) ? parseInt(s.replace(/^.*[a-zA-Z]+(.*)$/, "$1"), 10) : 0);
			else if(typeof x.ActiveXObject != L) try {
				var c = new ActiveXObject(B);
				c && (s = c.GetVariable("$version"), s && (o = !0, s = s.split(" ")[1].split(","), l = [parseInt(s[0], 10), parseInt(s[1], 10), parseInt(s[2], 10)]))
			} catch(f) {}
			return {
				w3: e,
				pv: l,
				wk: r,
				ie: o,
				win: a,
				mac: i
			}
		}();
	(function() {
		X.w3 && ((typeof M.readyState != L && "complete" == M.readyState || typeof M.readyState == L && (M.getElementsByTagName("body")[0] || M.body)) && e(), G || (typeof M.addEventListener != L && M.addEventListener("DOMContentLoaded", e, !1), X.ie && X.win && (M.attachEvent($, function() {
			"complete" == M.readyState && (M.detachEvent($, arguments.callee), e())
		}), x == top && ! function() {
			if(!G) {
				try {
					M.documentElement.doScroll("left")
				} catch(t) {
					return void setTimeout(arguments.callee, 0)
				}
				e()
			}
		}()), X.wk && ! function() {
			return G ? void 0 : /loaded|complete/.test(M.readyState) ? void e() : void setTimeout(arguments.callee, 0)
		}(), n(e)))
	})(),
	function() {
		X.ie && X.win && window.attachEvent("onunload", function() {
			for(var e = H.length, t = 0; e > t; t++) H[t][0].detachEvent(H[t][1], H[t][2]);
			for(var n = W.length, a = 0; n > a; a++) p(W[a]);
			for(var i in X) X[i] = null;
			X = null;
			for(var r in swfobject) swfobject[r] = null;
			swfobject = null
		})
	}();
	return {
		registerObject: function(e, t, n, a) {
			if(X.w3 && e && t) {
				var i = {};
				i.id = e, i.swfVersion = t, i.expressInstall = n, i.callbackFn = a, D[D.length] = i, b(e, !1)
			} else a && a({
				success: !1,
				id: e
			})
		},
		getObjectById: function(e) {
			return X.w3 ? o(e) : void 0
		},
		embedSWF: function(e, n, a, i, r, o, c, f, u, p) {
			var v = {
				success: !1,
				id: n
			};
			X.w3 && !(X.wk && X.wk < 312) && e && n && a && i && r ? (b(n, !1), t(function() {
				a += "", i += "";
				var t = {};
				if(u && typeof u === k)
					for(var y in u) t[y] = u[y];
				t.data = e, t.width = a, t.height = i;
				var h = {};
				if(f && typeof f === k)
					for(var m in f) h[m] = f[m];
				if(c && typeof c === k)
					for(var g in c) typeof h.flashvars != L ? h.flashvars += "&" + g + "=" + c[g] : h.flashvars = g + "=" + c[g];
				if(w(r)) {
					var C = d(t, h, n);
					t.id == n && b(n, !0), v.success = !0, v.ref = C
				} else {
					if(o && l()) return t.data = o, void s(t, h, n, p);
					b(n, !0)
				}
				p && p(v)
			})) : p && p(v)
		},
		switchOffAutoHideShow: function() {
			U = !1
		},
		ua: X,
		getFlashPlayerVersion: function() {
			return {
				major: X.pv[0],
				minor: X.pv[1],
				release: X.pv[2]
			}
		},
		hasFlashPlayerVersion: w,
		createSWF: function(e, t, n) {
			return X.w3 ? d(e, t, n) : void 0
		},
		showExpressInstall: function(e, t, n, a) {
			X.w3 && l() && s(e, t, n, a)
		},
		removeSWF: function(e) {
			X.w3 && p(e)
		},
		createCSS: function(e, t, n, a) {
			X.w3 && g(e, t, n, a)
		},
		addDomLoadEvent: t,
		addLoadEvent: n,
		getQueryParamValue: function(e) {
			var t = M.location.search || M.location.hash;
			if(t) {
				if(/\?/.test(t) && (t = t.split("?")[1]), null == e) return C(t);
				for(var n = t.split("&"), a = 0; a < n.length; a++)
					if(n[a].substring(0, n[a].indexOf("=")) == e) return C(n[a].substring(n[a].indexOf("=") + 1))
			}
			return ""
		},
		expressInstallCallback: function() {
			if(J) {
				var e = y(F);
				e && E && (e.parentNode.replaceChild(E, e), S && (b(S, !0), X.ie && X.win && (E.style.display = "block")), A && A(N)), J = !1
			}
		}
	}
}();
var imio = function(t, o, e, n, i) {
	function a(t) {
		this.e_pre = "imio:", this.data = {
			connectionStatus: !1,
			connectionType: null,
			service: ""
		}, this.config = e.extend({
			connectMethod: ["serviceHost", "ajaxServiceHost", "ajaxServiceBakHost"],
			socketSwf: "http://s8.mogucdn.com/new1/v1/bmisc/30694b9ecac3d336876dc21db9a04dd0/161101909382.swf",
			serviceHost: "122.225.67.108:101.68.210.108:8808",
			ajaxServiceHost: "http://122.225.67.108:80",
			ajaxServiceBakHost: "http://101.68.210.108:80",
			timestamp: +new Date
		}, t)
	}
	var c = function(t) {
		if("object" != typeof t) return null;
		var o, e = parseInt(100 * Math.random(), 10) + 100,
			n = "",
			i = 0;
		for(var a in t) n += t[a];
		o = n.split("");
		for(var c = 0, s = o.length; s > c; c++) i += o[c].charCodeAt();
		return t._n = e, t._p = i % e, t
	};
	return a.prototype.emit = function(t) {
		this.uinfo = e.extend({
			uid: "",
			uuid: "",
			token: ""
		}, t), this.uinfo.uid && this.connectSvr()
	}, a.prototype.on = function(t, n) {
		e(o).on(this.e_pre + t, function(t, o) {
			n && n(o)
		})
	}, a.prototype.trigger = function(t, n) {
		e(o).trigger(this.e_pre + t, [n])
	}, a.prototype.connectSvr = function() {
		var t = this,
			o = t.config.connectMethod,
			e = {
				serviceHost: "flash",
				ajaxServiceHost: "ajax",
				ajaxServiceBakHost: "ajax"
			},
			i = n.getFlashPlayerVersion();
		if(void 0 === i || 0 === i.major)
			for(var a = 0, c = o.length; c > a; a++)
				if("serviceHost" === o[a]) {
					o.splice(a, 1);
					break
				}
		var s = 0;
		! function r(n) {
			var i = t.data.connectionStatus;
			if(!i && n) t.data.service = t.config[n], t.data.connectionType = e[n], t.start(e[n]);
			else if(!i && void 0 === n) return t.trigger("loading:status", "timeout"), void clearTimeout(s);
			s = setTimeout(function() {
				var e = o.shift();
				t.data.connectionStatus || (r(e), e && t.trigger("loading:status", "reconnect"))
			}, 1e4)
		}(o.shift())
	}, a.prototype.httpConnect = function() {
		e("#imioflashobj").remove();
		var t = this,
			o = {
				uid: t.uinfo.uid,
				token: t.uinfo.token,
				status: 1
			};
		o = c(o), e.ajax({
			url: t.data.service + "/push/login",
			data: o,
			dataType: "jsonp",
			timeout: 9e3,
			success: function(o) {
				if(o && 1001 === o.status.code) {
					if(t.data.connectionStatus) return;
					t.uinfo.uuid = o.result.uuid, t.call(encodeURIComponent('{"code":1001,"type":"_imioLoginCB"}')), t.startPoll(), t.autoToken(), t.send("getUnReadCounter")
				}
			}
		})
	}, a.prototype.flashConnect = function() {
		var t = this,
			o = e("#imioflashobj");
		o.length <= 0 && (o = e('<span id="imioflashobj"></span>'), e("body").append(o));
		var i = t.config,
			a = e.extend({
				serverList: i.serviceHost
			}, t.uinfo),
			c = {
				wmode: "transplate",
				allowscriptaccess: "always"
			},
			s = {
				id: "imioflashobj",
				name: "imioflashobj"
			};
		window._imioSocket = {
			call: function(o) {
				t.connectionStatus || t.autoToken(), t.call(o)
			}
		}, n.embedSWF(t.config.socketSwf, "imioflashobj", "0", "0", "9.0.0", "", a, c, s)
	}, a.prototype.start = function(t) {
		"flash" === t ? this.flashConnect() : "ajax" === t && this.httpConnect()
	}, a.prototype.startPoll = function() {
		var t = this,
			o = (t.config, t.uinfo);
		! function n() {
			e.ajax({
				url: t.data.service + "/push/poll",
				data: {
					uid: o.uid,
					uuid: o.uuid,
					token: o.token,
					type: "poll"
				},
				type: "GET",
				dataType: "jsonp",
				timeout: 5e4,
				success: function(o) {
					return null === o || (t.call(encodeURIComponent(i.stringify(o))), "errorCode" !== o.type || 4011 !== o.data && 4002 !== o.data && 4005 !== o.data && 4444 !== o.data) ? void n() : void t.showNotice(o.data)
				},
				error: function() {
					t.showNotice(6002)
				}
			})
		}()
	}, a.prototype.autoToken = function() {
		var t = this;
		t.startAutoToken || (! function o() {
			setTimeout(function() {
				e.ajax({
					url: "http://www.meilishuo.com/mtalk/iauth",
					type: "GET",
					data: null,
					dataType: "jsonp",
					success: function(e) {
						e && e.status && 1001 === e.status.code && (t.uinfo.token = e.result.token, o())
					}
				})
			}, 36e5)
		}(), t.startAutoToken = !0)
	}, a.prototype.showNotice = function(t) {
		t += "";
		var o = {
			4004: "消息发送超时",
			6000: "网络连接出错",
			6001: "您不能和对方对话",
			10001: "抱歉！没有客服在线",
			4002: "参数错误，请重新登录",
			4003: "您已断开连接，请重新登录",
			4005: "用户校验失败，请重新登陆",
			4011: "您已在其他地方上线，请重新打开",
			4444: "您已经离线，请重新打开",
			6002: "连接失败，请重新打开"
		};
		this.trigger("notice:show", {
			code: +t,
			msg: void 0 === o[t] ? "未知错误[" + t + "]" : o[t]
		})
	}, a.prototype.call = function(t) {
		t = i.parse(decodeURIComponent(t));
		var o = this;
		if(t && 1001 === t.code) switch(t.type) {
			case "_imioLoginCB":
				o.data.connectionStatus = !0;
				break;
			case "_imioSocket":
				o.trigger("data:update", t.data)
		}
	}, a.prototype.send = function(t, o) {
		o = encodeURIComponent(i.stringify(o));
		var n = this;
		if("flash" === n.data.connectionType) {
			var a = e("#imioflashobj")[0];
			if(!a) return;
			return void
			function c(t, o) {
				n.data.connectionStatus ? a[t](o) : "flash" === n.data.connectionType && setTimeout(function() {
					c(t, o)
				}, 100)
			}(t, o)
		}
		return "ajax" === n.data.connectionType ? void
		function(t, o) {
			var a = {
				uid: n.uinfo.uid,
				uuid: n.uinfo.uuid,
				token: n.uinfo.token,
				type: t
			};
			void 0 !== o && (a.data = decodeURIComponent(o)), e.ajax({
				url: n.data.service + "/push/request",
				data: a,
				type: "GET",
				dataType: "jsonp",
				success: function(t) {
					t && t.data ? n.call(encodeURIComponent(i.stringify(t))) : t && 4003 === t.code && n.showNotice(4003)
				},
				error: function() {
					n.showNotice(6002)
				}
			})
		}(t, o): void 0
	}, {
		connect: function(t) {
			return new a(t)
		}
	}
}(window, document, jQuery, swfobject, JSON);
! function(e, t, i, o) {
	var a = "undefined" != typeof e.MOGU ? e.MOGU : {},
		n = "undefined" != typeof e.MGTOOL ? e.MGTOOL : {},
		d = i("head").find("link"),
		s = d.eq(d.length - 1).attr("href"),
		u = +new Date;
	"string" == typeof s && s.indexOf("$") > 0 && (!window.ActiveXObject || window.XMLHttpRequest) && (u = s.split("$")[1].split(".")[0]),
		function() {
			var e;
			i.ajax({
				url: "load",
				data: null,
				dataType: "json",
				success: function(t) {
					if(t && t.status && 1001 === t.status.code) {
						var d = t.result;
						e = o.connect({
							serviceHost: d.serviceHost,
							ajaxServiceHost: d.ajaxServiceHost,
							ajaxServiceBakHost: d.ajaxServiceBakHost,
							timestamp: u
						}), e.on("data:update", function(e) {
							a.cinfo = e, i("body").trigger("cinfodatarecieve", [e])
						}), e.emit({
							uid: d.userId,
							token: d.token,
							uuid: n.getCookie("__mgjuuid"),
							mgj: n.getCookie("__ud_"),
							fromsite: n.getCookie("from_site")
						})
					}
				}
			})
		}()
}(window, document, jQuery, window.imio);
! function(t) {
	MOGU.imgCodeCheck = function() {
		var a = !1,
			i = t(".img_code_spin");
		if(0 == i.length) return a = !0;
		for(var c = 0; c < i.length; c++) {
			var e = t(i[c]);
			if(0 != e.val()) {
				a = !0;
				break
			}
		}
		return a
	}, MOGU.imgCaptchaInit = function() {
		var a = t(".imgcheck_image_div"),
			i = t("#imgcheck_code_change"),
			c = function(t, a) {
				var i = -75 * ((a + 1) % 4),
					c = t[0].style.backgroundPosition.split(" ");
				t[0].style.backgroundPosition = c[0] + " " + i + "px"
			};
		a.click(function() {
			var a = t(this).attr("f"),
				i = t("#img_code_spin_" + a),
				e = parseInt(i.val());
			c(t(this), e), i.val(e + 1)
		}), i.click(function() {
			MOGU.imgCaptchaRecaptcha()
		})
	}, MOGU.imgCaptchaRecaptcha = function(a) {
		var i = function(a) {
			for(var i = t(".imgcheck_image_div"), c = i.length, e = 0; c > e; e++) {
				var n = i[e],
					o = n.getAttribute("f"),
					r = t("#img_code_spin_" + o);
				r.val(0);
				var u = t(n);
				u.css("background-image", "url(/captchaimg/" + a + ")"), u.css({
					"background-position": -75 * e + "px 0"
				})
			}
		};
		void 0 === a ? t.ajax({
			url: "/reimgcaptcha",
			type: "POST",
			timeout: 6e4,
			data: {},
			dataType: "json",
			cache: !1,
			success: function(t) {
				var a = t.status.code;
				t.status.msg;
				if(1001 == a) {
					var c = t.result.data.captchaId;
					i(c)
				}
			},
			error: function(t, a, i) {
				"timeout" == a && alert(MGLANG.msgTimeout)
			}
		}) : setTimeout(function() {
			i(a)
		}, 1)
	}, MOGU.imgCaptchaInit()
}(jQuery);
! function(t, e, n) {
	e.MOGU = e.MOGU || {};
	var i = {
		init: function() {
			t(document).off(".mga").on("click.mga", '[data-mga="event"]', function(e) {
				return function(n) {
					var i, a, o, r, c;
					return i = t(n.currentTarget), o = i.data("category") || i[0].tagName, a = i.data("action") || n.type, r = i.data("label") || i[0].className, c = i.data("value") || i.jsp(), e.triggerEvent(o, a, r, c)
				}
			}(this))
		},
		triggerEvent: function(t, e, n, i) {
			var a = this;
			clearTimeout(o);
			var o = setTimeout(function() {
				a.event(t, e, n, i)
			}, 500)
		},
		event: function(e, n, i, a) {
			var o = {
				action: n,
				page: e,
				pos: i
			};
			t.ajax({
				type: "POST",
				url: "http://www.meilishuo.com/itemsactionlog",
				data: o,
				success: function(t, e, n) {},
				error: function(t, e, n) {}
			})
		},
		isInScope: function(n) {
			return n.length > 0 && t(e).scrollTop() < n.offset().top + n.outerHeight() && t(e).scrollTop() + t(e).height() > n.offset().top
		},
		pageview: function(t, e, n) {
			var i = this;
			clearTimeout(a);
			var a = setTimeout(function() {
				i.isInScope(n) && i.event(t, "view", e, null)
			}, 500)
		}
	};
	i.init(), MOGU.mga = i, "function" == typeof define && define.amd && define.amd.jQuery && define("mga", [], function() {
		return i
	})
}(jQuery, window);
! function(t, e) {
	"object" == typeof exports && "object" == typeof module ? module.exports = e() : "function" == typeof define && define.amd ? define("mls-pc/common/nav/index", [], e) : "object" == typeof exports ? exports["mls-pc/common/nav/index"] = e() : t["mls-pc/common/nav/index"] = e()
}(this, function() {
	return function(t) {
		function e(o) {
			if(i[o]) return i[o].exports;
			var a = i[o] = {
				exports: {},
				id: o,
				loaded: !1
			};
			return t[o].call(a.exports, a, a.exports, e), a.loaded = !0, a.exports
		}
		var i = {};
		return e.m = t, e.c = i, e.p = "", e(0)
	}([function(t, e, i) {
		"use strict";
		i(1), i(2), i(3)
	}, function(t, e, i) {
		var o, a;
		o = [], a = function() {
			function t(t, e, i) {
				function o() {
					var e = a.shift();
					e && t.apply(e.context, e.arguments), 0 === a.length && (clearInterval(s), s = null)
				}
				var a = [],
					s = null;
				return function() {
					a.push({
						context: i || this,
						arguments: [].slice.call(arguments)
					}), s || (o(), s = setInterval(o, e))
				}
			}

			function e(t, e, i) {
				return parseInt(t + "", 0 | e).toString(0 | i)
			}

			function i() {
				var t = $(".J_sitenav .wrap"),
					e = (l.find(".mgj-my-cart"), l.find(".mgj-my-avatar"), ['<a href="index.jsp" rel="nofollow" class="home fl">美丽说首页</a>', '<ul class="header_top">', "{{? it.name}}", '<li class="s1 has_icon user_meta">', '<a rel="nofollow" href="javascript:;">', "{{=it.name}}", "</a>", '<a rel="nofollow" href="http://order.meilishuo.com/pcenter" target="_blank">', "{{?it.userLevel}}", '<span class="level level', "{{=it.userLevel - 1}}", '">&nbsp;</span>', "{{?}}", "</a>", '<i class="icon_delta"></i>', '<ol class="ext_mode" id="menu_personal">', '<li class="s2">', '<a target="_blank" rel="nofollow" href="setPersonal.jsp">个人设置</a>', "</li>", '<li class="s2">', '<a rel="nofollow" href="#">退出</a>', "</li>", "</ol>", "</li>", '<li class="s1 has_icon has_line user_fav">', '<a rel="nofollow" href="javascript:;">我的收藏</a>', '<i class="icon_delta"></i>', '<ul class="ext_mode">', '<li class="s2">', '<a target="_blank" rel="nofollow" href="mylike.jsp">收藏宝贝</a>', "</li>", '<li class="s2">', '<a target="_blank" rel="nofollow" href="mylikestore.jsp">收藏店铺</a>', "</li>", "</ul>", "</li>", "{{??}}", '<li class="s1 show-nologin">', '<a rel="nofollow" href="./sign-in.jsp">注册</a>', "</li>", '<li class="s1 show-nologin">', '<a rel="nofollow" href="./login.jsp">登录</a>', "</li>", "{{?}}", '<li class="s1 myorder has_line">', '<a href="orderlist.jsp" target="_blank" class="text display_u" ref="nofollow">我的订单</a>', "</li>", '<li class="s1 has_line shopping_cart_v2">', '<a class="cart_info_wrap" href="mycart.jsp" target="_blank" ref="nofollow">', '<span class="cart_info">购物车</span>', "</a>", '<i class="icon_delta"></i>', '<span class="shopping_cart_loading"></span>', "</li>", '<li class="s1 has_line has_icon custom_item">', '<a rel="nofollow" href="http://www.meilishuo.com/helpcenter" ref="nofollow" target="_blank">帮助中心</a>', '<i class="icon_delta"></i>', '<ol class="ext_mode">', '<li class="s2"><a target="_blank" rel="nofollow" href="buyerService.jsp">买家服务</a></li>', '<li class="s2"><a target="_blank" rel="nofollow" href="#/help#/index">商家服务</a></li>', '<li class="s2"><a target="_blank" rel="nofollow" href="ruleCenter.jsp">规则中心</a></li>', "</ol>", "</li>", '<li class="s1 has_line has_icon">', '<a href="#" ref="nofollow" target="_blank" class="text display_u">商家后台</a>', "</li>", "</ul>"].join(""));
				s.fn.getUserData(function(i, o) {
					i || (t.jsp(s.ui.getTemplate(e, o)), $("body").trigger("userdatarecieve", [o]))
				})
			}

			function o(t) {
				$("#header .header_top"), $(".mgj_rightbar .mgj-my-cart"), $(".mgj_rightbar .mgj-my-avatar");
				t.uname && t.uname.length > 0 && t.shopFaved && $(".J-shop-follow").addClass("shop-followed").jsp("已收藏"), t.jumpUrl && t.jumpUrl.length > 0 && (location.href = t.jumpUrl)
			}

			function a() {
				function t(t) {
					var e = new RegExp("(^|&)" + t + "=([^&]*)(&|$)", "i"),
						i = window.location.search.substr(1).match(e);
					return null != i ? unescape(i[2]) : null
				}

				function e(t, e) {
					var i = new Date;
					i.setTime(i.getTime() + 31536e6), document.cookie = t + "=" + escape(e) + ";expires=" + i.toGMTString()
				}

				function i(t) {
					var e, i = new RegExp("(^| )" + t + "=([^;]*)(;|$)");
					return(e = document.cookie.match(i)) ? unescape(e[2]) : null
				}
				var o = $("#menu_personal"),
					a = $(".dapei_tip", o),
					s = $(".dapei_btn", o);
				s.click(function() {
					e("dapei_tip_hidden", !0), a.hide(), setTimeout(function() {
						o.mouseleave(function() {
							$(this).removeClass("ext_mode_show")
						})
					}, 1e3)
				}), null != t("isDaPeiShi") ? o.addClass("ext_mode_show") : "true" == $("#isDaPeiShi").val() && null == i("dapei_tip_hidden") && o.addClass("ext_mode_show")
			}
			var s = window.MoGu || {};
			s.fn = s.fn || {}, $.extend(s.fn, {
				greyTest: function(t, e) {
					$.ajax({
						url: "http://www.meilishuo.com/trade/abtest/service/getBucket",
						data: {
							biz: t
						},
						dataType: "jsonp",
						type: "get",
						success: function(t) {
							$.isFunction(e) && e(null, t)
						},
						fail: function(t) {
							$.isFunction(e) && e(t)
						}
					})
				},
				getUserData: t(function(t) {
					if(s.data = s.data || {}, s.data.userData) $.isFunction(t) && t(null, s.data.userData);
					else {
						var e = location.protocol + "//portal.meilishuo.com/api/profile/baseinfo";
						"cashier.meilishuo.com" == location.hostname && (e = location.protocol + "//" + location.hostname + "/api/profile/baseinfo"), $.ajax({
							url: e,
							dataType: "jsonp",
							type: "get",
							success: function(e) {
								if(1001 == e.status.code) {
									var i = e.result;
									s.data.userData = i, $.isFunction(t) && t(null, i)
								} else {
									var i = {};
									s.data.userData = i, $.isFunction(t) && t(null, i)
								}
							},
							fail: function(e) {
								$.isFunction(t) && t(e)
							}
						})
					}
				}, 100)
			}), s.fn.id2url = function(t, i) {
				var o = "",
					a = i || 1;
				if(t = "" + t, 24 == t.length) return t;
				switch(a) {
					case 1:
						o = a + e(2 * t + 56, 10, 36);
						break;
					default:
						o = !1
				}
				return o
			}, s.fn.url2id = function(t, e) {
				if(e || (e = !1), 24 == t.length && t.match(/^[0-9a-f]+$/)) return t;
				if(t instanceof Array) {
					for(var i = 0; i < t.length; i++) {
						var o = t[i];
						t[i] = urltoid(o)
					}
					return t
				}
				if(t.indexOf(",") > 0) {
					t = t.split(",");
					for(var i = 0; i < t.length; i++) {
						var o = t[i];
						o ? t[i] = this.urltoid(o) : delete t[i]
					}
					return t.join(",")
				}
				if(e && t.match(/^(null|undefined)$/i)) return !1;
				switch(version = parseInt(t.substr(0, 1)), version) {
					case 1:
						id = (parseInt(parseInt(t.substr(1) + "", 36).toString(10)) - 56) / 2;
						break;
					case 2:
					case 3:
					case 4:
					case 5:
					case 6:
					case 7:
					case 8:
					case 9:
						id = 0;
						break;
					default:
						id = t
				}
				return 0 < id ? parseInt(id) : 0
			};
			var n = $(".header_2015"),
				l = $(".mgj_rightbar");
			i(), window.ESIMOGUPROFILE && o(MOGUPROFILE), a();
			var r = (s.ui.getdoT(), {});
			r.Tpl = {
				headerMsgTpl: []
			}, r.View = {
				init: function() {
					this.addEvent()
				},
				addEvent: function() {
					var t = this;
					$("body").on("cinfodatarecieve", function(e, i) {
						if(i) {
							var o = i,
								a = {};
							a.twitterNew = parseInt(o.cmessageNew), a.catmeNew = parseInt(o.a), a.cfavedNew = parseInt(o.b), a.cmsgNew = parseInt(o.c), a.fansNew = parseInt(o.d), a.csysmsgNew = parseInt(o.e), a.cactiveNew = parseInt(o.f), a.intelligent = parseInt(o.g), a.ccartNew = parseInt(o.h), a.chatNew = parseInt(o.i), a.ccouponShop = parseInt(o.q), a.ccouponPlatform = parseInt(o.j), $.each(t.renders, function(t, e) {
								$.isFunction(e) && e(a)
							})
						}
					})
				},
				renders: {
					renderNavCart: function(t) {
						var e = n.find(".shopping_cart_v2");
						if(e.length)
							if(t.ccartNew > 0) {
								var i = t.ccartNew > 99 ? "99+" : t.ccartNew,
									o = '<span class="cart_info">购物车<b class="num">' + i + "</b>件</span>";
								e.find(".cart_info_wrap").jsp(o).show()
							} else e.find(".cart_info_wrap").jsp('<span class="cart_info">购物车</span>')
					},
					renderSideBarCart: function(t) {
						var e = l.find(".mgj-my-cart");
						e.length && (t.ccartNew > 0 ? e.find(".num").jsp(t.ccartNew > 99 ? "99+" : t.ccartNew).show() : e.find(".num").hide())
					},
					renderSideBarCoupon: function(t) {
						var e = l.find(".mgj-my-coupon");
						if(e.length) {
							var i = parseInt(t.ccouponShop + t.ccouponPlatform, 10);
							i ? e.find(".num").jsp(i > 99 ? "99+" : i).show() : e.find(".num").hide()
						}
					},
					renderNavMsg: function(t) {
						var e = n.find(".mogutalk_btn");
						e.length && (t.chatNew ? e.find(".num").jsp(t.chatNew > 99 ? "99+" : t.chatNew).show() : e.find(".num").hide())
					}
				}
			}, r.View.init();
			var c = function() {
				this.highClassName = "s1_on"
			};
			c.prototype = {
				add2Collection: function(t) {
					$.browser.msie && 6 == $.browser.version && $.isPlainObject(t) && t.wrap.length && t.target && this._registerEvent(t)
				},
				_registerEvent: function(t) {
					var e = this;
					t.wrap.on("mouseenter", t.target, function(t) {
						$(this).addClass(e.highClassName).siblings().removeClass(e.highClassName)
					}), t.wrap.on("mouseleave", t.target, function(t) {
						$(this).removeClass(e.highClassName)
					})
				}
			}, (new c).add2Collection({
				wrap: $(".header_top"),
				target: ".s1"
			})
		}.apply(e, o), !(void 0 !== a && (t.exports = a))
	}, function(t, e, i) {
		var o, a;
		o = [], a = function() {
			var t = {},
				e = ['<div class="shop_cart_info" style="display: none;">', '<ul class="max_height_ie6">', "{{~ it.list:item:index}}", "{{?index < it.topNum}}", "<li>", '<a rel="nofollow" href="shopdetail.jsp#?{{=item.itemIdEsc}}" target="_blank" class="imgbox">', "{{?item.imgUrl}}", '<img src="{{=item.imgUrl}}" alt="{{=item.title}}" width="45">', "{{?}}", "</a>", '<a rel="nofollow" href="shopdetail.jsp#?{{=item.itemIdEsc}}" target="_blank" class="title">{{=item.title}}</a>', "{{?item.skuAttributes}}", '<span class="info">{{~ item.skuAttributes:sku:key }}{{=sku.key}}: {{=sku.value}}  {{~}}</span>', "{{?}}", '<span class="price">¥{{=(item.nowprice/100)}}</span>', '<span data-stockid="{{=item.stockIdEsc}}" class="del">删除</span>', "</li>", "{{?}}", "{{~}}", "</ul>", '<div class="subbox">', "{{?it.total-it.topNum>0}}", '<p class="sub_info">购物车里还有<b class="num">{{=it.total - it.topNum}}</b>件商品</p>', "{{?}}", '<div class="fr">', '<a rel="nofollow" href="mycart.jsp" target="_blank" class="goel">查看购物车</a>', "</div>", "</div>", "</div>"].join("");
			t.Model = {
				goodsList: "",
				offlineCartCookies: "",
				offlineCartCookiesOld: "",
				goodsNum: 0,
				getGoodsList: function(t) {
					var e = this;
					if(e.goodsList) return void($.isFunction(t) && t(this.goodsList));
					var i = [];
					if(MoGu.util.getCookie("trade_cart_meilishuo") && (e.offlineCartCookies = MoGu.util.getCookie("trade_cart_meilishuo")), e.offlineCartCookies) {
						var o = JSON.parse(e.offlineCartCookies);
						for(var a in o) {
							var s = {};
							s.stockId = a;
							for(var n in o[a]) s[n] = o[a][n];
							i.push(s)
						}
					}
					if(e.offlineCartCookiesOld)
						for(var o = e.offlineCartCookiesOld.split(","), s = {}, n = 0; n < o.length; n++)
							if(o[n].indexOf("#") > -1) {
								var l = o[n].split("#");
								s.number = l[0], s.lastAddCartTime = l[1], i.push(s), s = {}
							} else s.stockId = MoGu.fn.id2url(o[n]);
					var r = {
						marketType: "market_meilishuo",
						topNum: e.maxShowNum,
						offlineCartItems: JSON.stringify(i)
					};
					$.ajax({
						url: "http://cart.meilishuo.com/api/cart/miniCartList",
						data: r,
						dataType: "jsonp",
						type: "get",
						success: function(i) {
							1001 == i.status.code ? (e.goodsList = i.result.cartItems ? i.result.cartItems : [], e.goodsNum = i.result.totalItemNum || 0, $.isFunction(t) && t(e.goodsList)) : $.isFunction(t) && t([])
						}
					})
				},
				delCookie: function(t, e) {
					var i = {};
					if(this.offlineCartCookies) {
						var o = JSON.parse(this.offlineCartCookies);
						for(var a in o) a != t && (i[a] = o[a]);
						MoGu.util.setCookie("trade_cart_meilishuo", JSON.stringify(i), {
							expires: 15,
							path: "/",
							domain: ".meilishuo.com"
						})
					}
				},
				delGood: function(t, e) {
					var i = this;
					$.post("/api/cart/deleteCart", {
						marketType: "market_meilishuo",
						stockId: t
					}, function(o) {
						if(1001 == o.status.code) {
							var a = o.status.isLogin;
							a || i.delCookie(t), $.isFunction(e) && e()
						} else alert(o.status.msg)
					}, "json")
				}
			}, t.View = {
				wrap: $(".header_2015"),
				init: function() {
					this.wrap.length && (this.extendInfo = null, this.loading = this.wrap.find(".shopping_cart_loading"), this.maxShowNum = 5, this.addEvent())
				},
				addEvent: function() {
					var i = this;
					this.wrap.find(".cart_info_wrap").attr("href", "mycart.jsp"), $(".mgj_rightbar .mgj-my-cart a").attr("href", "mycart.jsp"), i.wrap.off("mouseenter").on("mouseenter", ".shopping_cart_v2", function(o) {
						var a = $(this);
						a.addClass("sc_on"), i.loading.show(), i.extendInfo && i.extendInfo.length ? (i.loading.hide(), i.extendInfo.show()) : t.Model.getGoodsList(function(o) {
							var s = {
								list: o,
								topNum: i.maxShowNum,
								total: t.Model.goodsNum
							};
							if(o.length) {
								var n = MoGu.ui.getTemplate(e, s);
								i.extendInfo = $(n)
							} else {
								var n = '<div class="shop_cart_info"></div>';
								i.extendInfo = $(n), i.extendInfo.addClass("empty_cart").text("购物车里没有商品！")
							}
							a.append(i.extendInfo), i.loading.hide(), i.extendInfo.show()
						})
					}), i.wrap.off("mouseleave").on("mouseleave", ".shopping_cart_v2", function(t) {
						i.extendInfo && i.extendInfo.hide() && $(this).removeClass("sc_on")
					}), i.wrap.off("click").on("click", ".shopping_cart_v2 .del", function() {
						var e = $(this),
							o = e.data("stockid"),
							a = (i.wrap.find(".num"), e.parent()),
							s = t.Model.goodsNum;
						e.hasClass("disabled") || (e.addClass("disabled"), t.Model.delGood(o, function() {
							s--, a.fadeOut("slow", function() {
								e.removeClass("disabled"), s ? (a.remove(), t.Model.goodsNum = s) : (i.extendInfo = $(".shop_cart_info"), i.extendInfo.addClass("empty_cart").text("购物车里没有商品！"))
							})
						}))
					})
				}
			}, t.View.init()
		}.apply(e, o), !(void 0 !== a && (t.exports = a))
	}, function(t, e, i) {
		var o;
		o = function() {
			var t = {
				wrap: $(".back2top_wrap"),
				init: function() {
					this.wrap.length && (this.offsetEl = $(".wrap").length ? $(".wrap").eq(0) : $("#body"), this.offsetEl.length && (this.win = $(window), this.goTop = this.wrap.find(".go_top"), this.setPos(), this.wrap.show(), this.addEvent()))
				},
				addEvent: function() {
					var t = this;
					this.win.on("resize", function(e) {
						t.setPos()
					}), this.win.on("scroll", function(e) {
						$(this).scrollTop() ? t.goTop.addClass("show") : t.goTop.removeClass("show")
					}), this.goTop.on("click", function(e) {
						return t.win.scrollTop(0), !1
					})
				},
				setPos: function() {
					var t = this.offsetEl.offset(),
						e = this.offsetEl.outerWidth(),
						i = this.win.width(),
						o = this.wrap.width(),
						a = 15,
						s = t.left + e + 20;
					o + s + a > i ? this.wrap.css({
						left: "auto",
						right: a
					}) : this.wrap.css({
						left: s,
						right: "auto"
					})
				}
			};
			t.init()
		}.call(e, i, e, t), !(void 0 !== o && (t.exports = o))
	}])
}), "function" == typeof define && define.amd && require(["mls-pc/common/nav/index"]);
! function() {
	window.PTP_PARAMS = window.PTP_PARAMS || {}, $.extend(window.PTP_PARAMS, {
		EnableLogMoGuJs: !1,
		uuid: ["__mgjuuid"],
		uid: ["__ud_"],
		platform: function() {
			var i = navigator.userAgent;
			return -1 != i.indexOf("meilishuo4android") || -1 != i.indexOf("meilishuo android") ? "24" : -1 != i.indexOf("meilishuo4ios") || -1 != i.indexOf("Meilishuo iPhone") ? "23" : /MicroMessenger/i.test(i) ? "47" : /QQ/i.test(i) ? "48" : /iphone|android|ipad/i.test(i) ? "34" : "33"
		},
		hrefRe: /http[s]?:\/\/\w+\.(meilishuo)\.com([\/]|\/.*|)$/,
		mgjRe: /(meilishuo|mls):\/\//,
		isNativeRe: /(meilishuo|mls|mogujie)/i,
		nativeLog: {}
	})
}(), console.log("");
! function(e) {
	"use strict";

	function t() {
		this.arr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", this.arrLen = this.arr.length
	}

	function n() {
		var e = p.getPtpInfoAndExtra(),
			t = c.getValue(g.pEventId);
		s.logData("p", t, e), g.EnableLogMoGuJs && s.sendLog(g.LogMoGuJsUrl, e, !0)
	}

	function r() {
		if(o.info.isNative) {
			var e = p.getPtpCnt();
			s.logAppPevent(e)
		} else l ? n() : c.listenTo("LoggerReady", function() {
			n()
		})
	}
	var o = e.logger = {};
	o.version = "0.1.8", "undefined" == typeof console && (window.console = {
		log: function() {}
	});
	var i = "**logger.js---打点出错:";
	! function() {
		var e = window.jQuery || window.Zepto,
			t = function(e, t) {
				for(var n = 0, r = e.length; r > n; n++)
					if(e[n] == t) return n + 1;
				return -1
			},
			n = {
				getA: function(e) {
					var t = e;
					if("A" == t.tagName) return e;
					for(; t.parentNode;)
						if(t = t.parentNode, "A" == t.tagName) return t
				},
				getParentByClass: function(t, n) {
					if(t) {
						if(e) return $(t).parents("." + n);
						for(var r, o = t; o.parentNode;)
							if(o = o.parentNode, r = o.className && -1 != o.className.indexOf(n)) return o
					}
				},
				getParents: function(t, n) {
					if(t) {
						if(n = n || "", e) return n = "[" + n + "]", $(t).parents(n)[0];
						for(var r, o = t; o.parentNode;)
							if(o = o.parentNode, r = o.getAttribute && o.getAttribute(n)) return o
					}
				},
				getIndex: function(n, r, o) {
					if(!n || !r || !o) return 0;
					if(e) return $("[" + n + '="' + r + '"]').index($(o)) + 1;
					if(document.querySelectorAll) {
						var i = document.querySelectorAll("[" + n + '="' + r + '"]');
						return t(i, o)
					}
					return 1
				},
				getElemIndex: function(n, r, o) {
					if(!n || !r || !o) return 0;
					if(e) return $(n).find(r).index($(o)) + 1;
					if(n.querySelectorAll) {
						var i = n.querySelectorAll(r);
						return t(i, o)
					}
					return 1
				},
				is: function(e, t) {
					return e && t ? (e.length && (e = e[0]), e.nodeName.toLowerCase() === t.toLowerCase() ? !0 : void 0) : !1
				}
			};
		o.jq = n
	}();
	var a = 1001,
		u = {},
		c = {
			getIEVersion: function() {
				var e, t = -1,
					n = navigator.userAgent;
				return "Microsoft Internet Explorer" == navigator.appName ? (e = new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})"), null !== e.exec(n) && (t = parseFloat(RegExp.$1))) : "Netscape" == navigator.appName && (e = new RegExp("Trident/.*rv:([0-9]{1,}[.0-9]{0,})"), null !== e.exec(n) && (t = parseFloat(RegExp.$1))), t
			},
			stringify: function(e) {
				if("undefined" != typeof JSON) return JSON.stringify(e);
				var t = typeof e;
				if("object" != t || null === e) return "string" == t && (e = '"' + e + '"'), String(e);
				var n, r, o = [],
					i = e && e.constructor == Array;
				for(n in e) r = e[n], t = typeof r, e.hasOwnProperty(n) && ("string" == t ? r = '"' + r + '"' : "object" == t && null !== r && (r = c.stringify(r)), o.push((i ? "" : '"' + n + '":') + String(r)));
				return(i ? "[" : "{") + String(o) + (i ? "]" : "}")
			},
			isArray: function(e) {
				return "[object Array]" == Object.prototype.toString.call(e)
			},
			getCookieInArray: function(e) {
				for(var t = 0, n = e.length; n > t; t++) {
					var r = c.getCookie(e[t]);
					if(r) return r
				}
				return ""
			},
			getCookieOrFunc: function(e) {
				return "function" == typeof e ? c.getValue(e) : c.getCookie(e)
			},
			getCookie: function(e) {
				if(c.isArray(e)) return c.getCookieInArray(e);
				var t = document.cookie.match(new RegExp("(^| )" + e + "=([^;]*)(;|$)"));
				return null !== t ? decodeURIComponent(t[2]) : ""
			},
			getQuery: function(e, t) {
				void 0 === t && (t = location.search), t = t.split("#")[0];
				var n = "(^|&|\\?)" + e + "=([^&]*)(&|$)",
					r = new RegExp(n, "i"),
					o = t.substr(1).match(r);
				return null !== o ? decodeURIComponent(o[2]) : ""
			},
			setQuery: function(e, t, n) {
				var r = new RegExp("([?&])" + t + "=.*?(&|$)", "i"),
					o = -1 !== e.indexOf("?") ? "&" : "?";
				return e.match(r) ? e.replace(r, "$1" + t + "=" + n + "$2") : e + o + t + "=" + n
			},
			getTime: function() {
				return parseInt((new Date).getTime() / 1e3)
			},
			registerEvent: function(e, t, n) {
				window.attachEvent ? e.attachEvent("on" + t, n) : e.addEventListener(t, n, !1)
			},
			extend: function() {
				for(var e = arguments, t = arguments[0], n = 1; n < e.length; n++) {
					var r = e[n];
					for(var o in r) r.hasOwnProperty(o) && (t[o] = r[o])
				}
				return t
			},
			getValue: function(e) {
				if(e) {
					if("function" == typeof e) try {
						var t = Array.prototype.slice.call(arguments, 1);
						return e.apply(null, t)
					} catch(n) {
						return console.log(i + n), ""
					}
					return e
				}
			},
			loadScript: function(e, t) {
				var n = document.createElement("script");
				n.src = e + "?callback=callback_" + a, window["callback_" + a] = function(e) {
					t && t(e)
				}, a += 1;
				var r = document.getElementsByTagName("head")[0];
				r.appendChild(n)
			},
			listenTo: function(e, t) {
				u[e] || (u[e] = []), u[e].push(t)
			},
			fire: function(e) {
				var t = u[e];
				if(t.length) {
					for(var n = 0, r = t.length; r > n; n++) t[n].call();
					u[e] = []
				}
			}
		};
	o.util = c;
	var d = "https:" === location.protocol ? "https:" : "http:",
		f = "mogujie"; - 1 != location.host.indexOf("meilishuo") && (f = "meilishuo"), o.config = {
			EnableLogMoGuJs: !0,
			LogUrl: d + "//log.juangua.com/log.php",
			LogMoGuJsUrl: d + "//log.juangua.com/mogu.js",
			CookieUrl: d + "//portal." + f + ".com/api/util/getUuid",
			shouldRequestCookie: function() {
				if(-1 != location.protocol.indexOf("file:")) return !1;
				var e = o.util.getCookieOrFunc(o.config.uuid);
				return !e
			},
			uuid: ["__mgjuuid", "__xduuid"],
			uid: "__ud_",
			sfrom: "from_site",
			cpsinfo: "__cpsinfo",
			ptp_cnt_a: "",
			ptp_cnt_b: "",
			ptp_cnt_c_d: "",
			platform: function() {
				var e = navigator.userAgent;
				return /qq\/([\d\.]+)/.test(e) ? 48 : void 0
			},
			pEventId: "1001",
			isMobileRe: /iphone|android|ipad/i,
			ptpRe: /[a-z0-9]+\.[a-z0-9]+\.[a-z0-9]+\.[a-z0-9]+\.[a-z0-9]+/i,
			hrefRe: /http[s]?:\/\/\w+\.(mogujie|xiaodian|uniny)\.com([\/]|\/.*|)$/,
			mgjRe: /mgj:\/\//,
			mtRe: /\?.*[&]?mt=([^\.]+)\.([^\.]+)\.([^\.&#]+)/,
			chasing: ["f", "f2"],
			urlExtend: ["acm"],
			extra: {},
			isNativeRe: /mogujie(?!nonative)/i,
			nativeLog: {}
		}, window.PTP_PARAMS && c.extend(o.config, PTP_PARAMS), t.prototype = {
			rand: function(e) {
				var t, n = "";
				for(t = 0; e > t; t++) n += this.arr.charAt(Math.random() * this.arrLen);
				return n
			},
			pageHash: function(e) {
				var t = 5381,
					n = e.length - 1;
				if("string" == typeof e)
					for(; n > -1; n--) t += (t << 5) + e.charCodeAt(n);
				else
					for(; n > -1; n--) t += (t << 5) + e[n];
				var r = 2147483647 & t,
					o = "";
				do o += this.arr.charAt(61 & r); while (r >>= 6);
				return o
			}
		},
		function() {
			var e = o.config,
				t = navigator.userAgent.toLocaleLowerCase();
			o.info = {
				isApp: e.isNativeRe.test(t),
				isNative: e.isNativeRe.test(t),
				isMobile: e.isMobileRe.test(t),
				isIos: t.indexOf("iphone") > -1,
				isAndroid: t.indexOf("android") > -1,
				isXd: location.href.indexOf(".xiaodian.") > -1
			}
		}(),
		function() {
			function e(e, t) {
				for(var n, r = 0; r < e.length; r++)
					if(n = new RegExp(e[r]), n.test(t)) return !0;
				return !1
			}
			o.needReferFix = !1;
			var t = navigator.userAgent.toLocaleLowerCase(),
				n = o.info.isApp && o.info.isAndroid,
				r = -1 != t.indexOf("meilishuo"),
				i = -1 != t.indexOf("mogujie"),
				a = -1 != t.indexOf("referfix=1"),
				u = ["^http://(m|www).mogujie.com/x6/wall/book/([a-z]+)/?(\\S*)$", "^http://(m|www).mogujie.com/x6/marketchannel\\?(\\S*)$", "^http://(m|www).mogujie.com/x6/detail/(\\w*)[\\?]?(\\S*)$", "^http://(m|www).mogujie.com/x6/shop/(.*?)/goodsall[\\?]?(\\S*)$", "^http://(m|www).mogujie.com/x6/account/getprofile[\\?].*?uid=(\\w*).*?$", "^http://(m|www).mogujie.com/x6/attention/lifestyle[\\?].*?id=(\\w*).*?((ptp|url_ptp)=([\\w.]+))?$", "^http://(m|www).mogujie.com/x6/shop/(\\w+)/?(\\?(.*))?$", "^http://(m|www).mogujie.com/x6/book/([a-z]+)/?(\\S*)$", "^http://(m|www).mogujie.com/x6/search/?\\?keywords=([^&]+)(\\S*)$"],
				c = ["^https?://sgitem.meilishuo.com/sgdetail/(\\w+)/?\\??(.*?)$", "^https?://item.meilishuo.com/h5/detail/(\\w+)/?\\??(.*?)$", "^https?://www.mogujie.com/trade/order/detail4buyer\\?.*?orderId=(\\w+).*?$", "^https?://www.mogujie.com/trade/refund/detail\\?.*?itemOrderId=(\\w+).*?$", "^(http|https)://sgitemapp.meilishuo.com/sgdetail/(\\w+).*?$", "^https?://act.meilishuo.com/keyword/?\\??(.*?)?$", "^https?://weixin.meilishuo.com/wx/shop/(\\w+)/?\\??(.*?)$"];
			o.matchNativeLink = e;
			var d = function(t) {
					return -1 != t.indexOf("mls://") ? !0 : e(c, t)
				},
				f = function(t) {
					return -1 != t.indexOf("mgj://") ? !0 : -1 == t.indexOf("/x6/") ? !1 : e(u, t)
				};
			o.isMgjNativeLink = f;
			var p = function() {
					var e = "";
					if(n) {
						if(a) return !0;
						var o = t.match(/\/(\d{3})\//);
						if(o && o[1]) {
							if(e = parseInt(o[1]), r && 832 >= e) return !0;
							if(i && 806 >= e) return !0
						}
					}
					return !1
				},
				g = function(e) {
					return o.util.setQuery(e, "_isfilter", "1")
				};
			o.needReferFix = p(), o.fixReferUrl = function(e) {
				return r && d(e) ? e : i && f(e) ? e : g(e)
			}
		}(),
		function() {
			function e() {
				var e = "1";
				return s.isMobile && (e = "m1"), s.isIos && s.isNative ? e = "am0" : s.isAndroid && s.isNative && (e = "am1"), e
			}

			function n() {
				var e = c.getValue(g.ptp_cnt_b);
				if(e) return e;
				var t = "",
					n = location.href.split("?")[0];
				return t = m.pageHash(n)
			}

			function r() {
				var e = c.getCookieOrFunc(g.cpsinfo);
				return e ? e = e.replace("-", ",") : ""
			}

			function i() {
				var e = c.getValue(g.platform);
				return e ? e : s.isMobile ? 32 : 31
			}

			function a(e) {
				if(e) {
					var t = c.getValue(g.ptp_cnt_c_d, e);
					if(t) return t;
					var n = e.getAttribute("data-ptp-customc");
					if(n) return {
						c: n,
						d: l.getIndex("data-ptp-customc", n, e)
					};
					if(e = l.getParents(e, "data-ptp-customc")) return n = e.getAttribute("data-ptp-customc"), n ? {
						c: n,
						d: l.getIndex("data-ptp-customc", n, e)
					} : void 0
				}
			}

			function u() {
				-1 != location.protocol.indexOf("file:") && document.addEventListener("deviceready", function() {
					window.hybrid && hybrid.bundle && hybrid.bundle.getUrl && hybrid.bundle.getUrl(function(e) {
						v && (v.refer = e)
					})
				}, !1)
			}

			function d() {
				return u(), {
					time: c.getTime(),
					sfrom: c.getCookieOrFunc(g.sfrom),
					uuid: c.getCookieOrFunc(g.uuid),
					uid: c.getCookieOrFunc(g.uid),
					cpsinfo: r(),
					refer: location.href,
					rerefer: document.referrer,
					ptp_url: c.getQuery("ptp", location.search),
					ptp_ref: c.getQuery("ptp", document.referrer)
				}
			}

			function f() {
				return {
					a: e(),
					b: n(),
					c: 0,
					d: 0,
					e: m.rand(5)
				}
			}
			var p, g = o.config,
				s = o.info,
				l = o.jq,
				m = new t,
				v = d(),
				h = f();
			o.ptp = p = {
				getPtpByType: function(e, t) {
					var n = i(),
						r = [v.time, 0, "p/e", n, o.version, "1001", v.uuid, v.uid, v.refer, v.rerefer];
					return "p" == e ? (t = t || "1001", r[2] = "p", r[5] = t, r) : "e" == e ? (t = t || "50001", r[2] = "e", r[5] = t, r) : void 0
				},
				getPtpCnt: function(e, t) {
					return e || (e = h.c), t || (t = h.d), [h.a, h.b, e, t, h.e].join(".")
				},
				getPtpInfo: function() {
					var e = {};
					return c.extend(e, v, {
						ptp_cnt: p.getPtpCnt()
					})
				},
				getPtpInfoAndExtra: function() {
					var e = p.getPtpInfo(),
						t = {};
					if(g.extra)
						for(var n in g.extra) g.extra.hasOwnProperty(n) && (t[n] = c.getValue(g.extra[n]));
					return c.extend(e, t)
				},
				createPtpCnt: function(e) {
					var t = a(e),
						n = 0,
						r = 0;
					if(t) return p.getPtpCnt(t.c, t.d);
					var o = l.getParents(e, "data-ptp"),
						i = l.getParentByClass(e, "data-ptp-item");
					return o && (n = o.getAttribute("data-ptp"), r = i ? l.getElemIndex(o, ".data-ptp-item", i) : l.getElemIndex(o, "a", e)), r || (r = 0), p.getPtpCnt(n, r)
				},
				makeUrl: function(e, t, n) {
					var r = e.match(/(#.+)$/);
					return e = e.replace(/(#.+)$/, ""), e = c.setQuery(e, "ptp", t), e = p.getChasingParams(e), e = p.getExtendParams(n, e), o.needReferFix && (e = o.fixReferUrl(e)), r && (e += r[1]), e
				},
				getChasingParams: function(e) {
					void 0 === e && (e = "");
					var t = e;
					if(!g.chasing) return t;
					g.chasing.length || (g.chasing = [g.chasing]);
					for(var n, r, o = 0, i = g.chasing.length; i > o; o++) n = g.chasing[o], r = c.getQuery(n), r && (t = c.setQuery(t, n, r));
					return t
				},
				getExtendParams: function(e, t) {
					var n = t;
					if(!e || !l.is(e, "a")) return n;
					e.length && (e = e[0]);
					for(var r = g.urlExtend || [], o = 0, i = r.length; i > o; o++) {
						var a = r[o],
							u = e.getAttribute("data-ext-" + a);
						u && (n = c.setQuery(n, a, u))
					}
					return n
				},
				refreshPtp: function() {
					v = d(), h = f()
				},
				refreshCookie: function() {
					v && (v.sfrom = c.getCookieOrFunc(g.sfrom), v.uuid = c.getCookieOrFunc(g.uuid), v.uid = c.getCookieOrFunc(g.uid), v.cpsinfo = r())
				}
			}
		}(),
		function() {
			var e = o.info,
				t = o.ptp,
				n = o.config,
				r = 0,
				a = function(e, t) {
					t = t || {};
					var n = [];
					for(var r in t) {
						var o = t[r];
						o || (o = ""), o = encodeURIComponent(o), n.push(r + "=" + o)
					}
					n = n.join("&"), e = e.indexOf("?") > -1 ? e + "&" + n : e + "?" + n;
					var i = new Image;
					i.src = e
				},
				u = function(e, t) {
					t = t || {};
					var n, o = r++;
					try {
						n = document.createElement('<iframe name="' + o + '">')
					} catch(a) {
						n = document.createElement("iframe"), n.setAttribute("name", o)
					}
					try {
						n.style.display = "none", document.body.appendChild(n), n.contentWindow.name = o;
						var u = document.createElement("form");
						u.setAttribute("method", "POST"), u.setAttribute("action", e), u.setAttribute("target", o);
						for(var d in t)
							if(t.hasOwnProperty(d)) {
								var f = document.createElement("input");
								f.setAttribute("type", "hidden"), f.setAttribute("name", d), f.setAttribute("value", t[d]), u.appendChild(f)
							}
						document.body.appendChild(u), u.submit(), c.registerEvent(n, "load", function() {
							try {
								document.body.removeChild(u), document.body.removeChild(n)
							} catch(e) {}
						})
					} catch(a) {
						console.log(i + a)
					}
				},
				d = {
					sendLog: function(e, t, n) {
						var r = c.getIEVersion(),
							o = -1 != r && 8 >= r;
						o && !n ? u(e, t) : a(e, t)
					},
					sendAppLog: function(e, t) {
						return e += "", n.nativeLog && n.nativeLog.logE ? n.nativeLog.logE(e, t) : void(window.hdp && window.hdp["do"] ? hdp["do"]("mgj.tracker.sendEvent", e, t) : document.addEventListener("deviceready", function() {
							window.mgj && mgj.tracker && mgj.tracker.sendEvent && mgj.tracker.sendEvent(e, t)
						}, !1))
					},
					logAppPevent: function(e) {
						return n.nativeLog && n.nativeLog.logP ? n.nativeLog.logP(e) : void(window.hdp && window.hdp["do"] ? hdp["do"]("mgj.pevent", e).then(function() {}, function(e) {
							console.log("pevent:" + e)
						}) : document.addEventListener("deviceready", function() {
							window.mgj && mgj.pevent && mgj.pevent(function() {}, null, e)
						}, !1))
					},
					logData: function(r, o, i) {
						var a = t.getPtpByType(r, o);
						a.push(c.stringify(i)), e.isNative ? d.sendAppLog(o, i) : d.sendLog(n.LogUrl, {
							v: 1,
							data: a.join("	")
						})
					}
				};
			o.send = d
		}(),
		function() {
			function e(e) {
				var t = e.href;
				if(!(t.indexOf("mogujie.com/mtalk/") > -1) && (n.hrefRe.test(t) || n.mgjRe.test(t))) {
					var o = e.getAttribute("data-ptp-cache-id");
					t = e.getAttribute("href"), o && n.ptpRe.test(o) || (o = r.createPtpCnt(e), e.setAttribute("data-ptp-cache-id", o)), e.href = r.makeUrl(t, o, e)
				}
			}

			function t(t) {
				var n = t || window.event,
					r = n.target || n.srcElement,
					o = i.getA(r),
					a = "AREA" === r.nodeName ? r : null;
				a && (o = a), o && (o.href && o.href.indexOf("javascript:") > -1 || e(o))
			}
			var n = o.config,
				r = o.ptp,
				i = o.jq,
				a = "tap" in document.createElement("div") ? "tap" : "mousedown";
			c.registerEvent(document, a, t), c.registerEvent(document, "touchstart", t)
		}();
	var p = o.ptp,
		g = o.config,
		s = o.send,
		l = !g.shouldRequestCookie();
	if(l || c.loadScript(g.CookieUrl, function() {
			l = !0, o.ptp.refreshCookie(), c.fire("LoggerReady")
		}), r(), o.refreshPevent = function() {
			o.ptp.refreshPtp(), r()
		}, o.log = function(e, t) {
			if(void 0 !== e) {
				t = t || {};
				var n = p.getPtpInfoAndExtra();
				l ? o.send.logData("e", e, c.extend({}, n, t)) : c.listenTo("LoggerReady", function() {
					var n = p.getPtpInfoAndExtra();
					o.send.logData("e", e, c.extend({}, n, t))
				}), window.MtaH5 && MtaH5.clickStat && MtaH5.clickStat(e, t)
			}
		}, o.generatePtpParams = function(e, t) {
			if(void 0 !== e) {
				var n = "";
				return n = t ? p.createPtpCnt(t) : p.getPtpCnt(), p.makeUrl(e, n, t)
			}
		}, o.needReferFix && document.referrer) {
		var m = p.getPtpInfoAndExtra();
		o.log("016000616", {
			ptp_cnt2: m.ptp_cnt,
			ptp_url2: m.ptp_url,
			ptp_ref2: m.ptp_ref
		})
	}
	"undefined" != typeof module && "object" == typeof exports ? module.exports = o : "function" == typeof define && (define.amd || define.cmd) && define("logger", function() {
		return o
	})
}(window);
! function(e) {
	function t(r) {
		if(n[r]) return n[r].exports;
		var i = n[r] = {
			exports: {},
			id: r,
			loaded: !1
		};
		return e[r].call(i.exports, i, i.exports, t), i.loaded = !0, i.exports
	}
	var n = {};
	return t.m = e, t.c = n, t.p = "", t(0)
}([function(e, t, n) {
	function r(e) {
		return e = e || {}, e.extra = e.extra || {}, "e" === e.type ? p.constructTraceData(e) : "n" === e.type ? p.constructNetworkData(e) : e
	}
	var i = n(1),
		o = n(3),
		a = n(5),
		s = n(10),
		d = n(6),
		u = (n(9), n(2)),
		c = n(4),
		p = n(8),
		f = n(7);
	try {
		f.init(), d.init(), a.init(), s.init(), u.addEventListener(window, "load", function() {
			d.send(p.constructNetworkData({
				type: "n",
				url: u.formatUrl(location.href),
				responseCode: 200,
				responseSize: c.BLANK_VALUE,
				responseTime: o.getResponseTime(),
				bizCode: c.BLANK_VALUE,
				extra: {}
			})), d.send(p.constructTraceData({
				type: "e",
				extra: u.extend({
					performanceEvent: !0,
					eventid: c.eventidMap[i.getPlatform()]
				}, i.getAll(), o.getOnload())
			}))
		})
	} catch(g) {}
	var l = {
		send: function(e) {
			d.send(r(e))
		},
		sendImmediately: function() {
			d.sendImmediately(r(data))
		}
	};
	window._trace || (window._trace = l), window.Mogu && window.Mogu.util && (window.Mogu.util.trace = l)
}, function(e, t, n) {
	function r() {
		var e = navigator.appVersion;
		return /Mobile|mini|Fennec|Android|iP(ad|od|hone)/.test(e) ? "h5" : "pc"
	}

	function i() {
		var e, t, n = (navigator.appVersion, navigator.userAgent),
			r = "其它",
			i = r,
			o = "",
			a = "";
		return -1 != (e = n.indexOf("Opera")) && (i = "Opera", o = n.substring(e + 6), -1 != (e = n.indexOf("Version")) && (o = n.substring(e + 8))), -1 != (e = n.indexOf("OPR")) ? (i = "Opera", o = n.substring(e + 4)) : -1 != (e = n.indexOf("MSIE")) ? (i = "IE", o = n.substring(e + 5)) : -1 != (e = n.indexOf("Chrome")) ? (i = "Chrome", o = n.substring(e + 7)) : -1 != (e = n.indexOf("Safari")) ? (i = "Safari", o = n.substring(e + 7), -1 != (e = n.indexOf("Version")) && (o = n.substring(e + 8))) : -1 != (e = n.indexOf("Firefox")) ? (i = "Firefox", o = n.substring(e + 8)) : -1 != n.indexOf("Trident/") ? (i = "IE", o = n.substring(n.indexOf("rv:") + 3)) : -1 != n.toLowerCase().indexOf("meilishuo") ? i = "Meilishuo" : -1 != n.indexOf("MicroMessenger") ? i = "Wechat" : -1 != n.indexOf("QQ") ? i = "QQ" : -1 != n.indexOf("Weibo") ? i = "Weibo" : -1 != n.indexOf("baiduboxapp") && (i = "Baidu"), -1 != (t = o.indexOf(";")) && (o = o.substring(0, t)), -1 != (t = o.indexOf(" ")) && (o = o.substring(0, t)), -1 != (t = o.indexOf(")")) && (o = o.substring(0, t)), o && (a = parseInt("" + o, 10), isNaN(a) && (o = "" + parseFloat(navigator.appVersion), a = parseInt(navigator.appVersion, 10))), a ? i + "_" + a : i
	}

	function o() {
		var e = "其它",
			t = e,
			n = navigator.userAgent,
			r = navigator.appVersion,
			i = [{
				s: "Windows 10",
				r: /(Windows 10.0|Windows NT 10.0)/
			}, {
				s: "Windows 8.1",
				r: /(Windows 8.1|Windows NT 6.3)/
			}, {
				s: "Windows 8",
				r: /(Windows 8|Windows NT 6.2)/
			}, {
				s: "Windows 7",
				r: /(Windows 7|Windows NT 6.1)/
			}, {
				s: "Windows Vista",
				r: /Windows NT 6.0/
			}, {
				s: "Windows Server 2003",
				r: /Windows NT 5.2/
			}, {
				s: "Windows XP",
				r: /(Windows NT 5.1|Windows XP)/
			}, {
				s: "Windows 2000",
				r: /(Windows NT 5.0|Windows 2000)/
			}, {
				s: "Windows ME",
				r: /(Win 9x 4.90|Windows ME)/
			}, {
				s: "Windows 98",
				r: /(Windows 98|Win98)/
			}, {
				s: "Windows 95",
				r: /(Windows 95|Win95|Windows_95)/
			}, {
				s: "Windows NT 4.0",
				r: /(Windows NT 4.0|WinNT4.0|WinNT|Windows NT)/
			}, {
				s: "Windows CE",
				r: /Windows CE/
			}, {
				s: "Windows 3.11",
				r: /Win16/
			}, {
				s: "Android",
				r: /Android/
			}, {
				s: "Open BSD",
				r: /OpenBSD/
			}, {
				s: "Sun OS",
				r: /SunOS/
			}, {
				s: "Linux",
				r: /(Linux|X11)/
			}, {
				s: "iOS",
				r: /(iPhone|iPad|iPod)/
			}, {
				s: "Mac OS X",
				r: /Mac OS X/
			}, {
				s: "Mac OS",
				r: /(MacPPC|MacIntel|Mac_PowerPC|Macintosh)/
			}, {
				s: "QNX",
				r: /QNX/
			}, {
				s: "UNIX",
				r: /UNIX/
			}, {
				s: "BeOS",
				r: /BeOS/
			}, {
				s: "OS/2",
				r: /OS\/2/
			}, {
				s: "Search Bot",
				r: /(nuhk|Googlebot|Yammybot|Openbot|Slurp|MSNBot|Ask Jeeves\/Teoma|ia_archiver)/
			}];
		for(var o in i) {
			var a = i[o];
			if(a.r.test(n)) {
				t = a.s;
				break
			}
		}
		var s = e;
		switch(/Windows/.test(t) && (s = /Windows (.*)/.exec(t)[1], t = "Windows"), t) {
			case "Mac OS X":
				s = "";
				break;
			case "Android":
				var d = (/Android ([\.\_\d]+)/.exec(n)[1] || "").split(".").slice(0, 2);
				s = d.join(".");
				break;
			case "iOS":
				s = /OS (\d+)_(\d+)_?(\d+)?/.exec(r), s = s[1] + "." + s[2]
		}
		return t === e ? t : t + s
	}

	function a() {
		var e = "";
		return screen.width && (width = screen.width ? screen.width : "", height = screen.height ? screen.height : "", e += "" + width + "x" + height), e
	}

	function s() {
		var e = (window.devicePixelRatio ? window.devicePixelRatio : 1) - 0;
		return e.toFixed(1)
	}

	function d() {
		return window.navigator.userAgent
	}

	function u() {
		var e = d();
		return e.indexOf("Crosswalk") > -1
	}
	n(2), window;
	e.exports = {
		getPlatform: r,
		getScreen: a,
		getOs: o,
		getBrowser: i,
		getUa: d,
		getDevicePixelRatio: s,
		getAll: function() {
			return {
				platform: r(),
				screen: a(),
				os: o(),
				browser: i(),
				devicePixelRatio: s(),
				isXwalk: u()
			}
		}
	}
}, function(e, t) {
	var n = 0;
	e.exports = {
		formatData: function(e) {
			return("" + e).replace(/\./gim, "_")
		},
		formatUrl: function(e) {
			return "string" == typeof e && (e = e.split("?")[0].split("https://").join("").split("http://").join(""), "/" === e.charAt(e.length - 1) && (e = e.substr(0, e.length - 1))), e
		},
		getIEVersion: function() {
			var e = -1;
			if("Microsoft Internet Explorer" == navigator.appName) {
				var t = navigator.userAgent,
					n = new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})");
				null != n.exec(t) && (e = parseFloat(RegExp.$1))
			} else if("Netscape" == navigator.appName) {
				var t = navigator.userAgent,
					n = new RegExp("Trident/.*rv:([0-9]{1,}[.0-9]{0,})");
				null != n.exec(t) && (e = parseFloat(RegExp.$1))
			}
			return e
		},
		getUniqId: function() {
			return "_traceId_" + n++
		},
		post: function(e, t) {
			t = t || {};
			var n, r = this.getUniqId();
			try {
				n = document.createElement('<iframe name="' + r + '">')
			} catch(i) {
				n = document.createElement("iframe"), n.setAttribute("name", r)
			}
			try {
				n.style.display = "none";
				var o = document.createElement("form");
				o.setAttribute("method", "POST"), o.setAttribute("action", e), o.setAttribute("target", r);
				for(var a in t)
					if(t.hasOwnProperty(a)) {
						var s = document.createElement("input");
						s.setAttribute("type", "hidden"), s.setAttribute("name", a), s.setAttribute("value", t[a]), o.appendChild(s)
					}
				document.body.appendChild(o), document.body.appendChild(n), this.addEventListener(n, "load", function() {
					try {
						document.body.removeChild(o), document.body.removeChild(n)
					} catch(e) {}
				}), o.submit()
			} catch(i) {}
		},
		waitFor$: function(e) {
			return window.$ ? void e() : void setTimeout(function() {
				this.waitFor$(e)
			}, 50)
		},
		addEventListener: function(e, t, n) {
			e.addEventListener ? e.addEventListener(t, n, !1) : e.attachEvent && e.attachEvent("on" + t, n)
		},
		extend: function() {
			for(var e = arguments, t = arguments[0], n = 1; n < e.length; n++) {
				var r = e[n];
				for(var i in r) r.hasOwnProperty(i) && (t[i] = r[i])
			}
			return t
		},
		trim: function(e) {
			var t = new RegExp("(^[\\s\\t\\xa0\\u3000]+)|([\\u3000\\xa0\\s\\t]+$)", "g");
			return String(e).replace(t, "")
		},
		getMsExactMin: function() {
			var e = (new Date).getTime();
			return e - e % 6e4
		},
		stringify: function(e) {
			var t = typeof e;
			if("object" != t || null === e) return "string" == t && (e = '"' + e + '"'), String(e);
			var n, r, i = [],
				o = e && e.constructor == Array;
			for(n in e) r = e[n], t = typeof r, e.hasOwnProperty(n) && ("string" == t ? r = '"' + r + '"' : "object" == t && null !== r && (r = jQuery.stringify(r)), i.push((o ? "" : '"' + n + '":') + String(r)));
			return(o ? "[" : "{") + String(i) + (o ? "]" : "}")
		}
	}
}, function(e, t, n) {
	function r() {
		return window.performance && window.performance.timing ? s.responseEnd - s.requestStart : a.BLANK_VALUE
	}

	function i() {
		if(!s) return {};
		for(var e = {
				dns: s.domainLookupEnd - s.domainLookupStart,
				tcp: s.connectEnd - s.connectStart,
				request: s.responseStart - s.requestStart,
				response: s.responseEnd - s.responseStart,
				domContentLoad: s.domContentLoadedEventEnd - s.domContentLoadedEventStart,
				blankTime: (window.__trace__headendt || 0) - s.domainLookupStart,
				readyTime: s.domInteractive - s.domainLookupStart,
				onloadTime: s.domComplete - s.domainLookupStart,
				os: o.getOs(),
				browser: o.getBrowser()
			}, t = ["dns", "tcp", "request", "response", "domContentLoad", "loadEvent", "blankTime", "readyTime", "onloadTime"], n = 0; n < t.length; n++)
			if(e[t[n]] < 0) return {};
		return e
	}
	var o = n(1),
		a = n(4),
		s = window.performance && window.performance.timing ? window.performance.timing : null;
	e.exports = {
		getOnload: i,
		getResponseTime: r
	}
}, function(e, t) {
	e.exports = {
		URL: "http://log.juangua.com/mlogs.php",
		APPID: 30,
		BLANK_VALUE: "",
		LOCALSTORAGE_KEY: "__trace__queue",
		LOCALSTORAGE_MAXLENGTH: 3,
		COOL_DOWN: 5e3,
		eventidMap: {
			h5Performance: 50003,
			pcPerformance: 50004,
			jserror: 50005
		},
		abbreviation: {}
	}
}, function(e, t, n) {
	function r(e, t, n, r) {
		for(var i = !0, o = 0; o < d.length; o++) {
			var a = d[o] || {};
			if(a.msg === e && a.file === t && a.line === n && a["char"] === r) {
				i = !1;
				break
			}
		}
		return i
	}
	var i = (document, n(4), n(6)),
		o = n(8),
		a = n(1),
		s = n(2),
		d = [];
	e.exports = {
		init: function() {
			window.onerror = function(e, t, n, u) {
				r(e, t, n, u) && (d.push({
					msg: e,
					file: t,
					line: n,
					"char": u
				}), i.send(o.constructTraceData({
					type: "e",
					extra: s.extend({
						msg: e,
						file: t,
						line: n,
						"char": u
					}, a.getAll())
				})))
			}
		}
	}
}, function(e, t, n) {
	function r(e) {
		var t, n = {
			v: 3
		};
		return t = "n" === e[0].type || "s" === e[0].type ? "network" : "data", n[t] = i(e), n
	}

	function i(e) {
		e = e || [];
		for(var t = "	", n = "\n", r = [], i = 0; i < e.length; i++) {
			var o = e[i] || {};
			if(o = o || {}, o.extra) {
				o.extra.performanceEvent && delete o.extra.performanceEvent;
				var a = window.JSON ? JSON.stringify : u.stringify;
				o.extra = a(o.extra)
			}
			var s = [];
			"n" === o.type || "s" === o.type ? s = ["appid", "type", "did", "startTime", "url", "responseCode", "responseTime", "time", "fixTime", "requestSize", "responseSize", "bizCode", "extra"] : "e" === o.type && (s = ["appid", "type", "did", "startTime", "uid", "referrer", "url", "time", "fixTime", "extra"]);
			for(var d = [], c = 0; c < s.length; c++) d.push(o[s[c]]);
			r.push(d.join(t))
		}
		return r.join(n)
	}

	function o(e) {
		return "e" === e.type && e.extra.performanceEvent
	}

	function a(e) {
		var t = (new Date).getTime();
		t - p > c.COOL_DOWN && (u.post(c.URL, e), p = t)
	}

	function s() {
		setTimeout(function() {
			d.isReadyPost() && a(r(d.shift())), s()
		}, c.COOL_DOWN)
	}
	var d = n(7),
		u = n(2),
		c = n(4),
		p = 0;
	e.exports = {
		send: function(e) {
			if(e = e || {}, e.extra = e.extra || {}, "n" !== e.type && !o(e)) return void u.post(c.URL, r([e]));
			var t = d.push(e);
			t || u.post(c.URL, r([e])), "n" !== e.type && d.isReadyPost() && a(r(d.shift()))
		},
		sendImmediately: function(e) {
			e = e || {}, e.extra = e.extra || {}, u.post(c.URL, r([e]))
		},
		init: function() {
			s()
		}
	}
}, function(e, t, n) {
	function r() {
		return {
			event: [],
			network: []
		}
	}
	var i = {
			e: "event",
			n: "network",
			s: "network"
		},
		o = n(4),
		a = n(2);
	e.exports = {
		support: !(!window.localStorage || !window.JSON || "function" != typeof localStorage.getItem || "function" != typeof localStorage.setItem || 11 == a.getIEVersion()),
		init: function() {
			this.support && this.getStorage()
		},
		push: function(e) {
			if(!this.support) return !1;
			var t = this.getStorage() || r(),
				n = i[e.type];
			return n ? (t[n].push(e), this.setStorage(t), t) : !1
		},
		shift: function(e) {
			if(!this.support) return !1;
			e = e || o.LOCALSTORAGE_MAXLENGTH;
			var t, n = this.getStorage();
			if(n.event.length >= e) t = "event";
			else {
				if(!(n.network.length >= e)) return !1;
				t = "network"
			}
			var r = n[t].slice(0, e);
			return n[t] = n[t].slice(e), this.setStorage(n), r
		},
		isReadyPost: function() {
			if(!this.support) return !1;
			var e = this.getStorage();
			return e.event.length > o.LOCALSTORAGE_MAXLENGTH || e.network.length > o.LOCALSTORAGE_MAXLENGTH
		},
		getStorage: function() {
			try {
				var e = JSON.parse(localStorage.getItem(o.LOCALSTORAGE_KEY))
			} catch(t) {
				e = r(), this.setStorage(e)
			}
			return e || (e = r(), this.setStorage(e)), e
		},
		setStorage: function(e) {
			try {
				localStorage.setItem(o.LOCALSTORAGE_KEY, JSON.stringify(e))
			} catch(t) {
				return !1
			}
		}
	}
}, function(e, t, n) {
	var r = n(4),
		i = n(9),
		o = n(2);
	e.exports = {
		constructTraceData: function(e) {
			e = e || {}, e.extra = e.extra || {}, e.extra.pageUrl = o.formatUrl(location.href);
			var t = Math.ceil(o.getMsExactMin() / 1e3);
			return e = o.extend({
				appid: i.getAppid(),
				did: i.getDid(),
				startTime: t,
				uid: i.getUid(),
				referrer: document.referrer,
				url: o.formatUrl(location.href),
				time: t,
				fixTime: t
			}, e)
		},
		constructNetworkData: function(e) {
			e = e || {}, e.extra = e.extra || {}, e.extra.pageUrl = o.formatUrl(location.href);
			var t = Math.ceil(o.getMsExactMin() / 1e3);
			return e = o.extend({
				appid: i.getAppid(),
				did: i.getDid(),
				startTime: t,
				time: t,
				fixTime: r.BLANK_VALUE,
				requestSize: t
			}, e)
		}
	}
}, function(e, t, n) {
	var r = n(4),
		i = n(2);
	e.exports = {
		getUid: function() {
			var e = this._getCookie() || {};
			return e.__ud || r.BLANK_VALUE
		},
		getDid: function() {
			var e = this._getCookie() || {};
			return e.__mgjuuid || r.BLANK_VALUE
		},
		getAppid: function() {
			return r.APPID
		},
		_getCookie: function() {
			for(var e = document.cookie || "", t = e.split(";"), n = {}, r = 0; r < t.length; r++) {
				var o = i.trim(t[r] || ""),
					a = o.split("=");
				n[a[0]] = a[1]
			}
			return n
		}
	}
}, function(e, t, n) {
	var r = n(2),
		i = n(6),
		o = n(8),
		a = n(4);
	e.exports = {
		init: function() {
			var e = $.ajax;
			$.ajax = function() {
				var t = (new Date).getTime(),
					n = e.apply(this, arguments);
				try {
					var s, d = !1;
					"string" == typeof arguments[0] ? (s = r.formatUrl(arguments[0]), arguments[1] && "[object Object]" === Object.prototype.toString.call(arguments[1]) && "jsonp" === arguments[1].dataType && (d = !0)) : "object" == typeof arguments[0] && (s = r.formatUrl(arguments[0].url || ""), "jsonp" === arguments[0].dataType && (d = !0)), n.always(function(e) {
						if(!d) {
							var r = n.getAllResponseHeaders() || "",
								u = /content\-length\:\s(\d*)/m,
								c = 0,
								p = u.exec(r);
							p && p[1] && (c = $.trim(p[1]) || "");
							var f;
							"[object Object]" === Object.prototype.toString.call(e) && e.status && (f = e.status.code), i.send(o.constructNetworkData({
								type: "n",
								url: s,
								responseCode: n.status,
								responseSize: c,
								responseTime: (new Date).getTime() - t,
								bizCode: f || a.BLANK_VALUE,
								extra: {
									isAjax: 1
								}
							}))
						}
					})
				} catch(u) {}
				return n
			}
		}
	}
}]);
! function(t, e) {
	"object" == typeof exports && "object" == typeof module ? module.exports = e() : "function" == typeof define && define.amd ? define("mls-pc/common/header/index", [], e) : "object" == typeof exports ? exports["mls-pc/common/header/index"] = e() : t["mls-pc/common/header/index"] = e()
}(this, function() {
	return function(t) {
		function e(i) {
			if(n[i]) return n[i].exports;
			var o = n[i] = {
				exports: {},
				id: i,
				loaded: !1
			};
			return t[i].call(o.exports, o, o.exports, e), o.loaded = !0, o.exports
		}
		var n = {};
		return e.m = t, e.c = n, e.p = "", e(0)
	}([function(t, e, n) {
		"use strict";
		n(1)
	}, function(t, e, n) {
		var i, o;
		i = [], o = function() {
			function t(t, e) {
				this.init(t, e)
			}

			function e() {
				function t(t) {
					return $.trim(t).replace(/(<|>|'|"|window|alert|eval|$|jQuery)/gi, "")
				}
				s.on("mouseenter", ".search_tip li", function(t) {
					var e = $(this),
						n = e.index();
					d.chooseIndex = n, m.changeListTab(n)
				}).on("click", ".search_tip li", function(t) {
					var n = $(this).find(".title").text();
					$(t.target).hasClass("prop") && (n += " " + $(t.target).text()), e.submitBefore(d.chooseType, d.chooseIndex), a.val(n), r.submit()
				}), s.on("click", ".hot_list li", function() {
					var t = $(this);
					return e.submitBefore(m.hotTypeName, t.index()), a.val(t.find("span").jsp()), r.submit(), !1
				}), s.on("click", ".local_del", function(t) {
					var e = $(this),
						n = e.parent();
					u.del(n.find(".title").attr("title"));
					var i = u.getTenItem();
					return m.updateLocalContent(e, i), d.chooseIndex = -1, d.tipLength = i.length, !1
				}).on("click", ".local_title .del_all", function() {
					var t = $(this);
					return u.set(), m.destoryLocalContent(t), t.remove(), d.chooseIndex = -1, d.tipLength = 0, !1
				}), o.on("click", ".selectbox a", function(t) {
					t.preventDefault(), m.changeType($(this))
				}).on("mouseenter", ".selectbox", function() {
					s.hide(), $(this).addClass("sele_hover")
				}).on("mouseleave", ".selectbox", function() {
					$(this).removeClass("sele_hover")
				}), r.submit(function() {
					var n = $(this),
						i = t(a.val()),
						o = a.attr("def-v");
					if("" == i || i == o) {
						if("" == i && "shop" == $("#select_type").val()) return !1;
						var s = a.data("def");
						a.val(s || "");
						var l = '<input type="hidden" name="from" value="searchplacehold" id="TJ">';
						$("#top_nav_form").append(l), setTimeout(function() {
							$("#TJ").remove()
						}, 1e3)
					} else i == $.trim(a.val()) && "bao" == $("#select_type").val() && u.addOne(i);
					if(r.find(".emptyvalue").remove(), n.data("index") > -1 && null !== n.data("type")) {
						var c = '<input type="hidden" class="emptyvalue" name="from" value="' + n.data("type") + "querytip" + n.data("index") + '">';
						r.append(c)
					}
					m.destoryContent(), e.submitAfter()
				}), m.showStickySearch() && m.initStickySearch()
			}
			var n = MoGu.ui.getdoT(),
				i = MoGu.util.getStore();
			if(n && i) {
				var o = $("#nav_search_form");
				if(o.length) {
					var s = $(".top_search_hint"),
						a = o.find(".ts_txt"),
						r = $("#top_nav_form"),
						l = $("#select_type"),
						c = o.find(".selectbox"),
						h = "/msearch/tips/item",
						p = {
							nowHost: window.location.host,
							defultHost: "index.jsp",
							template: '<div class="search_tip_box fl">{{=it.searchResult}}</div>',
							listItemTemp: ['<div class="mr300 tip_wrap">', '{{ if(it.titleName && it.titleName != ""){ }}', '<h3 class="search_tip_title">{{=it.titleName}}</h3>', "{{ }else{ }}", "{{ } }}", '<ul class="search_tip">', "{{~it.items :item:index}}", "{{ if(index < 10){ }}", "<li>", '<a href="javascript:;" class="title" title="{{= item.title }}" >{{= item.title }}</a>', "{{~item.props :prop: i}}", '<span class="prop">{{= prop }}</span>', "{{~}}", "</li>", "{{ } }}", "{{~}}", "</ul>", "</div>"].join(""),
							localItemTemp: ['<div class="mr300 tip_wrap">', '<h3 class="search_tip_title local_title clearfix">', "{{ if(it.items.length){ }}", '<span class="del_all">删除</span>', "{{ } }}", "历史记录", "</h3>", '<ul class="search_tip">', "{{~it.items :item:index}}", "{{ if(index < 10){ }}", '<li class="local_item">', '<a href="javascript:;" class="title" title="{{=item}}" >{{=item}}</a>', "{{~item.props :prop: i}}", '<span class="prop">{{= prop }}</span>', "{{~}}", '<span class="nums local_del">x</span>', "</li>", "{{ } }}", "{{~}}", "</ul>", "</div>"].join(""),
							hotKeyTpl: ['<div class="search_hot_wrap">', '<h3 class="search_tip_title hot_title">热门关键词</h3>', '<ul class="hot_list clearfix">', "{{~it.items :item:index}}", "{{ if(index < 10){ }}", "<li><span>{{= item.title }}</span></li>", "{{ } }}", "{{~}}", "</ul>", "</div>"].join(""),
							emptyTpl: ['<div class="mr300 tip_wrap">', '<p class="tip_none">暂无相关热门关键词</p>', "</div>"].join("")
						},
						u = {
							keyName: "_search_local_history",
							keyShowName: "_search_local_history_show",
							maxLength: 20,
							showLength: 10,
							isshow: function() {
								return !0
							},
							abtest: function(t) {
								i.set(this.keyShowName, 1)
							},
							get: function() {
								return i.get(this.keyName) || []
							},
							getTenItem: function() {
								var t = this.get();
								return t.slice(0, this.showLength)
							},
							set: function(t) {
								i.set(this.keyName, t || [])
							},
							addOne: function(t) {
								if(t = $.trim(t), "" != t) {
									var e = this.get(),
										n = $.inArray(t, e); - 1 == n ? (e.unshift(t), e.length > this.maxLength && e.pop()) : (e.splice(n, 1), e.unshift(t)), this.set(e)
								}
							},
							del: function(t) {
								t = $.trim(t);
								var e = this.get(),
									n = $.inArray(t, e);
								n > -1 && (e.splice(n, 1), this.set(e))
							}
						};
					t.prototype.init = function(t, e) {
						this.chooseIndex = -1, this.chooseType = t, this.tipLength = e || 0
					};
					var d = new t("undefined"),
						m = {
							ajaxRequest: null,
							hotKeyArr: [],
							isShopHost: function() {
								return !1
							},
							showStickySearch: function() {
								var t = location.pathname,
									e = $(".mgj_primary"),
									n = e.length > 0 ? e.offset().top + e.height() : 10;
								return "www.meilishuo.com" === location.host && ("/" === t || "/more" === t) || t.indexOf("/book/search/") > -1 || /webdemo || localhost/.test(location.host) && /sticky/.test(location.search) ? (t.indexOf("/book/search/") > -1 && (e = $(".search_filter_wrap"), n = e.length ? e.offset().top : 150), this.stickyTargetTop = n, !0) : !1
							},
							resetFactory: function(t) {
								this.isShopHost() ? this.resetShopContent(t) : u.isshow() ? this.resetListContent(t) : this.resetOldContent(t)
							},
							resetListContent: function(e) {
								function i(t) {
									o(function() {
										a()
									})
								}

								function o(n) {
									r.ajaxRequest && r.ajaxRequest.abort();
									var i = u.getTenItem();
									return "" == $.trim(e) ? (l.push(r.renderLocalContent(i)), void($.isFunction(n) && n())) : void(r.ajaxRequest = $.post(h, {
										input: e
									}, function(e) {
										if(e && 1001 == e.status.code) {
											var i = e.result.tipCount;
											0 == i ? l.push(r.renderEmptyContent()) : (l.push(r.renderSearchContent(e.result.tips, e.result.nums, e.result.props)), d = new t(r.searchTypeName, i))
										}
										$.isFunction(n) && n()
									}, "json"))
								}

								function a() {
									var t = n.template(p.template)({
										searchResult: l.join("")
									});
									s.jsp(t), r.showContentBox()
								}
								var r = this,
									l = [];
								r.hotKeyArr.length ? i(r.hotKeyArr) : $.post(h, {}, function(t) {
									r.hotKeyArr = t.result.tips, i(r.hotKeyArr)
								}, "json")
							},
							resetShopContent: function(e) {
								function i(n) {
									a.ajaxRequest && a.ajaxRequest.abort(), a.ajaxRequest = $.post(h, {
										input: e
									}, function(e) {
										if(e && 1001 == e.status.code) {
											var i = e.result.tipCount;
											0 == i ? r.push(a.renderEmptyContent()) : (r.push(a.renderSearchContent(e.result.tips, e.result.nums, e.result.props, l)), d = new t(c, i))
										}
										$.isFunction(n) && n()
									}, "json")
								}

								function o() {
									var t = n.template(p.template)({
										searchResult: r.join("")
									});
									s.jsp(t), a.showContentBox()
								}
								var a = this,
									r = [],
									l = "",
									c = "" != e ? a.searchTypeName : a.hotTypeName;
								i(function() {
									o()
								})
							},
							resetOldContent: function(e) {
								function i(n) {
									a.ajaxRequest && a.ajaxRequest.abort(), a.ajaxRequest = $.post(h, {
										input: e
									}, function(e) {
										if(e && 1001 == e.status.code) {
											var i = e.result.tipCount;
											0 == i ? r.push(a.renderEmptyContent()) : (r.push(a.renderSearchContent(e.result.tips, e.result.nums, l)), d = new t(c, i))
										}
										$.isFunction(n) && n()
									}, "json")
								}

								function o() {
									var t = n.template(p.template)({
										searchResult: r.join("")
									});
									s.jsp(t), s.find(".tip_wrap").removeClass("mr300").addClass("mr300_fix"), a.showContentBox()
								}
								var a = this,
									r = [],
									l = "" != e ? "搜索结果" : "热门关键词",
									c = "" != e ? a.searchTypeName : a.hotTypeName;
								i(function() {
									o()
								})
							},
							searchTypeName: "",
							renderSearchContent: function(t, e, i, o) {
								for(var s = [], a = 0; a < t.length; a++) s.push({
									title: t[a],
									props: i[a],
									num: e[a]
								});
								return n.template(p.listItemTemp)({
									titleName: o || null,
									items: s
								})
							},
							localTypeName: "local",
							renderLocalContent: function(t) {
								return n.template(p.localItemTemp)({
									items: t
								})
							},
							updateLocalContent: function(t, e) {
								var n = t.parent(),
									i = t.parents(".search_tip");
								if(n.length && i.length)
									if(e.length < u.showLength) n.remove();
									else {
										var o = e[u.showLength - 1];
										n.find(".title").attr("title", o).jsp(o), n.appendTo(i)
									}
							},
							destoryLocalContent: function(t) {
								var e = t.parents(".tip_wrap").find(".search_tip");
								e.length && e.empty()
							},
							hotTypeName: "default",
							renderHotContent: function(t) {
								for(var e = [], i = 0; i < t.length; i++) e.push({
									title: t[i]
								});
								return n.template(p.hotKeyTpl)({
									items: e
								})
							},
							renderEmptyContent: function() {
								return p.emptyTpl
							},
							destoryContent: function() {
								s.empty().hide()
							},
							getContentPosition: function(t, e) {
								var n = e.offset(),
									i = t.data("fixleft"),
									o = t.data("fixtop");
								i && (n.left += parseInt(i)), o && (n.top -= parseInt(o));
								var s = e.width() - 34;
								t.css({
									left: n.left,
									top: n.top + e.height() + 2,
									width: s
								}).addClass("hasposition")
							},
							showContentBox: function() {
								s.show().data("isshow", !0)
							},
							changeListTab: function(t) {
								var e = s.find(".search_tip li"),
									n = e.eq(t);
								return e.removeClass("checked"), n.addClass("checked"), n.find(".title").text()
							},
							changeType: function(t) {
								var e = t.parent(),
									n = e.attr("data-index"),
									i = t.text();
								if(l.val(n), c.find(".selected").text("搜" + i), e.siblings("li").removeClass("current"), e.addClass("current"), "shop" == n) a.val() == a.attr("def-v") && a.val("");
								else if("" == a.val()) {
									var o = a.attr("def-v");
									a.val(o)
								}
								4 == n ? "item.meilishuo.com" === p.nowHost ? r.attr("action", "http://www.meilishuo.com/group/search/") : r.attr("action", "http://www.meilishuo.com/group/search/") : "item.meilishuo.com" === p.nowHost ? r.attr("action", "http://www.meilishuo.com/search/") : r.attr("action", "http://www.meilishuo.com/search/"), c.removeClass("sele_hover")
							},
							initStickySearch: function() {
								var t = $("#nav_search_form"),
									e = ['<div id="J_sticky_container" class="sticky-search-container">', '<div class="wrap">', '<a rel="nofollow" href="index.jsp" class="logo" title="美丽说">美丽说</a>', '<div class="sticky-search-content"></div>', "</div>", "</div>"].join("");
								$("body").append(e);
								var n = $(".sticky-search-container");
								$(window).off("scroll.sticky").on("scroll.sticky", function() {
									$(document).scrollTop() > m.stickyTargetTop ? n.hasClass("lets-rock") || n.find(".sticky-search-content").append(t).end().addClass("lets-rock") : n.hasClass("lets-rock") && ($(".normal-search-content").append($("#nav_search_form")), n.find(".sticky-search-content").empty().end().removeClass("lets-rock"))
								})
							}
						};
					e.submitBefore = function(t, e) {
						r.data({
							type: t,
							index: e
						})
					}, e.submitAfter = function() {
						r.removeData("type index"), d.chooseType = "undefined", d.chooseIndex = -1
					};
					var f = function() {
						MoGu.util.inputTextHide(a, "ts_high"), e()
					};
					f()
				}
			}
		}.apply(e, i), !(void 0 !== o && (t.exports = o))
	}])
}), "function" == typeof define && define.amd && require(["mls-pc/common/header/index"]);
! function(e, t) {
	"object" == typeof exports && "object" == typeof module ? module.exports = t() : "function" == typeof define && define.amd ? define("mls-pc/common/trade-nav/index", [], t) : "object" == typeof exports ? exports["mls-pc/common/trade-nav/index"] = t() : e["mls-pc/common/trade-nav/index"] = t()
}(this, function() {
	return function(e) {
		function t(a) {
			if(n[a]) return n[a].exports;
			var i = n[a] = {
				exports: {},
				id: a,
				loaded: !1
			};
			return e[a].call(i.exports, i, i.exports, t), i.loaded = !0, i.exports
		}
		var n = {};
		return t.m = e, t.c = n, t.p = "", t(0)
	}([function(e, t, n) {
		"use strict";
		var a = n(1),
			i = {
				init: function() {
					this.render()
				},
				render: function() {
					var e = this;
					$.ajax({
						url: "http://portal.meilishuo.com/api/profile/baseinfo",
						type: "get",
						dataType: "jsonp"
					}).then(function(t) {
						if("string" == typeof t && (t = JSON.parse(t)), 1001 == t.status.code) {
							var n = {
									status: e.getQueryString("status") || "all",
									orderVisibleStatusCode: e.getQueryString("orderVisibleStatusCode"),
									orderShowFlag: !!location.pathname.match(/list4buyer|pay|\/wallet|cardmanage/),
									uk: e.randomWord(!1, 40).toLowerCase(),
									pathname: location.pathname
								},
								i = $.extend(t.result, n);
							$("#navListWrap").jsp(MoGu.ui.getTemplate(a, i)), e.setNumbers(), e.bindEvents()
						}
					})
				},
				bindEvents: function() {
					$(".mu_title").on("click", function() {
						var e = $(this);
						0 === e.find("a").length && e.parent().toggleClass("mu_expand")
					})
				},
				setNumbers: function() {
					var e = this,
						t = {
							buyerUserId: "",
							marketType: "market_meilishuo",
							page: e.getQueryString("page") || 1,
							pageSize: 1,
							status: e.getQueryString("status") || "all",
							orderPlatformCode: "PC",
							orderVisibleStatusCode: e.getQueryString("orderVisibleStatusCode") || ""
						};
					$.ajax({
						data: {
							data: JSON.stringify(t)
						},
						url: "api/order/list4buyer",
						type: "get",
						success: function(e) {
							if("SUCCESS" == e.status.code) {
								var t = e.result.countInfo;
								t.unReceivedOrderCount && $("#unReceivedOrder").text(t.unReceivedOrderCount), t.unpaidOrderCount && $("#unpaidOrder").text(t.unpaidOrderCount), t.waitingRateOrderCount && $("#waitingRateOrder").text(t.waitingRateOrderCount), t.recyleOrderCount && $("#recyleOrder").text(t.recyleOrderCount)
							}
						}
					})
				},
				getQueryString: function(e, t) {
					t = null == t ? window.location.href : t, t = t.split("#")[0];
					var n = new RegExp("(^|\\?|&)" + e + "=([^&]*)(\\s|&|$)", "i");
					return n.test(t) ? decodeURIComponent(RegExp.$2.replace(/\+/g, " ")) : ""
				},
				randomWord: function(e, t, n) {
					var a = "",
						i = t,
						r = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
					e && (i = Math.round(Math.random() * (n - t)) + t);
					for(var s = 0; i > s; s++) {
						var o = Math.round(Math.random() * (r.length - 1));
						a += r[o]
					}
					return a || ""
				}
			};
		i.init()
	}, function(e, t) {
		e.exports = '\n<div class="doota_nav mu_nav_wrap">\n    <ul class="doota_ul">\n        <li><a class="menu_order disable-a"> 我的订单 </a>\n          <ul class="mu_nav_item">\n            <li {{? it.status==\'all\' && !it.orderVisibleStatusCode }}class="c"{{?}}>\n                <a href="orderlist.jsp#&_uk={{= it.uk}}">全部订单</a>\n            </li>\n            <li {{? it.status==\'created\' }}class="c"{{?}}>\n              <a href="order_unshipped.jsp#&_uk={{= it.uk}}">\n                待付款\n                <i id="unpaidOrder" class="mu_nav_count"><i class="mu_nav_count_arw"></i></i>\n              </a>\n            </li>\n            <li {{? it.status==\'unshipped_and_unreceived\' }}class="c"{{?}}>\n              <a href="order_unshipped.jsp#&_uk={{= it.uk}}">\n                待收货\n                <i id="unReceivedOrder" class="mu_nav_count"><i class="mu_nav_count_arw"></i></i>\n              </a>\n            </li>\n            <li {{? it.status==\'received_and_completed\' }}class="c"{{?}}>\n              <a href="order_received.jsp#&_uk={{= it.uk}}">\n                待评价\n                <i id="waitingRateOrder" class="mu_nav_count"><i class="mu_nav_count_arw"></i></i>\n              </a>\n            </li>\n            <li {{? it.status==\'refund_orders\' }}class="c"{{?}}>\n              <a href="order_DELETED.jsp#&_uk={{= it.uk}}">\n                退货退款\n                <i class="mu_nav_count"><i class="mu_nav_count_arw"></i></i>\n              </a>\n            </li>\n            <!-- 新增，stage=8 回收站订单 -->\n            <li {{? it.orderVisibleStatusCode == \'DELETED\' }}class="c"{{?}}>\n              <a href="order_DELETED.jsp#&_uk={{= it.uk}}">\n                订单回收站\n                <i id="recyleOrder" class="mu_nav_count"><i class="mu_nav_count_arw"></i></i>\n              </a>\n            </li>\n          </ul>\n        </li>\n        <li><a class="disable-a">优惠特权</a>\n            <ul>\n                <li><a class="menu_coupon_plat"\n                       href="coupon.jsp#?pages=1&coupon_type=1&status=0">平台优惠券</a></li>\n                <li><a class="menu_coupon_shop"\n                       href="coupon.jsp#?pages=1&coupon_type=2&status=0">店铺优惠券</a></li>\n            </ul>\n        </li>\n        <li>\n          <a class="menu_pcenter" href="footprint.jsp#"> 我的足迹\n            <em class="little-triangle"></em><em class="little-triangle-hover"></em>\n          </a>\n        </li>\n        <li>\n          <a class="menu_pcenter" href="address.jsp#"> 收货地址\n            <em class="little-triangle"></em><em class="little-triangle-hover"></em>\n          </a>\n        </li>\n        <li>\n            <a class="disable-a">账号管理</a>\n            <ul>\n                <li><a href="setPersonal.jsp">我的信息</a></li>\n                <li><a href="setAvatar.jsp#">个人头像</a></li>\n            </ul>\n        </li>\n        <li>\n            <a class="disable-a">安全中心</a>\n            <ul>\n                <li><a href="setPassword.jsp">用户密码</a></li>\n                <li>\n                  <a href="payPassword.jsp">支付密码</a>\n                </li>\n                <li><a href="bindMobile.jsp">手机绑定</a></li>\n                <li><a href="loginEqm.jsp#">登录设备</a></li>\n            </ul>\n        </li>\n    </ul>\n</div>\n'
	}])
}), "function" == typeof define && define.amd && require(["mls-pc/common/trade-nav/index"]);