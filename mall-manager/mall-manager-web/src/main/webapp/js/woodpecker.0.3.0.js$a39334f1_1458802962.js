! function(e) {
	function t(r) {
		if(n[r]) return n[r].exports;
		var o = n[r] = {
			exports: {},
			id: r,
			loaded: !1
		};
		return e[r].call(o.exports, o, o.exports, t), o.loaded = !0, o.exports
	}
	var n = {};
	return t.m = e, t.c = n, t.p = "", t(t.s = 21)
}([function(e, t) {
	e.exports = {
		URL: "http://log.juangua.com/log.php",
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
	var r = n(4);
	n(2);
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
			return "_traceId_" + _count++
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
				for(var o in r) r.hasOwnProperty(o) && (t[o] = r[o])
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
			var n, r, o = [],
				i = e && e.constructor == Array;
			for(n in e) r = e[n], t = typeof r, e.hasOwnProperty(n) && ("string" == t ? r = '"' + r + '"' : "object" == t && null !== r && (r = jQuery.stringify(r)), o.push((i ? "" : '"' + n + '":') + String(r)));
			return(i ? "[" : "{") + String(o) + (i ? "]" : "}")
		},
		post: function(e, t) {
			var o = n(2);
			o.isNative ? t.hasOwnProperty("natwork") ? r.sendAppLog(50012, t) : r.sendAppLog(50013, t) : r.sendlog(e, t)
		}
	}
}, function(e, t, n) {
	function r() {
		var e = navigator.appVersion;
		return /Mobile|mini|Fennec|Android|iP(ad|od|hone)/.test(e) ? "h5" : "pc"
	}

	function o() {
		var e, t, n = (navigator.appVersion, navigator.userAgent),
			r = "其它",
			o = r,
			i = "",
			a = "";
		return -1 != (e = n.indexOf("Opera")) && (o = "Opera", i = n.substring(e + 6), -1 != (e = n.indexOf("Version")) && (i = n.substring(e + 8))), -1 != (e = n.indexOf("OPR")) ? (o = "Opera", i = n.substring(e + 4)) : -1 != (e = n.indexOf("MSIE")) ? (o = "IE", i = n.substring(e + 5)) : -1 != (e = n.indexOf("Chrome")) ? (o = "Chrome", i = n.substring(e + 7)) : -1 != (e = n.indexOf("Safari")) ? (o = "Safari", i = n.substring(e + 7), -1 != (e = n.indexOf("Version")) && (i = n.substring(e + 8))) : -1 != (e = n.indexOf("Firefox")) ? (o = "Firefox", i = n.substring(e + 8)) : -1 != n.indexOf("Trident/") ? (o = "IE", i = n.substring(n.indexOf("rv:") + 3)) : -1 != n.toLowerCase().indexOf("mogujie") ? o = "Mogujie" : -1 != n.indexOf("MicroMessenger") ? o = "Wechat" : -1 != n.indexOf("QQ") ? o = "QQ" : -1 != n.indexOf("Weibo") ? o = "Weibo" : -1 != n.indexOf("baiduboxapp") && (o = "Baidu"), -1 != (t = i.indexOf(";")) && (i = i.substring(0, t)), -1 != (t = i.indexOf(" ")) && (i = i.substring(0, t)), -1 != (t = i.indexOf(")")) && (i = i.substring(0, t)), i && (a = parseInt("" + i, 10), isNaN(a) && (i = "" + parseFloat(navigator.appVersion), a = parseInt(navigator.appVersion, 10))), a ? o + "_" + a : o
	}

	function i() {
		var e = "其它",
			t = e,
			n = navigator.userAgent,
			r = navigator.appVersion,
			o = [{
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
		for(var i in o) {
			var a = o[i];
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
				var c = (/Android ([\.\_\d]+)/.exec(n)[1] || "").split(".").slice(0, 2);
				s = c.join(".");
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

	function c() {
		return window.navigator.userAgent
	}

	function d() {
		var e = c();
		return e.indexOf("Crosswalk") > -1 ? !0 : !1
	}

	function u() {
		var e = f.match(/\/([0-9]{3,4})/);
		return e && parseInt(e[1]) > 732 ? !0 : !1
	}
	var p = n(8),
		f = window.navigator.userAgent.toLocaleLowerCase();
	e.exports = {
		isApp: p.isNative.test(f),
		isNative: p.isNative.test(f),
		isMobalie: p.isMobileReg.test(f),
		isApp732: u(),
		isIos: f.indexOf("iphone") > -1,
		isAndroid: f.indexOf("android") > -1,
		isXd: window.location.href.indexOf(".xiaodian.") > -1,
		getPlatform: r,
		getScreen: a,
		getOs: i,
		getBrowser: o,
		getUa: c,
		getDevicePixelRatio: s,
		getAll: function() {
			return {
				platform: r(),
				screen: a(),
				os: i(),
				browser: o(),
				devicePixelRatio: s(),
				isXwalk: d()
			}
		}
	}
}, function(e, t, n) {
	function r(e, t, n) {
		window.attachEvent ? e.attachEvent("on" + t, n) : e.addEventListener(t, n, !1)
	}
	t.a = r
}, function(e, t, n) {
	function r(e) {
		var t = [],
			n = function(e) {
				return "object" == typeof e && null != e ? r(e) : /^(string)$/.test(typeof e) ? '"' + e + '"' : e
			};
		for(var o in e) t.push('"' + o + '":' + n(e[o]));
		return "{" + t.join(",") + "}"
	}

	function o(e, t) {
		var n = l.getBrowser();
		if(-1 != n.toLowerCase().indexOf("ie")) return void i(e, t);
		t = t || {};
		var r = [];
		for(var o in t) {
			var a = t[o];
			a || (a = ""), a = encodeURIComponent(a), r.push(o + "=" + a)
		}
		r = r.join("&"), e = e.indexOf("?") > -1 ? e + "&" + r : e + "?" + r;
		var s = new Image;
		s.src = e
	}

	function i(e, t) {
		t = t || {};
		var n, r = v++;
		try {
			n = document.createElement('<iframe name="' + r + '">')
		} catch(o) {
			n = document.createElement("iframe"), n.setAttribute("name", r)
		}
		try {
			n.style.display = "none", document.body.appendChild(n), n.contentWindow.name = r;
			var i = document.createElement("form");
			i.setAttribute("method", "POST"), i.setAttribute("action", e), i.setAttribute("target", r);
			for(var a in t)
				if(t.hasOwnProperty(a)) {
					var s = document.createElement("input");
					s.setAttribute("type", "hidden"), s.setAttribute("name", a), s.setAttribute("value", t[a]), i.appendChild(s)
				}
			document.body.appendChild(i), i.submit(), p.a(n, "load", function() {
				try {
					document.body.removeChild(i), document.body.removeChild(n)
				} catch(e) {}
			})
		} catch(o) {}
	}

	function a(e) {
		var e = e || "1001";
		return [g.time, 0, "p", 30, window.detePtp.Version, e, g.uuid, g.uid, g.refer, g.rerefer]
	}

	function s(e) {
		var e = e.toString() || "50001";
		return [g.time, 0, "e", 30, window.detePtp.Version, e, g.uuid, g.uid, g.refer, g.rerefer]
	}

	function c(e, t, n) {
		var r = [];
		if("p" == e) r = a(t);
		else {
			if("e" != e) return;
			r = s(t)
		}
		var i = window.JSON ? JSON.stringify : m.stringify;
		r.push(i(n)), l.isNative ? d(t, n) : o("http://log.juangua.com/log.php", {
			v: 1,
			data: r.join("	")
		})
	}

	function d(e, t) {
		window.mgj && "object" == typeof window.mgj.tracker && "function" == typeof window.mgj.tracker.sendEvent && (e += "", mgj.tracker.sendEvent(e, t))
	}

	function u(e, t, n) {
		var e = e || 0,
			r = n || "click",
			o = [g.ptp_cnt_a, g.ptp_cnt_b, 0, 0, g.ptp_cnt_e];
		o[2] = e, o[3] = t, "object" == typeof n && (n = "click"), g.rerefer = encodeURIComponent(window.location.href), g.etp_cnt = o.join("."), g.custom_event = r, c("e", "50001", g)
	}
	var p = n(3),
		f = (n(9), n(12));
	t.jsonToString = r, t.sendlog = o, t.logP = a, t.logE = s, t.logFromtSend = c, t.sendAppLog = d, t.triggerLog = u, window.detePtp = f.setDynamicData();
	var l = n(2),
		m = n(1),
		g = window.detePtp._collectParams,
		v = 0
}, function(e, t, n) {
	var r = n(0),
		o = n(20),
		i = n(1);
	e.exports = {
		constructTraceData: function(e) {
			e = e || {}, e.extra = e.extra || {}, e.extra.pageUrl = i.formatUrl(location.href);
			var t = Math.ceil(i.getMsExactMin() / 1e3),
				n = e.extra.eventid || "";
			return e = i.extend({
				time: t,
				startTime: t,
				type: e.type,
				appid: o.getAppid(),
				appV: "0.3.0",
				eventId: n,
				did: o.getDid(),
				uid: o.getUid(),
				url: i.formatUrl(location.href),
				referrer: document.referrer
			}, e)
		},
		constructNetworkData: function(e) {
			e = e || {}, e.extra = e.extra || {}, e.extra.pageUrl = i.formatUrl(location.href);
			var t = Math.ceil(i.getMsExactMin() / 1e3);
			return e = i.extend({
				appid: o.getAppid(),
				did: o.getDid(),
				startTime: t,
				time: t,
				fixTime: r.BLANK_VALUE,
				requestSize: t
			}, e)
		}
	}
}, function(e, t, n) {
	function r(e) {
		var t, n = {
			v: 1
		};
		return "n" === e[0].type || "s" === e[0].type ? t = "network" : "e" == e[0].type && (t = "data"), n[t] = o(e), n
	}

	function o(e) {
		e = e || [];
		for(var t = "	", n = "\n", r = [], o = 0; o < e.length; o++) {
			var i = e[o] || {};
			if(i = i || {}, i.extra) {
				i.extra.performanceEvent && delete i.extra.performanceEvent;
				var a = window.JSON ? JSON.stringify : d.stringify;
				i.extra = a(i.extra)
			}
			var s = [];
			"n" === i.type || "s" === i.type ? s = ["appid", "type", "did", "startTime", "url", "responseCode", "responseTime", "time", "fixTime", "requestSize", "responseSize", "bizCode", "extra"] : "e" === i.type && (s = ["time", "startTime", "type", "appid", "appV", "eventId", "did", "uid", "url", "referrer", "extra"]);
			for(var c = [], u = 0; u < s.length; u++) c.push(i[s[u]]);
			r.push(c.join(t))
		}
		return r.join(n)
	}

	function i(e) {
		return "e" === e.type && e.extra.performanceEvent
	}

	function a(e) {
		var t = (new Date).getTime();
		t - p > u.COOL_DOWN && (d.post(u.URL, e), p = t)
	}

	function s() {
		setTimeout(function() {
			c.isReadyPost() && a(r(c.shift())), s()
		}, u.COOL_DOWN)
	}
	var c = n(7),
		d = n(1),
		u = n(0),
		p = 0;
	e.exports = {
		send: function(e) {
			if(e = e || {}, e.extra = e.extra || {}, "n" !== e.type && !i(e)) return void d.post(u.URL, r([e]));
			var t = c.push(e);
			t || d.post(u.URL, r([e])), "n" !== e.type && c.isReadyPost() && a(r(c.shift()))
		},
		sendImmediately: function(e) {
			e = e || {}, e.extra = e.extra || {}, d.post(u.URL, r([e]))
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
	var o = n(1),
		i = n(0),
		a = {
			e: "event",
			n: "network",
			s: "network"
		};
	e.exports = {
		support: !(!window.localStorage || !window.JSON || "function" != typeof localStorage.getItem || "function" != typeof localStorage.setItem || 11 == o.getIEVersion()),
		init: function() {
			this.support && this.getStorage()
		},
		push: function(e) {
			if(!this.support) return !1;
			var t = this.getStorage() || r(),
				n = a[e.type];
			return n ? (t[n].push(e), this.setStorage(t), t) : !1
		},
		shift: function(e) {
			if(!this.support) return !1;
			e = e || i.LOCALSTORAGE_MAXLENGTH;
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
			return e.event.length > i.LOCALSTORAGE_MAXLENGTH || e.network.length > i.LOCALSTORAGE_MAXLENGTH ? !0 : !1
		},
		getStorage: function() {
			try {
				var e = JSON.parse(localStorage.getItem(i.LOCALSTORAGE_KEY))
			} catch(t) {
				e = r(), this.setStorage(e)
			}
			return e || (e = r(), this.setStorage(e)), e
		},
		setStorage: function(e) {
			try {
				localStorage.setItem(i.LOCALSTORAGE_KEY, JSON.stringify(e))
			} catch(t) {
				return !1
			}
		}
	}
}, function(e, t) {
	e.exports = {
		isMobileReg: /iphone|android/,
		isNative: /mogujie(?!nonative)/i,
		ptpRe: /[a-z0-9]+\.[a-z0-9]+\.[a-z0-9]+\.[a-z0-9]+\.[a-z0-9]+/i,
		hrefRe: /http[s]?:\/\/\w+\.(mogujie|xiaodian|uniny)\.com([\/]|\/.*|)$/,
		mgjRe: /mgj:\/\//,
		mtRe: /\?.*[&]?mt=([^\.]+)\.([^\.]+)\.([^\.&#]+)/
	}
}, function(e, t, n) {
	function r(e) {
		return document.cookie.length > 0 && (c_start = document.cookie.indexOf(e + "="), -1 != c_start) ? (c_start = c_start + e.length + 1, c_end = document.cookie.indexOf(";", c_start), -1 == c_end && (c_end = document.cookie.length), document.cookie.substring(c_start, c_end)) : ""
	}

	function o(e, t) {
		var n = "(^|&|\\?)" + e + "=([^&]*)(&|$)",
			r = new RegExp(n, "i"),
			o = t.substr(1).match(r);
		return null != o ? decodeURIComponent(o[2]) : ""
	}

	function i() {
		return parseInt((new Date).getTime() / 1e3)
	}

	function a(e, t) {
		var n = {};
		for(var r in e) n[r] = e[r];
		for(var r in t) n.hasOwnProperty(r) && n[r] && (t[r] = n[r]);
		return t
	}

	function s() {
		var e = "1";
		return l.isXd && (e = "xd1"), l.isMobalie && (e = "m1"), l.isIos && l.isNative && !l.isApp732 ? e = "am0" : l.isAndroid && l.isNative && !l.isApp732 && (e = "am1"), e
	}

	function c() {
		var e = 0;
		return window.innerWidth ? e = window.innerWidth : document.body && document.body.clientWidth && (e = document.body.clientWidth), document.documentElement && document.documentElement.clientWidth && (e = document.documentElement.clientWidth), e = 1280 > e ? 4 : 1600 > e ? 5 : 6
	}

	function d() {
		var e = r("__cps");
		if(e) {
			var t = e.split("-"),
				n = t[1],
				o = 0;
			switch(t[2]) {
				case "web":
					o = 19;
					break;
				case "sns":
					o = 1901;
					break;
				case "snsqq":
					o = 1905;
					break;
				case "HAO":
					o = 1902;
					break;
				case "event505":
					o = 1903;
					break;
				case "event506":
					o = 1904;
					break;
				case "event520":
					o = 1906;
					break;
				case "tuanevent520":
					o = 1907;
					break;
				case "event601":
					o = 1910;
					break;
				case "promo":
					o = 1920;
					break;
				case "event802":
					o = 1930;
					break;
				case "event825":
					o = 1931;
					break;
				case "event915":
					o = 1932;
					break;
				case "eventnewuser":
					o = 1933;
					break;
				case "app":
					o = 30;
					break;
				case "wap":
					o = 40;
					break;
				default:
					o = 19
			}
			return n + "," + o
		}
	}

	function u() {
		var e = {};
		return e.time = i(), e.ptp_cnt_a = s(), e.ptp_cnt_b = p(), e.sfrom = r("from_site"), e.uuid = r("__mgjuuid") || r("__xduuid"), e.uid = r("__ud_"), e.cpsinfo = d() || r("__cpsinfo"), e.ptp_cnt_e = f.rand(5), e.refer = location.href, e.rerefer = document.referrer, e.ptp_url = o("ptp", window.location.search), e.ptp_ref = o("ptp", document.referrer), e.wwidth = c(), e.anchor = encodeURIComponent(window.location.hash), e
	}

	function p() {
		var e = "",
			t = window.location.href.replace(":", "");
		return t = t.replace(/[\/\.]/, "_"), e = f.pageHash(t)
	}
	t.getCookie = r, t.getQueryString = o, t.getTime = i, t.mergeJson = a, t.getWwidth = c, t.collectParams = u, t.getCntB = p;
	var f = n(17),
		l = n(2);
	f = new f
}, function(e, t) {
	e.exports = {
		NAME: "detePtp",
		VERSION: "0.3.0",
		ptpHash: null,
		_collectParams: {
			sfrom: "",
			uuid: "",
			uid: "",
			cpsinfo: "",
			ptp_cnt_a: "",
			ptp_cnt_b: "",
			ptp_cnt_e: "",
			c_actino: "",
			ptp_url: "",
			ptp_ref: "",
			ptp_cnt: "",
			refer: "",
			rerefer: "",
			wwidth: "",
			anchor: "",
			custom_event: "",
			method: "GET",
			etp_cnt: "",
			etp_url: ""
		}
	}
}, function(e, t, n) {
	function r(e) {
		return e = e || {}, e.extra = e.extra || {}, "e" === e.type ? _.constructTraceData(e) : "n" === e.type ? _.constructNetworkData(e) : e
	}

	function o() {
		document.addEventListener("deviceready", function() {
			window.detePtp._collectParams.ptp_cnt && window.mgj && "function" == typeof window.mgj.pevent && window.mgj.pevent(function() {}, null, window.detePtp._collectParams.ptp_cnt)
		}, !1)
	}

	function i() {
		window.detePtp.triggerLog = u.triggerLog, window.detePtp.logFromtSend = u.logFromtSend;
		var e = "tap" in document.createElement("div") ? "tap" : "mousedown";
		d.a(document, e, c.setAddEvent), d.a(document, "touchstart", c.setAddEvent);
		g.isNative ? o() : (u.logFromtSend("p", 1001, window.detePtp._collectParams), a(window.detePtp._collectParams)), window.detePtp.reboot = i, window.detePtp._sendPtpInfo = a, s(window.detePtp._collectParams)
	}

	function a(e) {
		var t = "",
			n = [],
			r = null;
		for(t in e)
			if(-1 == t.indexOf("ptp_cnt_")) {
				var o = e[t];
				o || (o = ""), n.push(t + "=" + o)
			}
		r = new Image, r.src = "http://log.juangua.com/mogu.js?" + n.join("&")
	}

	function s(e) {
		window.log_stat_url_tmp = "http://log.juangua.com/mogu.js?sfrom=" + e.sfrom + "&uid=" + e.uid + "&method=" + e.method + "&time=" + e.time + "&uuid=" + e.uuid + "&ptp_url=" + e.ptp_url + "&ptp_ref=" + e.ptp_ref + "&c_action=" + e.c_action + "&ptp_cnt=" + e.ptp_cnt + "&custom_event=" + e.custom_event + "&wwidth=" + e.wwidth, window.log_stat_anchor = e.anchor, window.log_stat_cpsinfo = e.cpsinfo, window.log_stat_refer = e.refer, window.log_stat_rerefer = e.rerefer
	}
	var c = n(13),
		d = n(3),
		u = n(4),
		p = n(18),
		f = n(15),
		l = n(14),
		m = n(19),
		g = n(2),
		v = n(0),
		w = n(1),
		h = n(7),
		_ = n(5),
		x = n(6);
	try {
		i()
	} catch(b) {}
	try {
		h.init(), m.a.init(), g.isNative || (p.init(), x.init(), f.init(), w.addEventListener(window, "load", function() {
			x.send(_.constructNetworkData({
				type: "n",
				url: w.formatUrl(location.href),
				responseCode: 200,
				responseSize: v.BLANK_VALUE,
				responseTime: l.a.getResponseTime(),
				bizCode: v.BLANK_VALUE,
				extra: {}
			})), x.send(_.constructTraceData({
				type: "e",
				extra: w.extend({
					performanceEvent: !0,
					eventid: v.eventidMap[g.getPlatform()]
				}, g.getAll(), l.a.getOnload())
			}))
		}))
	} catch(A) {}
	var O = {
		send: function(e) {
			x.send(r(e))
		},
		sendImmediately: function() {
			x.sendImmediately(r(data))
		}
	};
	window._trace || (window._trace = O), window.Mogu && window.Mogu.util && (window.Mogu.util.trace = O)
}, function(e, t, n) {
	function r() {
		var e = o.collectParams();
		return i._collectParams = o.mergeJson(e, i._collectParams), window.PTP_PARAMS && (i._collectParams = o.mergeJson(window.PTP_PARAMS, i._collectParams)), i._collectParams.refer = encodeURIComponent(location.href), i._collectParams.ptp_cnt_a = e.ptp_cnt_a, i._collectParams.ptp_cnt = [i._collectParams.ptp_cnt_a, i._collectParams.ptp_cnt_b, 0, 0, i._collectParams.ptp_cnt_e].join("."), i
	}
	var o = n(9);
	n(4);
	t.setDynamicData = r;
	var i = n(10)
}, function(e, t, n) {
	function r(e) {
		var t = e || window.event,
			n = t.target || t.srcElement,
			r = "A" === n.nodeName ? n : d.recursiveDom(n, "A"),
			a = "AREA" === n.nodeName ? n : null;
		if(!("A" !== r.nodeName && !a || r.href && r.href.indexOf("javascript:") > -1)) {
			var s = a ? a : r,
				c = o(s);
			i(s, c)
		}
	}

	function o(e) {
		if(e) {
			var t = e.getAttribute("data-ptp-customc");
			if(t) return {
				c: t,
				d: d.arrIndexOf(d.selector('*[data-ptp-customc="' + t + '"]'), e)
			};
			var n = d.recursiveDom(e, "", "data-ptp-customc");
			return n && "function" == typeof n.getAttribute ? (t = n.getAttribute("data-ptp-customc"), {
				c: t,
				d: d.arrIndexOf(d.selector('*[data-ptp-customc="' + t + '"]'), n)
			}) : void 0
		}
	}

	function i(e, t) {
		var n = e.href;
		if(!(n.indexOf("mogujie.com/mtalk/") > -1) && (p.hrefRe.test(n) || p.mgjRe.test(n))) {
			var r = e.getAttribute("data-ptp-cache-id");
			n = e.getAttribute("href"), r && p.ptpRe.test(r) || (r = s(e, t), e.setAttribute("data-ptp-cache-id", r)), e.href = a(n, "ptp=" + r)
		}
	}

	function a(e, t) {
		var n = e.match(/(#.+)$/);
		return e = e.replace(/(#.+)$/, ""), e = e.replace(/ptp=[^&#]*/, ""), e += e.indexOf("?") > -1 ? "&" + t : "?" + t, e = e.replace(/[&]{2,}/g, "&").replace(/&$/, ""), e = e.replace(/\?&/g, "?"), n && (e += n[1]), e
	}

	function s(e, t) {
		var n = e.href.match(p.mtRe),
			r = "AREA" === e.nodeName ? "area" : "a",
			o = "",
			i = "",
			a = [],
			s = e.parentNode,
			c = 0;
		if(n && (o = "_mt-" + n[2] + "-" + n[3]), !o) {
			for(; e && (a.push(s.nodeName), !(i = s.getAttribute("data-ptp"))) && "BODY" !== s.nodeName;) s = s.parentNode;
			if(!i) try {
				i = ptp.pageHash(a.join(""))
			} catch(d) {
				i = 0
			}
		}
		for(var f = s.getElementsByTagName(r), l = 0; l < f.length; l++) f[l].setAttribute("data-ptp-idx", l + 1);
		return c = e.getAttribute("data-ptp-idx"), t ? [u._collectParams.ptp_cnt_a, u._collectParams.ptp_cnt_b, t.c, t.d, u._collectParams.ptp_cnt_e].join(".") : [u._collectParams.ptp_cnt_a, u._collectParams.ptp_cnt_b, o ? o : i, c, u._collectParams.ptp_cnt_e].join(".")
	}

	function c(e, t, n) {
		var r = this,
			e = e || 0,
			o = n || "click",
			i = r._collectParams,
			a = [i.ptp_cnt_a, i.ptp_cnt_b, 0, 0, i.ptp_cnt_e];
		a[2] = e, a[3] = t, "object" == typeof n && (n = "click"), (-1 == i.ptp_cnt.indexOf(a[1]) || -1 == i.ptp_url.indexOf(a[1])) && (i.ptp_ref = i.ptp_url, i.ptp_url = i.ptp_cnt), i.rerefer = encodeURIComponent(window.location.href), i.ptp_cnt = a.join("."), i.custom_event = o, r.isNative ? (i.ptp_info = encodeURIComponent("cnt=" + i.ptp_cnt + "&url=" + i.ptp_url + "&ref=" + i.ptp_ref), r.sendAppLog(i)) : r._sendPtpInfo(i)
	}
	var d = n(16);
	n(3);
	t.setAddEvent = r, t.createPtp = s, t.replaceParam = c;
	var u = n(10),
		p = n(8)
}, function(e, t, n) {
	function r() {
		return window.performance && window.performance.timing ? s.responseEnd - s.requestStart : i.BLANK_VALUE
	}

	function o() {
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
				os: a.getOs(),
				browser: a.getBrowser()
			}, t = ["dns", "tcp", "request", "response", "domContentLoad", "loadEvent", "blankTime", "readyTime", "onloadTime"], n = 0; n < t.length; n++) e[t[n]] < 0 && (e[t[n]] = 0);
		return e
	}
	var i = n(0),
		a = n(2),
		s = window.performance && window.performance.timing ? window.performance.timing : null;
	t.a = lperformance = {
		getOnload: o,
		getResponseTime: r,
		timing: s
	}
}, function(e, t, n) {
	function r() {
		var e = $.ajax;
		$.ajax = function() {
			var t = (new Date).getTime(),
				n = e.apply(this, arguments);
			try {
				var r, c = !1;
				"string" == typeof arguments[0] ? (r = o.formatUrl(arguments[0]), arguments[1] && "[object Object]" === Object.prototype.toString.call(arguments[1]) && "jsonp" === arguments[1].dataType && (c = !0)) : "object" == typeof arguments[0] && (r = o.formatUrl(arguments[0].url || ""), "jsonp" === arguments[0].dataType && (c = !0)), n.always(function(e) {
					if(!c) {
						var o = n.getAllResponseHeaders() || "",
							d = /content\-length\:\s(\d*)/m,
							u = 0,
							p = d.exec(o);
						p && p[1] && (u = $.trim(p[1]) || "");
						var f;
						"[object Object]" === Object.prototype.toString.call(e) && e.status && (f = e.status.code), a.send(i.constructNetworkData({
							type: "n",
							url: r,
							responseCode: n.status,
							responseSize: u,
							responseTime: (new Date).getTime() - t,
							bizCode: f || s.BLANK_VALUE,
							extra: {
								isAjax: 1
							}
						}))
					}
				})
			} catch(d) {}
			return n
		}
	}
	t.init = r;
	var o = n(1),
		i = n(5),
		a = n(6),
		s = n(0)
}, function(e, t, n) {
	function r(e) {
		var t = /\[\s*([\w\-]+)\s*([!~|^$*]?\=)?\s*(?:(["']?)([^\]'"]*)\3)?\s*\]/g,
			n = /^(#|\*)\w+/g,
			r = [],
			o = [],
			i = [],
			a = {
				"~=": 'attriHandle && (" "+attriHandle+" ").indexOf(" "+attriValue+" ")>-1',
				"=": "attriHandle && (/(^| )*attriValue(^| )*/).test(attriHandle)"
			},
			s = function(e) {
				for(var t = {
						"class": "el.className",
						"for": "el.jspFor",
						href: 'el.getAttribute("href", 2)'
					}, n = "name,id,className,value,selected,checked,disabled,type,tagName,readOnly".split(","), r = 0, o = n.length; o > r; r++) t[n[r]] = "el." + n[r];
				return t[e] || 'el.getAttribute("' + e + '")'
			},
			c = function(e) {
				for(var t = 0, n = null; t < e.length; t++) n = l(e[t]), n && r.push(e[t])
			};
		selectorselector = e.replace(t, function(e, t, n, r, i) {
			return o.push([t, n || "", i || ""]), ""
		});
		for(var d = 0; d < o.length; d++) {
			var u = s(o[d][0]),
				p = a[o[d][1]],
				f = o[d][2];
			i.push(p.replace(/attriHandle/g, u).replace("attriValue", f))
		}
		i = "return " + i.join("&&");
		var l = new Function("el", i),
			m = e.indexOf("*") > -1 ? ["*"] : e.match(n);
		if(d = 0, m && m.length > 0)
			for(; d < m.length; d++) c(document.getElementsByTagName(m[d]));
		return r = r && 1 == r.length ? r[0] : r
	}

	function o(e, t, n) {
		for(var r = e, o = n ? n : ""; r.parentNode && (r = r.parentNode, !(r.nodeName === t || o && "function" == typeof r.getAttribute && r.getAttribute(o))););
		return r
	}

	function i(e, t) {
		for(var n = e.length - 1, r = 0; n > r; r++)
			if(e[r] == t) return r + 1;
		return 1
	}
	t.selector = r, t.recursiveDom = o, t.arrIndexOf = i
}, function(e, t) {
	function n() {
		this.arr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", this.arrLen = this.arr.length
	}
	n.prototype = {
		rand: function(e) {
			var t, n = "";
			for(t = 0; e > t; t++) n += this.arr.charAt(Math.random() * this.arrLen);
			return n
		},
		code: function(e, t) {
			var n, r = 0,
				o = e.split("");
			for(n = 0; n < o.length; n++) r = t * r + o[n].charCodeAt(0);
			return Math.abs(r)
		},
		hash: function(e, t, n) {
			if(!e || 1 > n) return "";
			for(var r = this.code(e, t), o = "", i = 0, a = 0; o.length < n && (i = r / this.arr.length, a = r % this.arr.length, o += this.arr.charAt(a), 0 != i);) r = i;
			return o.toString()
		},
		pageHash: function(e) {
			return this.hash(e, 31, 4) + this.hash(e, 33, 4)
		},
		attachVerify: function(e) {
			return e + this.verify(e)
		},
		attachVerify: function(e) {
			return e + this.verify(e)
		},
		verify: function(e) {
			var t, n = 0,
				r = e.split("");
			for(t = 0; t < r.length; t++) n += r[t].charCodeAt(0);
			return this.arr.split("")[n % this.arrLen]
		}
	}, e.exports = n
}, function(e, t, n) {
	function r(e, t, n, r) {
		for(var o = !0, i = 0; i < d.length; i++) {
			var a = d[i] || {};
			if(a.msg === e && a.file === t && a.line === n && a["char"] === r) {
				o = !1;
				break
			}
		}
		return o
	}

	function o() {
		window.onerror = function(e, t, n, o) {
			r(e, t, n, o) && (d.push({
				msg: e,
				file: t,
				line: n,
				"char": o
			}), c.send(s.constructTraceData({
				type: "e",
				extra: a.extend({
					msg: e,
					file: t,
					line: n,
					"char": o
				}, i.getAll())
			})))
		}
	}
	t.init = o;
	var i = n(2),
		a = (n(0), n(1)),
		s = n(5),
		c = n(6),
		d = (document, [])
}, function(e, t, n) {
	t.a = container = {
		init: function() {}
	}
}, function(e, t, n) {
	var r = n(0),
		o = n(1);
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
				var i = o.trim(t[r] || ""),
					a = i.split("=");
				n[a[0]] = a[1]
			}
			return n
		}
	}
}, function(e, t, n) {
	e.exports = n(11)
}]);