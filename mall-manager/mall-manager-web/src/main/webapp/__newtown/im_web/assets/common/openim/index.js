! function (e, t) {
	"object" == typeof exports && "object" == typeof module ? module.exports = t() : "function" == typeof define && define.amd ? define("common/openim/index", [], t) : "object" == typeof exports ? exports["common/openim/index"] = t() : e["common/openim/index"] = t()
}(this, function () {
	return function (e) {
		function t(r) {
			if (n[r]) return n[r].exports;
			var i = n[r] = {
				exports: {},
				id: r,
				loaded: !1
			};
			return e[r].call(i.exports, i, i.exports, t), i.loaded = !0, i.exports
		}
		var n = {};
		return t.m = e, t.c = n, t.p = "", t(0)
	}([function (e, t, n) {
		"use strict";

		function r(e) {
			return e && e.__esModule ? e : {
				"default": e
			}
		}
		t.__esModule = !0;
		var i = n(1),
			o = r(i);
		n(4);
		var s = function (e, t) {
			(0, o["default"])(e, t);
			var n = $("#J-imContainer");
			n.show(), n.contents().focus()
		};
		window._openIm = s, t["default"] = s, e.exports = t["default"]
	}, function (e, t, n) {
		"use strict";

		function r(e) {
			return e && e.__esModule ? e : {
				"default": e
			}
		}
		t.__esModule = !0;
		var i = n(2),
			o = r(i),
			s = null,
			a = {
				getPos: function () {
					function e() {
						var e = void 0;
						return s ? s : window.localStorage && (e = window.localStorage.getItem("IM_POSITION")) ? JSON.parse(e) : {
							x: $(window).width() - 590,
							y: $(window).height() - 440
						}
					}
					return e
				}(),
				setPos: function () {
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
		t["default"] = function (e, t) {
			var n = "http://webim.meilishuo.com/pc";
			$("#J-imContainer").length || ! function () {
				var e = "left:" + a.getPos().x + "px; top:" + a.getPos().y + "px",
					t = '<div id="J-imContainer" class="im-frame-container" style="' + e + '">\n        <div id="J-closeImFrameBtn" class="im-frame-btn"></div>\n        <div id="J-dragImHandle" class="im-frame-drag"></div>\n        <iframe id="J-openImFrame" class="im-frame-box" frameborder="no" allowtransparency="true">\n        </iframe>\n      </div>';
				$("body").append(t), $("#J-closeImFrameBtn").on("click", function () {
					$("#J-imContainer").hide()
				});
				var n = (0, o["default"])("#J-imContainer").handle("#J-dragImHandle").setMax({
					x: $(window).width(),
					y: $(window).height()
				}).start();
				n.on("end", function (e) {
					a.setPos(e.pos.x, e.pos.y)
				}), $(window).resize(function () {
					u && window.clearTimeout(u), u = setTimeout(function () {
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
	}, function (e, t, n) {
		"use strict";

		function r(e) {
			return e && e.__esModule ? e : {
				"default": e
			}
		}

		function i(e, t) {
			if (!(e instanceof t)) throw new TypeError("Cannot call a class as a function")
		}

		function o(e, t) {
			if (!e) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
			return !t || "object" != typeof t && "function" != typeof t ? e : t
		}

		function s(e, t) {
			if ("function" != typeof t && null !== t) throw new TypeError("Super expression must either be null or a function, not " + typeof t);
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
		var a = n(3),
			u = r(a),
			l = null,
			c = !!("ontouchstart" in document.documentElement),
			f = function (e, t) {
				return window.getComputedStyle ? window.getComputedStyle(e, null).getPropertyValue(t) : e.currentStyle[t].getPropertyValue(t)
			},
			h = function (e, t, n) {
				if (t instanceof Array, !n) {
					var r = f(e, t);
					return parseFloat(r)
				}
				e.style[t] = n
			},
			d = function (e) {
				return e && "string" == typeof e ? $ ? $(e)[0] : document.querySelectorAll ? document.querySelectorAll(e)[0] : /^#/.test(e) ? document.getElementById(e.replace(/^#/, "")) : /^./.test(e) ? document.getElementsByClassName(e.replace(/^./, "")) : document.getElementsByName(e) : e
			},
			p = {
				start: "touchstart",
				move: "touchmove",
				end: "touchend"
			},
			v = {
				start: "mousedown",
				move: "mousemove",
				end: "mouseup"
			},
			m = c ? p : v,
			y = function (e, t, n) {
				return e.addEventListener ? e.addEventListener(t, n, !1) : e.attachEvent && e.attachEvent("on" + t, function () {
					var t = window.event;
					t.target = t.srcElement, t.currentTarget = e, n.call(e, t)
				}), e
			},
			x = function (e, t, n) {
				return e.removeEventListener ? e.removeEventListener(t, n, !1) : e.detachEvent && e.detachEvent("on" + t, n), e
			},
			g = function (e) {
				function t(n) {
					i(this, t);
					var r = o(this, e.call(this));
					return r.start = function () {
						return r.unbind(), r._client = {
							x: window.innerWidth,
							y: window.innerHeight
						}, r._eventHandler = function (e) {
							var t = r.current("left") || 0,
								n = r.current("top") || 0,
								i = function () {
									function i(i) {
										var o = void 0,
											s = void 0,
											a = void 0,
											u = void 0;
										c ? 1 === e.touches.length && (o = i.touches[0].clientX - e.touches[0].clientX, s = i.touches[0].clientY - e.touches[0].clientY) : (o = i.clientX - e.clientX, s = i.clientY - e.clientY), a = t + o, u = n + s, r.pos.dX = a - r.current("left"), r.pos.dY = u - r.current("top"), r.maxX && (0 > a ? a = 0 : a >= 0 && a > r.maxX && (a = r.maxX)), r.maxY && (0 > u ? u = 0 : u >= 0 && u > r.maxY && (u = r.maxY)), "x" === r._axis ? h(r.el, "left", a + "px") : "y" === r._axis ? h(r.el, "top", u + "px") : (h(r.el, "left", a + "px"), h(r.el, "top", u + "px")), r.getPos(), r.emit("dragging", r), i.preventDefault ? (i.preventDefault(), i.stopPropagation()) : (i.returnValue = !1, i.cancelBubble = !0)
									}
									return i
								}(),
								o = function () {
									function e() {
										r.emit("end", r), a()
									}
									return e
								}(),
								s = function () {
									function e(e) {
										e.preventDefault ? (e.preventDefault(), e.stopPropagation()) : (e.returnValue = !1, e.cancelBubble = !0)
									}
									return e
								}(),
								a = function () {
									function e() {
										x(document, m.move, i), x(document, m.end, o), x(document, "selectstart", s), x(r._handle, "dragstart", s)
									}
									return e
								}();
							r.emit("start", r), document.body.focus(), y(document, "selectstart", s), y(r._handle, "dragstart", s), y(document, m.move, i), y(document, m.end, o)
						}, r.getPos(), r._handle || (r._handle = r.el), y(r._handle, m.start, r._eventHandler), r
					}, r.el = d(n), r._axis = "both", r.pos = {}, r
				}
				return s(t, e), t.prototype.current = function () {
					function e(e, t) {
						return h(this.el, e, t)
					}
					return e
				}(), t.prototype.setMax = function () {
					function e(e) {
						if (e.x && e.x > 0) {
							var t = h(this.el, "width");
							this.maxX = e.x - t
						}
						if (e.y && e.y > 0) {
							var n = h(this.el, "height");
							this.maxY = e.y - n
						}
						return this
					}
					return e
				}(), t.prototype.axis = function () {
					function e(e) {
						return -1 !== ["x", "y", "both"].indexOf(e) && (this._axis = e), this
					}
					return e
				}(), t.prototype.handle = function () {
					function e(e) {
						return this._handle = d(e), this
					}
					return e
				}(), t.prototype.getPos = function () {
					function e(e) {
						return this.pos.x = this.current("left"), this.pos.y = this.current("top"), e && "function" == typeof e && e.apply(this, this.pos), this
					}
					return e
				}(), t.prototype.unbind = function () {
					function e() {
						return this._eventHandler ? (x(this.el, m.start, this._eventHandler), x(this._handle, m.start, this._eventHandler), this) : this
					}
					return e
				}(), t
			}(u["default"]);
		t["default"] = function (e) {
			return l || (l = new g(e)), l
		}, e.exports = t["default"]
	}, function (e, t) {
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
		e.exports = n, n.EventEmitter = n, n.prototype._events = void 0, n.prototype._maxListeners = void 0, n.defaultMaxListeners = 10, n.prototype.setMaxListeners = function (e) {
			if (!i(e) || 0 > e || isNaN(e)) throw TypeError("n must be a positive number");
			return this._maxListeners = e, this
		}, n.prototype.emit = function (e) {
			var t, n, i, a, u, l;
			if (this._events || (this._events = {}), "error" === e && (!this._events.error || o(this._events.error) && !this._events.error.length)) {
				if (t = arguments[1], t instanceof Error) throw t;
				var c = new Error('Uncaught, unspecified "error" event. (' + t + ")");
				throw c.context = t, c
			}
			if (n = this._events[e], s(n)) return !1;
			if (r(n)) switch (arguments.length) {
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
			} else if (o(n))
				for (a = Array.prototype.slice.call(arguments, 1), l = n.slice(), i = l.length, u = 0; i > u; u++) l[u].apply(this, a);
			return !0
		}, n.prototype.addListener = function (e, t) {
			var i;
			if (!r(t)) throw TypeError("listener must be a function");
			return this._events || (this._events = {}), this._events.newListener && this.emit("newListener", e, r(t.listener) ? t.listener : t), this._events[e] ? o(this._events[e]) ? this._events[e].push(t) : this._events[e] = [this._events[e], t] : this._events[e] = t, o(this._events[e]) && !this._events[e].warned && (i = s(this._maxListeners) ? n.defaultMaxListeners : this._maxListeners, i && i > 0 && this._events[e].length > i && (this._events[e].warned = !0, console.error("(node) warning: possible EventEmitter memory leak detected. %d listeners added. Use emitter.setMaxListeners() to increase limit.", this._events[e].length), "function" == typeof console.trace && console.trace())), this
		}, n.prototype.on = n.prototype.addListener, n.prototype.once = function (e, t) {
			function n() {
				this.removeListener(e, n), i || (i = !0, t.apply(this, arguments))
			}
			if (!r(t)) throw TypeError("listener must be a function");
			var i = !1;
			return n.listener = t, this.on(e, n), this
		}, n.prototype.removeListener = function (e, t) {
			var n, i, s, a;
			if (!r(t)) throw TypeError("listener must be a function");
			if (!this._events || !this._events[e]) return this;
			if (n = this._events[e], s = n.length, i = -1, n === t || r(n.listener) && n.listener === t) delete this._events[e], this._events.removeListener && this.emit("removeListener", e, t);
			else if (o(n)) {
				for (a = s; a-- > 0;)
					if (n[a] === t || n[a].listener && n[a].listener === t) {
						i = a;
						break
					}
				if (0 > i) return this;
				1 === n.length ? (n.length = 0, delete this._events[e]) : n.splice(i, 1), this._events.removeListener && this.emit("removeListener", e, t)
			}
			return this
		}, n.prototype.removeAllListeners = function (e) {
			var t, n;
			if (!this._events) return this;
			if (!this._events.removeListener) return 0 === arguments.length ? this._events = {} : this._events[e] && delete this._events[e], this;
			if (0 === arguments.length) {
				for (t in this._events) "removeListener" !== t && this.removeAllListeners(t);
				return this.removeAllListeners("removeListener"), this._events = {}, this
			}
			if (n = this._events[e], r(n)) this.removeListener(e, n);
			else if (n)
				for (; n.length;) this.removeListener(e, n[n.length - 1]);
			return delete this._events[e], this
		}, n.prototype.listeners = function (e) {
			var t;
			return t = this._events && this._events[e] ? r(this._events[e]) ? [this._events[e]] : this._events[e].slice() : []
		}, n.prototype.listenerCount = function (e) {
			if (this._events) {
				var t = this._events[e];
				if (r(t)) return 1;
				if (t) return t.length
			}
			return 0
		}, n.listenerCount = function (e, t) {
			return e.listenerCount(t)
		}
	}, function (e, t, n) {
		var r = n(5);
		"string" == typeof r && (r = [
			[e.id, r, ""]
		]), n(7)(r, {}), r.locals && (e.exports = r.locals)
	}, function (e, t, n) {
		t = e.exports = n(6)(), t.push([e.id, ".im-frame-container{width:580px;height:430px;position:fixed;z-index:1000;display:none;left:10px;top:10px}.im-frame-container .im-frame-box{width:100%;height:100%;border:none}.im-frame-container .im-frame-drag{width:470px;height:32px;position:absolute;z-index:3;left:75px;top:24px}.im-frame-container .im-frame-btn{width:32px;height:32px;position:absolute;right:0;top:24px;z-index:2;cursor:pointer;opacity:0;background-color:rgba(255,102,153,0)}", ""])
	}, function (e, t) {
		e.exports = function () {
			var e = [];
			return e.toString = function () {
				for (var e = [], t = 0; t < this.length; t++) {
					var n = this[t];
					n[2] ? e.push("@media " + n[2] + "{" + n[1] + "}") : e.push(n[1])
				}
				return e.join("")
			}, e.i = function (t, n) {
				"string" == typeof t && (t = [
					[null, t, ""]
				]);
				for (var r = {}, i = 0; i < this.length; i++) {
					var o = this[i][0];
					"number" == typeof o && (r[o] = !0)
				}
				for (i = 0; i < t.length; i++) {
					var s = t[i];
					"number" == typeof s[0] && r[s[0]] || (n && !s[2] ? s[2] = n : n && (s[2] = "(" + s[2] + ") and (" + n + ")"), e.push(s))
				}
			}, e
		}
	}, function (e, t, n) {
		function r(e, t) {
			for (var n = 0; n < e.length; n++) {
				var r = e[n],
					i = d[r.id];
				if (i) {
					i.refs++;
					for (var o = 0; o < i.parts.length; o++) i.parts[o](r.parts[o]);
					for (; o < r.parts.length; o++) i.parts.push(l(r.parts[o], t))
				} else {
					for (var s = [], o = 0; o < r.parts.length; o++) s.push(l(r.parts[o], t));
					d[r.id] = {
						id: r.id,
						refs: 1,
						parts: s
					}
				}
			}
		}

		function i(e) {
			for (var t = [], n = {}, r = 0; r < e.length; r++) {
				var i = e[r],
					o = i[0],
					s = i[1],
					a = i[2],
					u = i[3],
					l = {
						css: s,
						media: a,
						sourceMap: u
					};
				n[o] ? n[o].parts.push(l) : t.push(n[o] = {
					id: o,
					parts: [l]
				})
			}
			return t
		}

		function o(e, t) {
			var n = m(),
				r = g[g.length - 1];
			if ("top" === e.insertAt) r ? r.nextSibling ? n.insertBefore(t, r.nextSibling) : n.appendChild(t) : n.insertBefore(t, n.firstChild), g.push(t);
			else {
				if ("bottom" !== e.insertAt) throw new Error("Invalid value for parameter 'insertAt'. Must be 'top' or 'bottom'.");
				n.appendChild(t)
			}
		}

		function s(e) {
			e.parentNode.removeChild(e);
			var t = g.indexOf(e);
			t >= 0 && g.splice(t, 1)
		}

		function a(e) {
			var t = document.createElement("style");
			return t.type = "text/css", o(e, t), t
		}

		function u(e) {
			var t = document.createElement("link");
			return t.rel = "stylesheet", o(e, t), t
		}

		function l(e, t) {
			var n, r, i;
			if (t.singleton) {
				var o = x++;
				n = y || (y = a(t)), r = c.bind(null, n, o, !1), i = c.bind(null, n, o, !0)
			} else e.sourceMap && "function" == typeof URL && "function" == typeof URL.createObjectURL && "function" == typeof URL.revokeObjectURL && "function" == typeof Blob && "function" == typeof btoa ? (n = u(t), r = h.bind(null, n), i = function () {
				s(n), n.href && URL.revokeObjectURL(n.href)
			}) : (n = a(t), r = f.bind(null, n), i = function () {
				s(n)
			});
			return r(e),
				function (t) {
					if (t) {
						if (t.css === e.css && t.media === e.media && t.sourceMap === e.sourceMap) return;
						r(e = t)
					} else i()
				}
		}

		function c(e, t, n, r) {
			var i = n ? "" : r.css;
			if (e.styleSheet) e.styleSheet.cssText = _(t, i);
			else {
				var o = document.createTextNode(i),
					s = e.childNodes;
				s[t] && e.removeChild(s[t]), s.length ? e.insertBefore(o, s[t]) : e.appendChild(o)
			}
		}

		function f(e, t) {
			var n = t.css,
				r = t.media;
			if (r && e.setAttribute("media", r), e.styleSheet) e.styleSheet.cssText = n;
			else {
				for (; e.firstChild;) e.removeChild(e.firstChild);
				e.appendChild(document.createTextNode(n))
			}
		}

		function h(e, t) {
			var n = t.css,
				r = t.sourceMap;
			r && (n += "\n/*# sourceMappingURL=data:application/json;base64," + btoa(unescape(encodeURIComponent(JSON.stringify(r)))) + " */");
			var i = new Blob([n], {
					type: "text/css"
				}),
				o = e.href;
			e.href = URL.createObjectURL(i), o && URL.revokeObjectURL(o)
		}
		var d = {},
			p = function (e) {
				var t;
				return function () {
					return "undefined" == typeof t && (t = e.apply(this, arguments)), t
				}
			},
			v = p(function () {
				return /msie [6-9]\b/.test(window.navigator.userAgent.toLowerCase())
			}),
			m = p(function () {
				return document.head || document.getElementsByTagName("head")[0]
			}),
			y = null,
			x = 0,
			g = [];
		e.exports = function (e, t) {
			t = t || {}, "undefined" == typeof t.singleton && (t.singleton = v()), "undefined" == typeof t.insertAt && (t.insertAt = "bottom");
			var n = i(e);
			return r(n, t),
				function (e) {
					for (var o = [], s = 0; s < n.length; s++) {
						var a = n[s],
							u = d[a.id];
						u.refs--, o.push(u)
					}
					if (e) {
						var l = i(e);
						r(l, t)
					}
					for (var s = 0; s < o.length; s++) {
						var u = o[s];
						if (0 === u.refs) {
							for (var c = 0; c < u.parts.length; c++) u.parts[c]();
							delete d[u.id]
						}
					}
				}
		};
		var _ = function () {
			var e = [];
			return function (t, n) {
				return e[t] = n, e.filter(Boolean).join("\n")
			}
		}()
	}])
});
