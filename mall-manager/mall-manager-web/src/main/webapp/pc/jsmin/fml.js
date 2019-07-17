! function (e, n) {
	function t() {
		var e = r(),
			n = e.src;
		return C[n]
	}

	function r() {
		if (b) return b;
		if (O && "interactive" === O.readyState) return O;
		for (var e = N.getElementsByTagName("script"), n = 0; n < e.length; n++) {
			var t = e[n];
			if ("interactive" === t.readyState) return O = t, t
		}
	}

	function o(e) {
		return "[object Array]" == Object.prototype.toString.call(e)
	}

	function a(e) {
		for (var n in e) "defer" == n ? A = e[n] : P[n] = e[n]
	}

	function i(e, n) {
		var t, r = s(e);
		if (S.hasOwnProperty(r)) {
			var o = S[r];
			return void(n && n.call(o, o))
		}
		var a, i = "",
			u = P.modulebase;
		(a = e.indexOf(":")) && (i = e.substr(0, a), e = e.substr(a + 1), P.nsmap && P.nsmap.hasOwnProperty(i) && (u = "http://" + P.nsmap[i].host)), A ? k.hasOwnProperty(e) || (k[e] = !0, j.push(e)) : (t = u + e + ".js?" + P.sversion, C[t] = r, d(t, function () {
			w && (w.id = r, w = null)
		})), n && (x.hasOwnProperty(r) || (x[r] = []), x[r].push(n))
	}

	function s(e) {
		if (!e) return "";
		var n = P.localNS + ":";
		return 0 === e.indexOf(n) && (e = e.substr(n.length)), e
	}

	function u(e) {
		return S[e]
	}

	function c(e, n, r) {
		function a() {
			e || c ? p() : window.setTimeout(p, 0)
		}
		switch (arguments.length) {
			case 3:
				o(n) || (n = n ? [n] : []);
				break;
			case 2:
				r = n, "string" == typeof e ? n = l(r) : (n = e, e = "");
				break;
			case 1:
				r = e, e = "", n = l(r)
		}
		if (e = s(e), S.hasOwnProperty(e)) return void console.log(e + " dumb define");
		if (!e && document.attachEvent && !~T.indexOf("Opera")) var c = t();
		var p = function () {
			if (e || (e = c || p.id), !e || !S.hasOwnProperty(e)) {
				var n = {},
					t = r(u, n);
				t && (n = t), f(e, n)
			}
		};
		if (e || c || (w = p), n.length) {
			for (var h = 0, v = n.length, g = 0; g < v; g++) {
				var y = n[g];
				if (S.hasOwnProperty(y)) h++;
				else {
					if ("~" == y.substr(0, 1)) {
						var m = y.substr(1);
						"/" != m.substr(0, 1) && "http://" != m.substr(0, 7) && (m = P.modulebase + m), d(m, function () {
							f(y, !0)
						})
					} else i(y, null);
					x[y] || (x[y] = []), x[y].push(function () {
						for (var e = 0, t = n.length; e < t; e++)
							if (!S.hasOwnProperty(n[e])) return;
						p()
					})
				}
			}
			h >= v && a()
		} else a()
	}

	function l(e) {
		depencies = [];
		for (var n, t = /require\((['"])([\w\:\.\/\_\-]+)\1\)/g, r = e.toString().replace(/\/\*.*\*\//m, "").replace(/\/\/.*\n/g, ""); n = t.exec(r);) n = n[2], depencies.push(n);
		return depencies
	}

	function f(e, n) {
		S[e] = n, P.hasOwnProperty("enableShort") && (S[h(e)] = n);
		var t = x[e];
		if (t) {
			x[e] = [];
			for (var r = 0, o = t.length; r < o; r++) t[r].call(n, n)
		}
	}

	function d(e, n) {
		var t, r = function (n) {
			E[e].state = "loaded";
			for (var t; t = E[e].onload.shift();) t(u)
		};
		if (E.hasOwnProperty(e)) {
			if (n) switch (t = E[e], t.state) {
				case "loading":
					E[e].onload.push(n);
					break;
				case "loaded":
					n(u)
			}
		} else E[e] = {
			state: "loading",
			onload: []
		}, n && E[e].onload.push(n), p(e, r)
	}

	function p(e, n, t) {
		var r = document.createElement("script");
		r.defer = "true", r.async = "async", r.type = "text/javascript", n && (r.onerror = r.onload = r.onreadystatechange = function () {
			var e = this.readyState;
			e && "loaded" != e && "complete" != e || (n(), N.removeChild(r))
		}), r.src = e, b = r, N.appendChild(r), b = null
	}

	function h(e) {
		var n = e.lastIndexOf("/");
		return n && (e = e.substr(n + 1)), e
	}

	function v(e, n) {
		for (var t = e.length, r = 0, o = {}, a = 0; a < t; a++) {
			var s = e[a];
			i(s, function (e) {
				return function (a) {
					r++, o[h(e)] = a, r >= t && n.call(o, o)
				}
			}(s))
		}
	}

	function g(e, n) {
		e in B || (B[e] = []), n && "function" == typeof n && B[e].push(n)
	}

	function y(e, n, t) {
		if (e in B) {
			var r = B[e];
			if (r && r.length) {
				for (var o = 0, a = r.length; o < a; o++) r[o](n);
				return t && delete B[e], !0
			}
		}
	}

	function m(e, n) {
		var t = document.createElement("link");
		t.setAttribute("rel", "stylesheet"), t.setAttribute("rev", "stylesheet"), t.setAttribute("href", e), N.appendChild(t);
		var r = document.createElement("img");
		r.onerror = function () {
			n && n()
		}, r.src = e
	}
	window.console || (window.console = {
		log: function () {}
	});
	var w, b, O, P = {
			sversion: 1,
			deferHost: "/",
			localNS: "",
			modulebase: "/",
			enableShort: !0
		},
		S = {},
		x = (Array.prototype, {}),
		E = {},
		A = !1,
		j = [],
		k = {},
		C = {},
		N = document.head || document.getElementsByTagName("head")[0] || document.documentElement,
		T = navigator.userAgent,
		B = {};
	e.fml = {
		version: .8,
		vars: {},
		eventProxy: g,
		fireProxy: y,
		on: g,
		emit: y,
		debug: function () {
			window.console && window.console.log.apply && window.console.log.apply(console, arguments)
		},
		getOption: function (e) {
			return P[e]
		},
		setOptions: a,
		use: function (e, n) {
			o(e) ? v(e, n) : i(e, n)
		},
		define: c,
		iLoad: function () {
			if (A) {
				A = !1;
				for (var e = j.length, n = 0; n < e; n++) i(j[n]);
				j = [], j = {}
			}
		},
		loadScript: d,
		loadCss: m,
		alias: function () {
			return this
		}
	}
}(this);;
