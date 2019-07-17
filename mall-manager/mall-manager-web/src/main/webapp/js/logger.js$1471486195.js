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
! function() {
	function i() {
		window.PTP_PARAMS = window.PTP_PARAMS || {}, $.extend(window.PTP_PARAMS, {
			EnableLogMoGuJs: !1,
			uuid: "__mgjuuid",
			uid: "__ud_",
			ptp_cnt_c_d: function(i) {
				if(!i) return {
					c: 0,
					d: 0
				};
				if($(i).data("ptp-customc")) return {
					c: $(i).data("ptp-customc"),
					d: 0
				};
				for(var e = $(i).parent(), n = 0; e && $(e)[0] != $(document)[0] && !e.data("ptp");) e = e.parent();
				return $($(e).find("a")).each(function(e, o) {
					o === i && (n = e)
				}), {
					c: e.data("ptp") || "0",
					d: n
				}
			},
			platform: function() {
				var i = window.location.href,
					e = navigator.userAgent;
				return -1 != e.indexOf("meilishuo4android") || -1 != e.indexOf("meilishuo android") ? "24" : -1 != e.indexOf("meilishuo4ios") || -1 != e.indexOf("Meilishuo iPhone") ? "23" : /iphone|android|ipad/i.test(e) ? -1 !== i.indexOf("weixin.meilishuo.com") || -1 !== i.indexOf("category/wx") || -1 !== i.indexOf("/wx/") || -1 !== i.indexOf("act.meilishuo.com/categoods") || -1 !== i.indexOf("wxsearch") ? "47" : "34" : "33"
			},
			hrefRe: /http[s]?:\/\/\w+\.(meilishuo|mogujie)\.com([\/]|\/.*|)$/,
			mgjRe: /(meilishuo|mls):\/\//,
			isNativeRe: /(meilishuo|mls|mogujie)/i,
			nativeLog: {}
		})
	}
	i()
}();
! function(e) {
	"use strict";

	function t() {
		this.arr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", this.arrLen = this.arr.length
	}

	function n() {
		var e = d.getPtpInfoAndExtra(),
			t = a.getValue(p.pEventId);
		f.logData("p", t, e), p.EnableLogMoGuJs && f.sendLog(p.LogMoGuJsUrl, e, !0)
	}

	function r() {
		if(i.info.isNative) {
			var e = d.getPtpCnt();
			f.logAppPevent(e)
		} else s ? n() : $(window).one("LoggerReady", function() {
			n()
		})
	}
	var i = e.logger = {};
	i.version = "0.1.6", "undefined" == typeof console && (window.console = {
		log: function() {}
	});
	var o = "**logger.js---打点出错:",
		a = {
			getIEVersion: function() {
				var e, t = -1,
					n = navigator.userAgent;
				return "Microsoft Internet Explorer" == navigator.appName ? (e = new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})"), null !== e.exec(n) && (t = parseFloat(RegExp.$1))) : "Netscape" == navigator.appName && (e = new RegExp("Trident/.*rv:([0-9]{1,}[.0-9]{0,})"), null !== e.exec(n) && (t = parseFloat(RegExp.$1))), t
			},
			stringify: function(e) {
				if("undefined" != typeof JSON) return JSON.stringify(e);
				var t = typeof e;
				if("object" != t || null === e) return "string" == t && (e = '"' + e + '"'), String(e);
				var n, r, i = [],
					o = e && e.constructor == Array;
				for(n in e) r = e[n], t = typeof r, e.hasOwnProperty(n) && ("string" == t ? r = '"' + r + '"' : "object" == t && null !== r && (r = a.stringify(r)), i.push((o ? "" : '"' + n + '":') + String(r)));
				return(o ? "[" : "{") + String(i) + (o ? "]" : "}")
			},
			isArray: function(e) {
				return "[object Array]" == Object.prototype.toString.call(e)
			},
			getCookieInArray: function(e) {
				for(var t = 0, n = e.length; n > t; t++) {
					var r = a.getCookie(e[t]);
					if(r) return r
				}
				return ""
			},
			getCookieOrFunc: function(e) {
				return "function" == typeof e ? a.getValue(e) : a.getCookie(e)
			},
			getCookie: function(e) {
				if(a.isArray(e)) return a.getCookieInArray(e);
				var t = document.cookie.match(new RegExp("(^| )" + e + "=([^;]*)(;|$)"));
				return null !== t ? decodeURIComponent(t[2]) : ""
			},
			getQuery: function(e, t) {
				void 0 === t && (t = location.href);
				var n = "(^|&|\\?)" + e + "=([^&]*)(&|$)",
					r = new RegExp(n, "i"),
					i = t.substr(1).match(r);
				return null !== i ? decodeURIComponent(i[2]) : ""
			},
			setQuery: function(e, t, n) {
				var r = new RegExp("([?&])" + t + "=.*?(&|$)", "i"),
					i = -1 !== e.indexOf("?") ? "&" : "?";
				return e.match(r) ? e.replace(r, "$1" + t + "=" + n + "$2") : e + i + t + "=" + n
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
					for(var i in r) r.hasOwnProperty(i) && (t[i] = r[i])
				}
				return t
			},
			getValue: function(e) {
				if(e) {
					if("function" == typeof e) try {
						var t = Array.prototype.slice.call(arguments, 1);
						return e.apply(null, t)
					} catch(n) {
						return console.log(o + n), ""
					}
					return e
				}
			}
		};
	i.util = a;
	var u = "https:" === location.protocol ? "https:" : "http:",
		c = "mogujie"; - 1 != location.host.indexOf("meilishuo") && (c = "meilishuo"), i.config = {
			EnableLogMoGuJs: !0,
			LogUrl: u + "//log.juangua.com/log.php",
			LogMoGuJsUrl: u + "//log.juangua.com/mogu.js",
			CookieUrl: u + "//portal." + c + ".com/api/util/getUuid",
			shouldRequestCookie: function() {
				if(-1 != location.protocol.indexOf("file:")) return !1;
				var e = i.util.getCookieOrFunc(i.config.uuid);
				return e ? !1 : !0
			},
			uuid: ["__mgjuuid", "__xduuid"],
			uid: "__ud_",
			sfrom: "from_site",
			cpsinfo: "__cpsinfo",
			ptp_cnt_a: "",
			ptp_cnt_b: "",
			ptp_cnt_c_d: "",
			platform: "",
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
		}, window.PTP_PARAMS && a.extend(i.config, PTP_PARAMS), t.prototype = {
			rand: function(e) {
				var t, n = "";
				for(t = 0; e > t; t++) n += this.arr.charAt(Math.random() * this.arrLen);
				return n
			},
			code: function(e, t) {
				var n, r = 0,
					i = e.split("");
				for(n = 0; n < i.length; n++) r = t * r + i[n].charCodeAt(0);
				return Math.abs(r)
			},
			hash: function(e, t, n) {
				if(!e || 1 > n) return "";
				for(var r = this.code(e, t), i = "", o = 0, a = 0; i.length < n && (o = r / this.arr.length, a = r % this.arr.length, i += this.arr.charAt(a), 0 !== o);) r = o;
				return i.toString()
			},
			pageHash: function(e) {
				return this.hash(e, 31, 4) + this.hash(e, 33, 4)
			}
		},
		function() {
			var e = i.config,
				t = navigator.userAgent.toLocaleLowerCase();
			i.info = {
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
			i.needReferFix = !1;
			var t = navigator.userAgent.toLocaleLowerCase(),
				n = i.info.isApp && i.info.isAndroid,
				r = -1 != t.indexOf("meilishuo"),
				o = -1 != t.indexOf("mogujie"),
				a = -1 != t.indexOf("referfix=1"),
				u = ["^http://(m|www).mogujie.com/x6/wall/book/([a-z]+)/?(\\S*)$", "^http://(m|www).mogujie.com/x6/marketchannel\\?(\\S*)$", "^http://(m|www).mogujie.com/x6/detail/(\\w*)[\\?]?(\\S*)$", "^http://(m|www).mogujie.com/x6/shop/(.*?)/goodsall[\\?]?(\\S*)$", "^http://(m|www).mogujie.com/x6/account/getprofile[\\?].*?uid=(\\w*).*?$", "^http://(m|www).mogujie.com/x6/attention/lifestyle[\\?].*?id=(\\w*).*?((ptp|url_ptp)=([\\w.]+))?$", "^http://(m|www).mogujie.com/x6/shop/(\\w+)/?(\\?(.*))?$", "^http://(m|www).mogujie.com/x6/book/([a-z]+)/?(\\S*)$", "^http://(m|www).mogujie.com/x6/search/?\\?keywords=([^&]+)(\\S*)$"],
				c = ["^https?://sgitem.meilishuo.com/sgdetail/(\\w+)/?\\??(.*?)$", "^https?://item.meilishuo.com/h5/detail/(\\w+)/?\\??(.*?)$", "^https?://www.mogujie.com/trade/order/detail4buyer\\?.*?orderId=(\\w+).*?$", "^https?://www.mogujie.com/trade/refund/detail\\?.*?itemOrderId=(\\w+).*?$", "^(http|https)://sgitemapp.meilishuo.com/sgdetail/(\\w+).*?$", "^https?://act.meilishuo.com/keyword/?\\??(.*?)?$", "^https?://weixin.meilishuo.com/wx/shop/(\\w+)/?\\??(.*?)$"];
			i.matchNativeLink = e;
			var d = function(t) {
					return -1 != t.indexOf("mls://") ? !0 : e(c, t)
				},
				p = function(t) {
					return -1 != t.indexOf("mgj://") ? !0 : -1 == t.indexOf("/x6/") ? !1 : e(u, t)
				};
			i.isMgjNativeLink = p;
			var f = function() {
					var e = "";
					if(n) {
						if(a) return !0;
						var i = t.match(/\/(\d{3})\//);
						if(i && i[1]) {
							if(e = parseInt(i[1]), r && 832 >= e) return !0;
							if(o && 806 >= e) return !0
						}
					}
					return !1
				},
				s = function(e) {
					return i.util.setQuery(e, "_isfilter", "1")
				};
			i.needReferFix = f(), i.fixReferUrl = function(e) {
				return r && d(e) ? e : o && p(e) ? e : s(e)
			}
		}(),
		function() {
			function e() {
				var e = a.getValue(s.ptp_cnt_a);
				if(e) return e;
				var t = "1";
				return g.isXd && (t = "xd1"), g.isMobile && (t = "m1"), g.isIos && g.isNative ? t = "am0" : g.isAndroid && g.isNative && (t = "am1"), t
			}

			function n() {
				var e = a.getValue(s.ptp_cnt_b);
				if(e) return e;
				var t = "",
					n = location.href.replace(":", "");
				return n = n.replace(/[\/\.]/, "_"), t = l.pageHash(n)
			}

			function r() {
				var e = a.getCookieOrFunc(s.cpsinfo);
				if(e) return e = e.replace("-", ",")
			}

			function o() {
				var e = a.getValue(s.platform);
				return e ? e : g.isMobile ? 32 : 31
			}

			function u(e) {
				if(e) {
					var t = a.getValue(s.ptp_cnt_c_d, e);
					if(t) return t;
					var n = e.getAttribute("data-ptp-customc");
					if(n) return {
						c: n,
						d: $('[data-ptp-customc="' + n + '"]').index($(e)) + 1
					};
					if(e = $(e).parents("[data-ptp-customc]")[0]) return n = e.getAttribute("data-ptp-customc"), n ? {
						c: n,
						d: $('[data-ptp-customc="' + n + '"]').index($(e)) + 1
					} : void 0
				}
			}

			function c() {
				-1 != location.protocol.indexOf("file:") && document.addEventListener("deviceready", function() {
					window.hybrid && hybrid.bundle && hybrid.bundle.getUrl && hybrid.bundle.getUrl(function(e) {
						m && (m.refer = e)
					})
				}, !1)
			}

			function d() {
				return c(), {
					time: a.getTime(),
					sfrom: a.getCookieOrFunc(s.sfrom),
					uuid: a.getCookieOrFunc(s.uuid),
					uid: a.getCookieOrFunc(s.uid),
					cpsinfo: r() || "",
					refer: location.href,
					rerefer: document.referrer,
					ptp_url: a.getQuery("ptp", location.search),
					ptp_ref: a.getQuery("ptp", document.referrer)
				}
			}

			function p() {
				return {
					a: e(),
					b: n(),
					c: 0,
					d: 0,
					e: l.rand(5)
				}
			}
			var f, s = i.config,
				g = i.info,
				l = new t,
				m = d(),
				h = p();
			i.ptp = f = {
				getPtpByType: function(e, t) {
					var n = o(),
						r = [m.time, 0, "p/e", n, i.version, "1001", m.uuid, m.uid, m.refer, m.rerefer];
					return "p" == e ? (t = t || "1001", r[2] = "p", r[5] = t, r) : "e" == e ? (t = t || "50001", r[2] = "e", r[5] = t, r) : void 0
				},
				getPtpCnt: function(e, t) {
					return e || (e = h.c), t || (t = h.d), [h.a, h.b, e, t, h.e].join(".")
				},
				getPtpInfo: function() {
					var e = {};
					return a.extend(e, m, {
						ptp_cnt: f.getPtpCnt()
					})
				},
				getPtpInfoAndExtra: function() {
					var e = f.getPtpInfo(),
						t = {};
					if(s.extra)
						for(var n in s.extra) s.extra.hasOwnProperty(n) && (t[n] = a.getValue(s.extra[n]));
					return a.extend(e, t)
				},
				createPtpCnt: function(e) {
					var t = u(e),
						n = "",
						r = "",
						i = 0,
						o = 0;
					if(t) return f.getPtpCnt(t.c, t.d);
					if(e && e.href && (n = e.href.match(s.mtRe)), n && (r = "_mt-" + n[2] + "-" + n[3]), r) i = r;
					else {
						var a = $(e).parents("[data-ptp]");
						if(a.length) {
							i = a.attr("data-ptp");
							var c = a.find(".data-ptp-item");
							o = c.length ? c.index($(e).parents(".data-ptp-item")) + 1 : a.find("a").index($(e)) + 1
						}
					}
					return o || (o = 0), f.getPtpCnt(i, o)
				},
				makeUrl: function(e, t, n) {
					var r = e.match(/(#.+)$/);
					return e = e.replace(/(#.+)$/, ""), e = a.setQuery(e, "ptp", t), e = f.getChasingParams(e), e = f.getExtendParams(n, e), i.needReferFix && (e = i.fixReferUrl(e)), r && (e += r[1]), e
				},
				getChasingParams: function(e) {
					void 0 === e && (e = "");
					var t = e;
					if(!s.chasing) return t;
					s.chasing.length || (s.chasing = [s.chasing]);
					for(var n, r, i = 0, o = s.chasing.length; o > i; i++) n = s.chasing[i], r = a.getQuery(n), r && (t = a.setQuery(t, n, r));
					return t
				},
				getExtendParams: function(e, t) {
					var n = t;
					if(!e || !$(e).is("a")) return n;
					for(var r = s.urlExtend || [], i = 0, o = r.length; o > i; i++) {
						var u = r[i],
							c = $(e).attr("data-ext-" + u);
						c && (n = a.setQuery(n, u, c))
					}
					return n
				},
				refreshPtp: function() {
					m = d(), h = p()
				},
				refreshCookie: function() {
					m && (m.sfrom = a.getCookieOrFunc(s.sfrom), m.uuid = a.getCookieOrFunc(s.uuid), m.uid = a.getCookieOrFunc(s.uid), m.cpsinfo = r())
				}
			}
		}(),
		function() {
			var e = i.info,
				t = i.ptp,
				n = i.config,
				r = 0,
				u = function(e, t) {
					t = t || {};
					var n = [];
					for(var r in t) {
						var i = t[r];
						i || (i = ""), i = encodeURIComponent(i), n.push(r + "=" + i)
					}
					n = n.join("&"), e = e.indexOf("?") > -1 ? e + "&" + n : e + "?" + n;
					var o = new Image;
					o.src = e
				},
				c = function(e, t) {
					t = t || {};
					var n, i = r++;
					try {
						n = document.createElement('<iframe name="' + i + '">')
					} catch(u) {
						n = document.createElement("iframe"), n.setAttribute("name", i)
					}
					try {
						n.style.display = "none", document.body.appendChild(n), n.contentWindow.name = i;
						var c = document.createElement("form");
						c.setAttribute("method", "POST"), c.setAttribute("action", e), c.setAttribute("target", i);
						for(var d in t)
							if(t.hasOwnProperty(d)) {
								var p = document.createElement("input");
								p.setAttribute("type", "hidden"), p.setAttribute("name", d), p.setAttribute("value", t[d]), c.appendChild(p)
							}
						document.body.appendChild(c), c.submit(), a.registerEvent(n, "load", function() {
							try {
								document.body.removeChild(c), document.body.removeChild(n)
							} catch(e) {}
						})
					} catch(u) {
						console.log(o + u)
					}
				},
				d = {
					sendLog: function(e, t, n) {
						var r = -1 != a.getIEVersion();
						r && !n ? c(e, t) : u(e, t)
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
					logData: function(r, i, o) {
						var u = t.getPtpByType(r, i);
						u.push(a.stringify(o)), e.isNative ? d.sendAppLog(i, o) : d.sendLog(n.LogUrl, {
							v: 1,
							data: u.join("	")
						})
					}
				};
			i.send = d
		}(),
		function() {
			function e(e) {
				var t = e.href;
				if(!(t.indexOf("mogujie.com/mtalk/") > -1) && (n.hrefRe.test(t) || n.mgjRe.test(t))) {
					var i = e.getAttribute("data-ptp-cache-id");
					t = e.getAttribute("href"), i && n.ptpRe.test(i) || (i = r.createPtpCnt(e), e.setAttribute("data-ptp-cache-id", i)), e.href = r.makeUrl(t, i, e)
				}
			}

			function t(t) {
				var n = t || window.event,
					r = n.target || n.srcElement,
					i = "A" === r.nodeName ? r : $(r).parents("a")[0],
					o = "AREA" === r.nodeName ? r : null;
				o && (i = o), i && (i.href && i.href.indexOf("javascript:") > -1 || e(i))
			}
			var n = i.config,
				r = i.ptp,
				o = "tap" in document.createElement("div") ? "tap" : "mousedown";
			a.registerEvent(document, o, t), a.registerEvent(document, "touchstart", t)
		}();
	var d = i.ptp,
		p = i.config,
		f = i.send,
		s = !p.shouldRequestCookie();
	if(s || $.ajax({
			url: p.CookieUrl,
			type: "GET",
			dataType: "jsonp",
			success: function() {
				s = !0, i.ptp.refreshCookie(), $(window).trigger("LoggerReady")
			}
		}), r(), i.refreshPevent = function() {
			i.ptp.refreshPtp(), r()
		}, i.log = function(e, t) {
			if(void 0 !== e) {
				t = t || {};
				var n = d.getPtpInfoAndExtra();
				s ? i.send.logData("e", e, a.extend({}, n, t)) : $(window).one("LoggerReady", function() {
					var n = d.getPtpInfoAndExtra();
					i.send.logData("e", e, a.extend({}, n, t))
				})
			}
		}, i.generatePtpParams = function(e, t) {
			if(void 0 !== e) {
				var n = "";
				return n = t ? d.createPtpCnt(t) : d.getPtpCnt(), d.makeUrl(e, n, t)
			}
		}, i.needReferFix && document.referrer) {
		var g = d.getPtpInfoAndExtra();
		i.log("016000616", {
			ptp_cnt2: g.ptp_cnt,
			ptp_url2: g.ptp_url,
			ptp_ref2: g.ptp_ref
		})
	}
	"undefined" != typeof module && "object" == typeof exports ? module.exports = i : "function" == typeof define && (define.amd || define.cmd) && define("logger", function() {
		return i
	})
}(window);