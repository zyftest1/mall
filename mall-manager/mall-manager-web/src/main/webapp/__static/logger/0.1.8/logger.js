! function (e) {
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
		if (o.info.isNative) {
			var e = p.getPtpCnt();
			s.logAppPevent(e)
		} else l ? n() : c.listenTo("LoggerReady", function () {
			n()
		})
	}
	var o = e.logger = {};
	o.version = "0.1.8", "undefined" == typeof console && (window.console = {
		log: function () {}
	});
	var i = "**logger.js---打点出错:";
	! function () {
		var e = window.jQuery || window.Zepto,
			t = function (e, t) {
				for (var n = 0, r = e.length; r > n; n++)
					if (e[n] == t) return n + 1;
				return -1
			},
			n = {
				getA: function (e) {
					var t = e;
					if ("A" == t.tagName) return e;
					for (; t.parentNode;)
						if (t = t.parentNode, "A" == t.tagName) return t
				},
				getParentByClass: function (t, n) {
					if (t) {
						if (e) return $(t).parents("." + n);
						for (var r, o = t; o.parentNode;)
							if (o = o.parentNode, r = o.className && -1 != o.className.indexOf(n)) return o
					}
				},
				getParents: function (t, n) {
					if (t) {
						if (n = n || "", e) return n = "[" + n + "]", $(t).parents(n)[0];
						for (var r, o = t; o.parentNode;)
							if (o = o.parentNode, r = o.getAttribute && o.getAttribute(n)) return o
					}
				},
				getIndex: function (n, r, o) {
					if (!n || !r || !o) return 0;
					if (e) return $("[" + n + '="' + r + '"]').index($(o)) + 1;
					if (document.querySelectorAll) {
						var i = document.querySelectorAll("[" + n + '="' + r + '"]');
						return t(i, o)
					}
					return 1
				},
				getElemIndex: function (n, r, o) {
					if (!n || !r || !o) return 0;
					if (e) return $(n).find(r).index($(o)) + 1;
					if (n.querySelectorAll) {
						var i = n.querySelectorAll(r);
						return t(i, o)
					}
					return 1
				},
				is: function (e, t) {
					return e && t ? (e.length && (e = e[0]), e.nodeName.toLowerCase() === t.toLowerCase() ? !0 : void 0) : !1
				}
			};
		o.jq = n
	}();
	var a = 1001,
		u = {},
		c = {
			getIEVersion: function () {
				var e, t = -1,
					n = navigator.userAgent;
				return "Microsoft Internet Explorer" == navigator.appName ? (e = new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})"), null !== e.exec(n) && (t = parseFloat(RegExp.$1))) : "Netscape" == navigator.appName && (e = new RegExp("Trident/.*rv:([0-9]{1,}[.0-9]{0,})"), null !== e.exec(n) && (t = parseFloat(RegExp.$1))), t
			},
			stringify: function (e) {
				if ("undefined" != typeof JSON) return JSON.stringify(e);
				var t = typeof e;
				if ("object" != t || null === e) return "string" == t && (e = '"' + e + '"'), String(e);
				var n, r, o = [],
					i = e && e.constructor == Array;
				for (n in e) r = e[n], t = typeof r, e.hasOwnProperty(n) && ("string" == t ? r = '"' + r + '"' : "object" == t && null !== r && (r = c.stringify(r)), o.push((i ? "" : '"' + n + '":') + String(r)));
				return (i ? "[" : "{") + String(o) + (i ? "]" : "}")
			},
			isArray: function (e) {
				return "[object Array]" == Object.prototype.toString.call(e)
			},
			getCookieInArray: function (e) {
				for (var t = 0, n = e.length; n > t; t++) {
					var r = c.getCookie(e[t]);
					if (r) return r
				}
				return ""
			},
			getCookieOrFunc: function (e) {
				return "function" == typeof e ? c.getValue(e) : c.getCookie(e)
			},
			getCookie: function (e) {
				if (c.isArray(e)) return c.getCookieInArray(e);
				var t = document.cookie.match(new RegExp("(^| )" + e + "=([^;]*)(;|$)"));
				return null !== t ? decodeURIComponent(t[2]) : ""
			},
			getQuery: function (e, t) {
				void 0 === t && (t = location.search), t = t.split("#")[0];
				var n = "(^|&|\\?)" + e + "=([^&]*)(&|$)",
					r = new RegExp(n, "i"),
					o = t.substr(1).match(r);
				return null !== o ? decodeURIComponent(o[2]) : ""
			},
			setQuery: function (e, t, n) {
				var r = new RegExp("([?&])" + t + "=.*?(&|$)", "i"),
					o = -1 !== e.indexOf("?") ? "&" : "?";
				return e.match(r) ? e.replace(r, "$1" + t + "=" + n + "$2") : e + o + t + "=" + n
			},
			getTime: function () {
				return parseInt((new Date).getTime() / 1e3)
			},
			registerEvent: function (e, t, n) {
				window.attachEvent ? e.attachEvent("on" + t, n) : e.addEventListener(t, n, !1)
			},
			extend: function () {
				for (var e = arguments, t = arguments[0], n = 1; n < e.length; n++) {
					var r = e[n];
					for (var o in r) r.hasOwnProperty(o) && (t[o] = r[o])
				}
				return t
			},
			getValue: function (e) {
				if (e) {
					if ("function" == typeof e) try {
						var t = Array.prototype.slice.call(arguments, 1);
						return e.apply(null, t)
					} catch (n) {
						return console.log(i + n), ""
					}
					return e
				}
			},
			loadScript: function (e, t) {
				var n = document.createElement("script");
				n.src = e + "?callback=callback_" + a, window["callback_" + a] = function (e) {
					t && t(e)
				}, a += 1;
				var r = document.getElementsByTagName("head")[0];
				r.appendChild(n)
			},
			listenTo: function (e, t) {
				u[e] || (u[e] = []), u[e].push(t)
			},
			fire: function (e) {
				var t = u[e];
				if (t.length) {
					for (var n = 0, r = t.length; r > n; n++) t[n].call();
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
			shouldRequestCookie: function () {
				if (-1 != location.protocol.indexOf("file:")) return !1;
				var e = o.util.getCookieOrFunc(o.config.uuid);
				return e ? !1 : !0
			},
			uuid: ["__mgjuuid", "__xduuid"],
			uid: "__ud_",
			sfrom: "from_site",
			cpsinfo: "__cpsinfo",
			ptp_cnt_a: "",
			ptp_cnt_b: "",
			ptp_cnt_c_d: "",
			platform: function () {
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
			rand: function (e) {
				var t, n = "";
				for (t = 0; e > t; t++) n += this.arr.charAt(Math.random() * this.arrLen);
				return n
			},
			pageHash: function (e) {
				var t = 5381,
					n = e.length - 1;
				if ("string" == typeof e)
					for (; n > -1; n--) t += (t << 5) + e.charCodeAt(n);
				else
					for (; n > -1; n--) t += (t << 5) + e[n];
				var r = 2147483647 & t,
					o = "";
				do o += this.arr.charAt(61 & r); while (r >>= 6);
				return o
			}
		},
		function () {
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
		function () {
			function e(e, t) {
				for (var n, r = 0; r < e.length; r++)
					if (n = new RegExp(e[r]), n.test(t)) return !0;
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
			var d = function (t) {
					return -1 != t.indexOf("mls://") ? !0 : e(c, t)
				},
				f = function (t) {
					return -1 != t.indexOf("mgj://") ? !0 : -1 == t.indexOf("/x6/") ? !1 : e(u, t)
				};
			o.isMgjNativeLink = f;
			var p = function () {
					var e = "";
					if (n) {
						if (a) return !0;
						var o = t.match(/\/(\d{3})\//);
						if (o && o[1]) {
							if (e = parseInt(o[1]), r && 832 >= e) return !0;
							if (i && 806 >= e) return !0
						}
					}
					return !1
				},
				g = function (e) {
					return o.util.setQuery(e, "_isfilter", "1")
				};
			o.needReferFix = p(), o.fixReferUrl = function (e) {
				return r && d(e) ? e : i && f(e) ? e : g(e)
			}
		}(),
		function () {
			function e() {
				var e = "1";
				return s.isMobile && (e = "m1"), s.isIos && s.isNative ? e = "am0" : s.isAndroid && s.isNative && (e = "am1"), e
			}

			function n() {
				var e = c.getValue(g.ptp_cnt_b);
				if (e) return e;
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
				if (e) {
					var t = c.getValue(g.ptp_cnt_c_d, e);
					if (t) return t;
					var n = e.getAttribute("data-ptp-customc");
					if (n) return {
						c: n,
						d: l.getIndex("data-ptp-customc", n, e)
					};
					if (e = l.getParents(e, "data-ptp-customc")) return n = e.getAttribute("data-ptp-customc"), n ? {
						c: n,
						d: l.getIndex("data-ptp-customc", n, e)
					} : void 0
				}
			}

			function u() {
				-1 != location.protocol.indexOf("file:") && document.addEventListener("deviceready", function () {
					window.hybrid && hybrid.bundle && hybrid.bundle.getUrl && hybrid.bundle.getUrl(function (e) {
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
				getPtpByType: function (e, t) {
					var n = i(),
						r = [v.time, 0, "p/e", n, o.version, "1001", v.uuid, v.uid, v.refer, v.rerefer];
					return "p" == e ? (t = t || "1001", r[2] = "p", r[5] = t, r) : "e" == e ? (t = t || "50001", r[2] = "e", r[5] = t, r) : void 0
				},
				getPtpCnt: function (e, t) {
					return e || (e = h.c), t || (t = h.d), [h.a, h.b, e, t, h.e].join(".")
				},
				getPtpInfo: function () {
					var e = {};
					return c.extend(e, v, {
						ptp_cnt: p.getPtpCnt()
					})
				},
				getPtpInfoAndExtra: function () {
					var e = p.getPtpInfo(),
						t = {};
					if (g.extra)
						for (var n in g.extra) g.extra.hasOwnProperty(n) && (t[n] = c.getValue(g.extra[n]));
					return c.extend(e, t)
				},
				createPtpCnt: function (e) {
					var t = a(e),
						n = 0,
						r = 0;
					if (t) return p.getPtpCnt(t.c, t.d);
					var o = l.getParents(e, "data-ptp"),
						i = l.getParentByClass(e, "data-ptp-item");
					return o && (n = o.getAttribute("data-ptp"), r = i ? l.getElemIndex(o, ".data-ptp-item", i) : l.getElemIndex(o, "a", e)), r || (r = 0), p.getPtpCnt(n, r)
				},
				makeUrl: function (e, t, n) {
					var r = e.match(/(#.+)$/);
					return e = e.replace(/(#.+)$/, ""), e = c.setQuery(e, "ptp", t), e = p.getChasingParams(e), e = p.getExtendParams(n, e), o.needReferFix && (e = o.fixReferUrl(e)), r && (e += r[1]), e
				},
				getChasingParams: function (e) {
					void 0 === e && (e = "");
					var t = e;
					if (!g.chasing) return t;
					g.chasing.length || (g.chasing = [g.chasing]);
					for (var n, r, o = 0, i = g.chasing.length; i > o; o++) n = g.chasing[o], r = c.getQuery(n), r && (t = c.setQuery(t, n, r));
					return t
				},
				getExtendParams: function (e, t) {
					var n = t;
					if (!e || !l.is(e, "a")) return n;
					e.length && (e = e[0]);
					for (var r = g.urlExtend || [], o = 0, i = r.length; i > o; o++) {
						var a = r[o],
							u = e.getAttribute("data-ext-" + a);
						u && (n = c.setQuery(n, a, u))
					}
					return n
				},
				refreshPtp: function () {
					v = d(), h = f()
				},
				refreshCookie: function () {
					v && (v.sfrom = c.getCookieOrFunc(g.sfrom), v.uuid = c.getCookieOrFunc(g.uuid), v.uid = c.getCookieOrFunc(g.uid), v.cpsinfo = r())
				}
			}
		}(),
		function () {
			var e = o.info,
				t = o.ptp,
				n = o.config,
				r = 0,
				a = function (e, t) {
					t = t || {};
					var n = [];
					for (var r in t) {
						var o = t[r];
						o || (o = ""), o = encodeURIComponent(o), n.push(r + "=" + o)
					}
					n = n.join("&"), e = e.indexOf("?") > -1 ? e + "&" + n : e + "?" + n;
					var i = new Image;
					i.src = e
				},
				u = function (e, t) {
					t = t || {};
					var n, o = r++;
					try {
						n = document.createElement('<iframe name="' + o + '">')
					} catch (a) {
						n = document.createElement("iframe"), n.setAttribute("name", o)
					}
					try {
						n.style.display = "none", document.body.appendChild(n), n.contentWindow.name = o;
						var u = document.createElement("form");
						u.setAttribute("method", "POST"), u.setAttribute("action", e), u.setAttribute("target", o);
						for (var d in t)
							if (t.hasOwnProperty(d)) {
								var f = document.createElement("input");
								f.setAttribute("type", "hidden"), f.setAttribute("name", d), f.setAttribute("value", t[d]), u.appendChild(f)
							}
						document.body.appendChild(u), u.submit(), c.registerEvent(n, "load", function () {
							try {
								document.body.removeChild(u), document.body.removeChild(n)
							} catch (e) {}
						})
					} catch (a) {
						console.log(i + a)
					}
				},
				d = {
					sendLog: function (e, t, n) {
						var r = c.getIEVersion(),
							o = -1 != r && 8 >= r;
						o && !n ? u(e, t) : a(e, t)
					},
					sendAppLog: function (e, t) {
						return e += "", n.nativeLog && n.nativeLog.logE ? n.nativeLog.logE(e, t) : void(window.hdp && window.hdp["do"] ? hdp["do"]("mgj.tracker.sendEvent", e, t) : document.addEventListener("deviceready", function () {
							window.mgj && mgj.tracker && mgj.tracker.sendEvent && mgj.tracker.sendEvent(e, t)
						}, !1))
					},
					logAppPevent: function (e) {
						return n.nativeLog && n.nativeLog.logP ? n.nativeLog.logP(e) : void(window.hdp && window.hdp["do"] ? hdp["do"]("mgj.pevent", e).then(function () {}, function (e) {
							console.log("pevent:" + e)
						}) : document.addEventListener("deviceready", function () {
							window.mgj && mgj.pevent && mgj.pevent(function () {}, null, e)
						}, !1))
					},
					logData: function (r, o, i) {
						var a = t.getPtpByType(r, o);
						a.push(c.stringify(i)), e.isNative ? d.sendAppLog(o, i) : d.sendLog(n.LogUrl, {
							v: 1,
							data: a.join("	")
						})
					}
				};
			o.send = d
		}(),
		function () {
			function e(e) {
				var t = e.href;
				if (!(t.indexOf("mogujie.com/mtalk/") > -1) && (n.hrefRe.test(t) || n.mgjRe.test(t))) {
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
	if (l || c.loadScript(g.CookieUrl, function () {
			l = !0, o.ptp.refreshCookie(), c.fire("LoggerReady")
		}), r(), o.refreshPevent = function () {
			o.ptp.refreshPtp(), r()
		}, o.log = function (e, t) {
			if (void 0 !== e) {
				t = t || {};
				var n = p.getPtpInfoAndExtra();
				l ? o.send.logData("e", e, c.extend({}, n, t)) : c.listenTo("LoggerReady", function () {
					var n = p.getPtpInfoAndExtra();
					o.send.logData("e", e, c.extend({}, n, t))
				}), window.MtaH5 && MtaH5.clickStat && MtaH5.clickStat(e, t)
			}
		}, o.generatePtpParams = function (e, t) {
			if (void 0 !== e) {
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
	"undefined" != typeof module && "object" == typeof exports ? module.exports = o : "function" == typeof define && (define.amd || define.cmd) && define("logger", function () {
		return o
	})
}(window);
