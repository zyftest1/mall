(function(e) {
	MOGU.Trade = {};
	(function() {
		var d = MOGU.Trade;
		d.Warning = function(b, a) {
			a ? alert(b) : e.browser.msie || console.log(b)
		};
		d.nologin = function(b) {
			MOGU.user_handsome_login_init();
			MOGU.user_handsome_login(!1, {
				callback: b
			})
		};
		d.fixPrice = function(b) {
			jQuery.isNumeric(b) || (b = parseFloat(b, 10));
			return b = Math.round(b * 100)
		};
		d.getDiscount = function(b, a) {
			jQuery.isNumeric(b) || (b = parseFloat(b, 10) || 0);
			jQuery.isNumeric(a) || (a = parseFloat(a, 10) || 0);
			if(b == 0) return 0;
			return Math.round(b / a * 100) / 10
		};
		d.fixTwoPlace = function(b) {
			b +=
				"";
			var a = b.indexOf("."),
				c = b.length;
			a == -1 ? b += ".00" : a === c - 2 && (b += "0");
			return b
		}
	})();
	(function() {
		MOGU.Trade.subObject = e({});
		MOGU.Trade.subscribe = function() {
			MOGU.Trade.subObject.on.apply(MOGU.Trade.subObject, arguments)
		};
		MOGU.Trade.unsubscribe = function() {
			MOGU.Trade.subObject.off.apply(MOGU.Trade.subObject, arguments)
		};
		MOGU.Trade.publish = function() {
			MOGU.Trade.subObject.trigger.apply(MOGU.Trade.subObject, arguments)
		}
	})();
	(function() {
		var d = MOGU.Trade,
			b = {
				separator: "&",
				operator: "=",
				defaultkey: "scrollto"
			};
		d.analyticUrl =
			function(a) {
				a = a || {};
				this.options = e.extend({}, b, a || {})
			};
		d.analyticUrl.prototype = {
			Init: function() {
				var a = this.options,
					c = this.getArgument();
				e.isPlainObject(c) && c[a.defaultkey] && c[a.defaultkey].length > 0 && this.goTo(c[a.defaultkey]);
				return this.Argument = c
			},
			getArgument: function() {
				var a = this.options,
					c = window.location.href.split("#")[1] || 0;
				if(c === 0 || c.length == 0) return "";
				c = c.split(a.separator);
				if(c.length === 1 && c[0].indexOf(a.operator) == -1) return c[0];
				return this._getObject(c)
			},
			_getObject: function(a) {
				var c = this.options,
					b = {};
				e(a).each(function(a, e) {
					var d = e.split(c.operator);
					b[d[0] || "notdefiend"] = d[1] || ""
				});
				return b
			},
			setArgument: function(a, c) {
				var b = this.options,
					d = this.Argument || this.getArgument();
				e.isPlainObject(d) ? d[a] = c : typeof d == "string" ? (_obj = {}, _obj[b.defaultkey] = d, _obj[a] = c, d = _obj) : d === 0 && (_obj = {}, _obj[a] = c, d = _obj);
				this._reSetUrl(d)
			},
			removeArgument: function(a) {
				var c = this.Argument || this.getArgument();
				e.isPlainObject(c) ? delete c[a] : typeof c == "string" && c.replace(a, "");
				this._reSetUrl(c)
			},
			_reSetUrl: function(a) {
				var c =
					this.options,
					b = [];
				for(key in a) b.push(key + c.operator + a[key]);
				window.location.href = window.location.href.split("#")[0] + "#" + b.join(c.separator)
			},
			goTo: function(a, b, d) {
				d = d || 0;
				a = e((b || "#") + a).offset().top || 0;
				a > 0 && e(window).scrollTop(a + d)
			}
		}
	})()
})(jQuery);
! function(a) {
	MOGU.Trade || (MOGU.Trade = {});
	var b = MOGU.Trade,
		c = {
			language: "cn",
			addressUrl: "/trade/address/getaddrmap"
		},
		d = ['<label class="lableh" for="">省：<span class="need">*</span></label>', '<div class="inputbox">', '<select name="" class="province">', "</select>", "</div>", '<label for="">市：</label>', '<div class="inputbox">', '<select data-type="*" data-errormsg="请选择地址" data-inputbox="lastinput" class="town"></select>', "</div>", '<label for="">区：</label>', '<div class="inputbox lastinput">', '<select name="" class="area">', "</select>", "</div>"].join("");
	b.selectAdress = function(b, d) {
		var e = this;
		d = d || {}, e.options = a.extend({}, c, d || {}), e.container = b, e.data = e.options.data || "", e.province = "", e.town = "", e.area = "", e.init()
	}, b.selectAdress.prototype = {
		init: function() {
			var a = this;
			a._initSelectArea()
		},
		_initSelectArea: function() {
			var a = this;
			a.tempel = a.options.tempel || d, a.renderEl(), a.eventBind()
		},
		renderEl: function() {
			var a = this;
			"" !== a.container.jsp && a.container.append(a.tempel), a.province = a.container.find(".province"), a.town = a.container.find(".town"), a.area = a.container.find(".area")
		},
		_filderOption: function(b, c) {
			var d = "";
			return b.each(function(b, e) {
				a(e).text() == c && (d = b)
			}), d
		},
		resetArea: function(a) {
			var b = this;
			b.datas = a
		},
		resetTown: function(b) {
			var c = b || 0,
				d = this;
			if(!a.isNumeric(b)) {
				var e = d.town.find("option");
				c = d._filderOption(e, c)
			}
			d.town[0].selectedIndex = c, d.town.trigger("change")
		},
		initProvince: function() {
			var a = this,
				b = [],
				c = a.options,
				d = "en" === c.language ? "placeEn" : "placeZh";
			jQuery.post(c.addressUrl, {
				level: 1
			}, function(c) {
				for(var e = c.result, f = e.length, g = 0; f > g; g++) {
					var h = '<option id="' + e[g].id + '">' + e[g][d] + "</option>";
					b.push(h)
				}
				a.province.jsp(b.join("")).css({
					width: "auto"
				}), a.data.province ? setTimeout(function() {
					a.province.find('option:contains("' + a.data.province + '")').attr("selected", !0).trigger("change")
				}, 1) : setTimeout(function() {
					a.province.find("option").eq(0).attr("selected", !0).trigger("change")
				}, 1)
			}, "json")
		},
		eventBind: function() {
			var b = this;
			b.initProvince(), b.province.change(function() {
				var c = a(this),
					d = c.find("option:selected"),
					e = d.attr("id");
				b.changeTown(e, function() {
					b.town.trigger("change")
				})
			}), b.town.change(function() {
				var c = a(this),
					d = c.find("option:selected"),
					e = d.attr("id");
				b.changeArea(e)
			})
		},
		_each: function(a, b) {
			for(var c = 1; 99 >= c; c++) b(c)
		},
		changeTown: function(a, b) {
			var c = [],
				d = this,
				e = d.options,
				f = "en" === e.language ? "placeEn" : "placeZh";
			jQuery.post(e.addressUrl, {
				level: 2,
				parentId: a
			}, function(a) {
				for(var e = a.result, g = e.length, h = 0; g > h; h++) {
					var i = '<option id="' + e[h].id + '">' + e[h][f] + "</option>";
					c.push(i)
				}
				d.town.jsp(c.join("")).css({
					width: "0"
				}).css({
					width: "auto"
				}), d.data.city ? setTimeout(function() {
					d.town.find('option:contains("' + d.data.city + '")').attr("selected", !0), b()
				}, 1) : setTimeout(function() {
					d.town.find("option").eq(0).attr("selected", !0), b()
				}, 1)
			}, "json")
		},
		changeArea: function(a) {
			var b = [],
				c = this,
				d = c.options,
				e = "en" === d.language ? "placeEn" : "placeZh";
			jQuery.post(d.addressUrl, {
				level: 3,
				parentId: a
			}, function(a) {
				for(var d = a.result, f = d.length, g = 0; f > g; g++) {
					var h = '<option id="' + d[g].id + '">' + d[g][e] + "</option>";
					b.push(h)
				}
				c.area.jsp(b.join("")).css({
					width: "0"
				}).css({
					width: "auto"
				});
				var i;
				i = c.data.area ? c.area.find('option:contains("' + c.data.area + '")') : c.area.find("option").eq(0), 0 == i.length ? MOGU.changeAdress = !0 : setTimeout(function() {
					i.attr("selected", !0)
				}, 1), c.data = ""
			}, "json")
		},
		getPostData: function(b, c, d) {
			jQuery.post(b, c, function(b) {
				1001 == b.status.code ? d && a.isFunction(d) && d(b) : b.status.msg && alert(b.status.msg)
			}, "json")
		}
	}
}(jQuery);
(function($) {
	var defaults = {
		btnSubmit: "",
		tiptype: 1,
		ajaxPost: false,
		entersub: true
	};
	MOGU.validation = function(t, e) {
		var a = this;
		e = e || {};
		a.options = $.extend({}, defaults, e || {});
		a.contailn = $(t);
		a._init()
	};
	MOGU.validation.fn = MOGU.validation.prototype = {};
	MOGU.validation.fn.extend = MOGU.validation.extend = $.extend;
	MOGU.validation.fn.extend({
		_init: function() {
			var t = this,
				e = t.options;
			t._init_formel();
			t._bindsubmit()
		},
		_bindsubmit: function() {
			var t = this,
				e = t.options;
			if(e.btnReset && $(e.btnReset).length > 0) {
				$(e.btnReset).click(function(t) {
					t.preventDefault()
				})
			}
			if(e.btnSubmit && $(e.btnSubmit).length > 0) {
				$(e.btnSubmit).click(function(e) {
					e.preventDefault();
					if(t.checkall()) {
						t.postData()
					}
				})
			}
			if(e.entersub) {
				$(document).keydown(function(e) {
					if(e.keyCode == "13") {
						e.preventDefault();
						if(t.checkall()) {
							t.postData()
						}
					}
				})
			}
		},
		_init_formel: function() {
			var t = this,
				e = t.options;
			var a = t.contailn.find("input[type='text']");
			var r = t.contailn.find("input[type='password']");
			var s = t.contailn.find("input[type='radio']");
			var n = t.contailn.find("input[type='checkbox']");
			var i = t.contailn.find("select");
			var o = t.contailn.find("textarea");
			if(a.length > 0) t.bindtexts(a);
			t.texts = a;
			if(r.length > 0) t.bindtexts(r);
			t.passwords = r;
			if(o.length > 0) t.bindtexts(o);
			t.textareas = o;
			if(s.length > 0) t.bindxuanze(s);
			t.radios = s;
			if(n.length > 0) t.bindxuanze(n);
			t.checks = n;
			if(i.length > 0) t.bindxuanze(i);
			t.selects = i
		},
		bindtexts: function(t) {
			var e = this,
				a = e.options;
			if(t.length > 0) {
				t.each(function(t, a) {
					e.bindtext($(a))
				})
			} else {
				e.bindtext(text)
			}
		},
		bindtext: function(t) {
			var e = this,
				a = e.options;
			var r = t.attr("data-type");
			if(r) {
				e.addtype(t, r)
			}
			var s = t.attr("data-nullmsg");
			if(s) e.addfocus(t, s);
			var n = t.attr("data-altercss");
			if(n) e.fixclass(t, n);
			var i = t.attr("data-ajax");
			if(i) e.ajaxcheck(t, i)
		},
		bindxuanze: function(t) {
			var e = this,
				a = e.options;
			t.each(function(t, a) {
				var r = $(a);
				var s = r.attr("data-type");
				if(s) {
					e.addtype(r, s)
				}
			})
		},
		addfocus: function(t, e) {
			var a = this,
				r = a.options;
			a.bindel(t, "focus", function() {
				var r = '<span class="tip" style="display:none">' + e + "</span>";
				t.siblings(".tip").remove();
				t.after(r);
				a.showtip(t)
			})
		},
		fixclass: function(t, e) {
			t.bind("focus", function() {
				if(t.hasClass(e)) {
					t.attr("data-v", t.val());
					t.val("")
				}
			});
			t.bind("blur", function() {
				if(t.hasClass(e)) {
					var a = t.attr("data-v");
					t.val(a)
				}
			});
			t.bind("change", function() {
				t.removeClass(e)
			})
		},
		addtype: function(t, e) {
			var a = this,
				r = a.options;
			if(e.indexOf("{") >= 0) {
				var s = jQuery.parseJSON(e)
			}
			if(s && $.isPlainObject(s)) e = "obj";
			switch(e) {
				case "obj":
					var n = s.type;
					var i = parseFloat(s.min, 10);
					var o = parseFloat(s.max, 10);
					var l = s.zhengze;
					if(n === "zhengze") {
						if(l) {
							a.bindel(t, "blur", function() {
								var e = t.val();
								if(e && e.length == 0) {
									var r = "请输入信息";
									if(t.attr("data-error-no-msg")) {
										r = t.attr("data-error-no-msg")
									}
									a.showerreo(t, r)
								}
								var s = l;
								if(s.test(e)) {
									a.showsuccess(t)
								} else {
									a.showerreo(t)
								}
							})
						}
					} else if(n === "text") {
						a.bindel(t, "blur", function() {
							var e = t.val();
							if(e && e.length == 0) {
								var r = "请输入信息";
								if(t.attr("data-error-no-msg")) {
									r = t.attr("data-error-no-msg")
								}
								a.showerreo(t, r)
							}
							var s = a.fixmaxmin(e, o, i);
							if(s) {
								a.showsuccess(t)
							} else {
								a.showerreo(t)
							}
						})
					} else if(n === "num") {
						a.bindel(t, "blur", function() {
							var e = t.val();
							if(e && e.length == 0) {
								var r = "请输入信息";
								if(t.attr("data-error-no-msg")) {
									r = t.attr("data-error-no-msg")
								}
								a.showerreo(t, r)
							}
							var s = a.fixmaxminnum(e, o, i);
							var n = /^[0-9]*[1-9][0-9]*$/;
							if(s && n.test(e)) {
								a.showsuccess(t)
							} else {
								a.showerreo(t)
							}
						})
					}
					return;
				case "*":
					a.bindel(t, "blur", function() {
						if(t.attr("disabled")) {
							return
						}
						var e = t.val();
						if(e && e.length > 0) {
							a.showsuccess(t)
						} else {
							var r = "请输入信息";
							if(t.attr("data-error-no-msg")) {
								r = t.attr("data-error-no-msg")
							}
							a.showerreo(t, r)
						}
					});
					return;
				case "n":
					a.bindel(t, "blur", function() {
						if(t.attr("disabled")) {
							return
						}
						var e = t.val();
						if(e.length == 0) {
							var r = "请输入信息";
							if(t.attr("data-error-no-msg")) {
								r = t.attr("data-error-no-msg")
							}
							a.showerreo(t, r)
						}
						var s = /^[0-9]*[1-9][0-9]*$/;
						if(s.test(e)) {
							a.showsuccess(t)
						} else {
							a.showerreo(t)
						}
					});
					return;
				case "price":
					a.bindel(t, "blur", function() {
						if(t.attr("disabled")) {
							return
						}
						var e = t.val();
						if(e.length == 0) {
							var r = "请输入信息";
							if(t.attr("data-error-no-msg")) {
								r = t.attr("data-error-no-msg")
							}
							a.showerreo(t, r)
						}
						var s = /^\d+(\.\d{0,2})?$/;
						if(s.exec(e)) {
							a.showsuccess(t)
						} else {
							a.showerreo(t)
						}
					});
					return;
				case "phone":
					a.bindel(t, "blur", function() {
						if(t.attr("disabled")) {
							return
						}
						var e = t.val();
						if(e.length == 0) {
							var r = "请输入信息";
							if(t.attr("data-error-no-msg")) {
								r = t.attr("data-error-no-msg")
							}
							a.showerreo(t, r)
						}
						var s = /^1[3|4|5|8][0-9]{9}$/;
						if(s.test(e)) {
							a.showsuccess(t)
						} else {
							a.showerreo(t)
						}
					});
					return;
				case "email":
					a.bindel(t, "blur", function() {
						if(t.attr("disabled")) {
							return
						}
						var e = t.val();
						if(e && e.length == 0) {
							var r = "请输入信息";
							if(t.attr("data-error-no-msg")) {
								r = t.attr("data-error-no-msg")
							}
							a.showerreo(t, r)
						}
						var s = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
						if(s.test(e)) {
							a.showsuccess(t)
						} else {
							a.showerreo(t)
						}
					});
					return;
				case "url":
					a.bindel(t, "blur", function() {
						if(t.attr("disabled")) {
							return
						}
						var e = t.val();
						if(e && e.length == 0) {
							var r = "请输入信息";
							if(t.attr("data-error-no-msg")) {
								r = t.attr("data-error-no-msg")
							}
							a.showerreo(t, r)
						}
						var s = /^http[s]?:\/\/[A-Za-z0-9\-]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"\"])*$/;
						if(s.test(e)) {
							a.showsuccess(t)
						} else {
							a.showerreo(t)
						}
					});
					return;
				case "zipcode":
					a.bindel(t, "blur", function() {
						var e = t.val();
						if(t.attr("disabled")) {
							return
						}
						if(e && e.length == 0) {
							var r = "请输入信息";
							if(t.attr("data-error-no-msg")) {
								r = t.attr("data-error-no-msg")
							}
							a.showerreo(t, r)
						}
						var s = /^[0-9]{6}$/;
						if(s.test(e)) {
							a.showsuccess(t)
						} else {
							a.showerreo(t)
						}
					});
					return;
				case "repassed":
					a.bindel(t, "blur", function() {
						if(t.attr("disabled")) {
							return
						}
						var e = t.val();
						if(e && e.length == 0) {
							var r = "请输入信息";
							if(t.attr("data-error-no-msg")) {
								r = t.attr("data-error-no-msg")
							}
							a.showerreo(t, r)
						}
						var s = t.attr("data-passed");
						if(s) {
							var n = $("#" + s).val()
						} else {}
						if(e == n && e.length > 0) {
							a.showsuccess(t)
						} else {
							a.showerreo(t, "2次密码不一致，检查下重新输入吧")
						}
					});
					return
			}
		},
		showsuccess: function(text, success_text, data) {
			var self = this;
			var show_el = text;
			var show_boxname = text.attr("data-inputbox");
			if(show_boxname && show_boxname.length > 0) {
				var par_show_el = text.parents("li");
				show_el = par_show_el.find("." + show_boxname)
			}
			var _success = text.attr("data-succssed");
			var _success_text = "";
			var text_success = text.attr("data-successmsg");
			if(_success) {
				window.formaajax_catchdata = data;
				eval(_success)
			}
			if(success_text) {
				_success_text = success_text
			} else if(text_success && text_success.length > 0) {
				_success_text = text_success
			}
			show_el.siblings(".tip").remove();
			var success_tip = '<span style="display:none" class="right-tip tip display_u">' + success_text + "</span>";
			show_el.after(success_tip);
			self.showtip(show_el)
		},
		showerreo: function(text, wrong_text) {
			var self = this;
			var show_el = text;
			var show_boxname = text.attr("data-inputbox");
			if(show_boxname && show_boxname.length > 0) {
				var par_show_el = text.parents("li");
				show_el = par_show_el.find("." + show_boxname)
			}
			var _filed = text.attr("data-filed");
			var _errormsg_text = "信息填写有误";
			var text_errormsg = text.attr("data-errormsg");
			if(_filed) {
				eval(_filed)
			} else {
				if(wrong_text) {
					_errormsg_text = wrong_text
				} else if(text_errormsg && text_errormsg.length > 0) {
					_errormsg_text = text_errormsg
				}
				show_el.siblings(".tip").remove();
				var errormsg_tip = '<span style="display:none" class="wrong-tip tip display_u">' + _errormsg_text + "</span>";
				show_el.after(errormsg_tip);
				self.showtip(show_el)
			}
		},
		showtip: function(t) {
			var e = this,
				a = e.options;
			var r = t.siblings(".tip");
			if($.isFunction(a.tiptype)) {
				a.tiptype(r)
			} else if(a.tiptype == "none") {
				r.show()
			} else if(a.tiptype == 1) {
				r.fadeIn(500)
			} else if(a.tiptype == 2) {
				r.show(1e3)
			}
		},
		ajaxcheck: function(text, ajax) {
			var self = this,
				cfg = self.options;
			var _type = "POST";
			var _ajaxdata = jQuery.parseJSON(ajax);
			if(_ajaxdata == null) {} else {
				var _url = _ajaxdata.url;
				var _dataname = _ajaxdata.dataname;
				if(_ajaxdata.type) _type = _ajaxdata.type
			}
			var max = _ajaxdata.max;
			var min = _ajaxdata.min;
			var _data = {};
			self.bindel(text, "blur", function() {
				var vaule = text.val();
				if(vaule.length === 0) {
					self.showerreo(text, "请输入内容！");
					return
				}
				var can = self.fixmaxmin(vaule, max, min);
				if(!can) {
					self.showerreo(text);
					return
				}
				_data[_dataname] = vaule;
				jQuery.ajax({
					url: _url,
					type: _type,
					dataType: "json",
					data: _data,
					success: function(data, textStatus, xhr) {
						if(_ajaxdata.callback) {
							eval(_ajaxdata.callback)
						} else {
							if(data) {
								var _code = data.status.code;
								if(_code === 1001) {
									self.showsuccess(text, data.status.msg, data)
								} else {
									self.showerreo(text, data.status.msg, data)
								}
							}
						}
					}
				})
			})
		},
		getData: function() {
			var t = this,
				e = t.options;
			var a = {};
			t.texts.each(function(t, e) {
				var r = $(e).attr("name");
				a[r] = $(e).val()
			});
			t.passwords.each(function(t, e) {
				var r = $(e).attr("name");
				a[r] = $(e).val()
			});
			t.textareas.each(function(t, e) {
				var r = $(e).attr("name");
				a[r] = $(e).val()
			});
			return a
		},
		postData: function(t) {
			var e = this,
				a = e.options;
			if(a.beforeSubmit) {
				a.beforeSubmit.call(e.contailn)
			}
			if(a.ajaxPost) {
				var r = t || e.contailn.attr("action");
				var s = e.getData();
				jQuery.ajax({
					url: r,
					type: "POST",
					dataType: "json",
					data: s,
					success: function(t, r, s) {
						if(a.callback && $.isFunction(a.callback)) a.callback(e, t)
					}
				})
			} else {
				e.contailn.submit()
			}
		},
		fixmaxmin: function(t, e, a) {
			var r = false;
			if(e) {
				if(a) {
					if(t.length <= e && t.length >= a) {
						r = true
					}
				} else {
					if(t.length <= e) {
						r = true
					}
				}
			} else if(a) {
				if(valuie.length >= a) {
					r = true
				}
			}
			return r
		},
		fixmaxminnum: function(t, e, a) {
			var r = false;
			if(e) {
				if(a) {
					if(t <= e && t >= a) {
						r = true
					}
				} else {
					if(t <= e) {
						r = true
					}
				}
			} else if(a) {
				if(valuie >= a) {
					r = true
				}
			}
			return r
		},
		bindel: function(t, e, a) {
			var r = this;
			t.bind(e, function() {
				a(t, r)
			})
		},
		checkall: function() {
			var t = this,
				e = t.options;
			var a = true;
			if(e.beforeCheck && $.isFunction(e.beforeCheck)) {
				a = e.beforeCheck.call(t.contailn)
			}
			if(t.texts.length > 0) t.texts.blur();
			if(t.passwords.length > 0) t.passwords.blur();
			if(t.textareas.length > 0) t.textareas.blur();
			if(t.radios.length > 0) t.radios.blur();
			if(t.checks.length > 0) t.checks.blur();
			if(t.selects.length > 0) t.selects.blur();
			var r = $(".wrong-tip");
			if(r.length > 0) {
				var s = r.eq(0).offset().top;
				$(window).scrollTop(s);
				return false
			}
			if(e.afterCheck && $.isFunction(e.afterCheck)) {
				a = e.afterCheck.call(t.contailn)
			}
			return a
		}
	})
})(jQuery, window);
var MOGU = MOGU || {};
MOGU.alert = MOGU.alert || function(t) {
		alert(t)
	},
	function(t) {
		function e(t, e, s) {
			this.init(t, e, s)
		}
		var s = null,
			a = ['<div class="__addressPop">', '<dl class="address_pop">', '<input type="hidden" class="J_addressid" name="addressId" value="" />', "<dt>省：</dt>", '<dd class="pt_ie6hack">', '<i class="needicon">*</i>', '<select name="province" class="J_province J_select w140 vm"> </select>', '<label class="dt" for="">市：</label>', '<select name="city" class="J_city J_select w100 vm"> </select>', '<label class="dt" for="">区：</label>', '<select name="area" class="J_area J_select w100 vm"> </select>', '<span class="prompt"></span>', "</dd>", "<dt>邮政编码：</dt>", "<dd>", '<i class="needicon">*</i>', '<input type="text" data-type="c" data-errormsg="请填写正确的邮政编码" data-normal="" class="text formsize_normal J_postcode J_form vm" name="postcode">', '<span class="prompt"></span>', "</dd>", "<dt>街道地址：</dt>", "<dd>", '<i class="needicon">*</i>', '<textarea data-type="*" data-min="5" data-max="100" data-normal="请填写街道地址，最少5个字，最多不能超过100个字" data-errormsg="请填写街道地址，最少5个字，最多不能超过100个字" class="textarea formsize_large J_street J_form" name="street" cols="30" rows="3"></textarea>', '<span class="prompt breakline">请填写街道地址，最少5个字，最多不能超过100个字</span>', "</dd>", "<dt>收货人姓名：</dt>", "<dd>", '<i class="needicon">*</i>', '<input type="text" data-type="*" data-errormsg="请填写收货人" data-normal="" class="text formsize_normal J_name J_form vm" name="name">', '<span class="prompt"></span>', "</dd>", "<dt>手机：</dt>", "<dd>", '<i class="needicon">*</i>', '<input type="text" data-type="phone" data-errormsg="请填写正确的联系号码" data-normal="" class="text formsize_normal J_mobile J_form vm" name="mobile">', '<span class="prompt"></span>', "</dd>", "<dt></dt>", '<dd class="pt10 oper_btn">', '<a href="javascript:;" class="confirm_btn J_okbtn mr10">确认地址</a>', '<a href="javascript:;" class="cancel_btn J_cancelbtn">取消</a>', "</dd>", "</dl>", "</div>"].join(""),
			r = ['{{if (it.def === "def") { }}', '<option value="{{=it.id}}" {{ if (it.index === 0) { }} selected="selected" {{ } }}>{{=it.name}}</option>', "{{ } else { }}", '<option value="{{=it.id}}" {{ if (it.name === it.def) { }} selected="selected" {{ } }}>{{=it.name}}</option>', "{{ } }}"].join(""),
			d = ["postcode", "street", "name", "mobile", "addressId"],
			o = function(t) {
				return "string" != typeof t ? t : t.replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;").replace(/'/g, "&#039;")
			},
			n = function(t) {
				for(var e in t) t[e] = o(t[e]);
				return t
			};
		e.prototype.init = function(e, s, r) {
			this.box = e, this.$pop = t(a), this.box.append(this.$pop), this.$forms = {}, this.$forms.province = this.$pop.find(".J_province").eq(0), this.$forms.city = this.$pop.find(".J_city").eq(0), this.$forms.area = this.$pop.find(".J_area").eq(0), this.$forms.postcode = this.$pop.find(".J_postcode").eq(0), this.$forms.street = this.$pop.find(".J_street").eq(0), this.$forms.name = this.$pop.find(".J_name").eq(0), this.$forms.mobile = this.$pop.find(".J_mobile").eq(0), this.$forms.addressId = this.$pop.find(".J_addressid").eq(0), this.option = {
				inter: "/trade/address/addfororder"
			}, this.set(s, r), this.initEvent()
		}, e.prototype.set = function(e, s) {
			s = s || {}, this.option = t.extend(this.option, s), delete this.option.address, s.address = s.address || null, this.address = t.extend({
				postcode: "",
				street: "",
				name: "",
				mobile: "",
				addressId: "",
				province: "",
				city: "",
				area: ""
			}, s.address), "function" == typeof e && (this.callback = e), this.address.province && this.address.city && this.address.area ? this.resetAreaSelect(this.address.province, this.address.city, this.address.area) : this.resetAreaSelect();
			for(var a = function(t, e) {
					t.removeClass("error").val(e), t.next().removeClass("notice").jsp(t.attr("data-normal"))
				}, r = 0, o = d.length; o > r; r++) a(this.$forms[d[r]], this.address[d[r]])
		}, e.prototype.show = function() {
			this.box.show()
		}, e.prototype.updateAddressSelect = function(e, s, a, d, o) {
			var n = {};
			n.level = s, a && (n.parentId = a), t.ajax({
				url: "/trade/address/getaddrmap",
				data: n,
				type: "GET",
				dataType: "json",
				success: function(t) {
					if(t && t.status && 1001 === t.status.code) {
						for(var s = t.result, a = [], n = 0, i = s.length; i > n; n++) {
							var l = {
								index: n,
								id: s[n].id,
								name: s[n].placeZh,
								def: d || "def"
							};
							a.push(MGTOOL.template(r, l))
						}
						e.jsp(a.join("")), "function" == typeof o && o()
					} else MOGU.alert(t && t.status ? t.status.msg : "网络错误，请稍后再试")
				}
			})
		}, e.prototype.resetAreaSelect = function(t, e, s) {
			var a = this;
			a.updateAddressSelect(a.$forms.province, 1, null, t, function() {
				a.$forms.province.trigger("change", [e, s])
			})
		}, e.prototype.initEvent = function() {
			var e = this;
			e.$pop.find(".J_form").on("blur", function() {
				var e, s = t(this),
					a = s.next(),
					r = null,
					d = 1,
					o = s.attr("data-type"),
					n = t.trim(s.val()),
					i = s.attr("data-errormsg"),
					l = s.attr("data-normal"),
					c = !0;
				switch(o) {
					case "c":
						(isNaN(n) || 6 !== n.length) && (c = !1);
						break;
					case "*":
						e = s.attr("data-min"), e && (d = +e), e = s.attr("data-max"), e && (r = +e), (n.length < d || r && n.length > r) && (c = !1);
						break;
					case "phone":
						c = !1, (/^1[3|4|5|7|8][0-9]\d{8}$/.test(n) || 0 !== n.indexOf("1") && /^[0-9\-]{10,16}$/.test(n)) && (c = !0)
				}
				c ? (a.removeClass("notice").jsp(l), s.removeClass("error")) : (a.addClass("notice").jsp(i), s.addClass("error"))
			}), e.$pop.on("click", ".J_okbtn", function(s) {
				s.preventDefault();
				var a = {},
					r = t(this);
				if(!r.hasClass("disable") && (e.$pop.find(".J_form").trigger("blur"), e.$pop.find(".error").length <= 0)) {
					r.addClass("disable");
					for(var d in e.$forms) {
						var o = e.$forms[d];
						("addressId" !== o.attr("name") || "" !== o.val()) && (a[o.attr("name")] = o.val())
					}
					t.ajax({
						url: "/trade/address/getoken",
						data: null,
						type: "POST",
						dataType: "json",
						success: function(s) {
							s && s.status && 1001 === s.status.code ? (a.tn = s.result.tn, a.tv = s.result.tv, t.ajax({
								url: e.option.inter,
								data: a,
								type: "POST",
								dataType: "json",
								success: function(s) {
									s && s.status && 1001 === s.status.code ? (a.addressId = s.result.addressId, e.$pop.find(".J_select").each(function() {
										var e = t(this),
											s = e.attr("name");
										a[s] = e.find("option").filter(":selected").jsp()
									}), a = n(a), e.box.hide(), e.callback && e.callback(a)) : MOGU.alert(s && s.status ? s.status.msg : "网络错误，请稍后再试")
								},
								complete: function() {
									r.removeClass("disable")
								}
							})) : MOGU.alert("登录信息错误，请刷新页面重试")
						}
					})
				}
			}), e.$pop.find(".lb_close").off("click"), e.$pop.on("click", ".lb_close", function(t) {
				t.preventDefault(), e.box.hide()
			}), e.$pop.on("click", ".J_cancelbtn", function(t) {
				t.preventDefault(), e.box.hide()
			}), e.$forms.province.on("change", function(s, a, r) {
				var d = t(this).val();
				e.$forms.city.trigger("update", [d, a, r])
			}), e.$forms.city.on("change", function(s, a) {
				var r = t(this).val();
				e.$forms.area.trigger("update", [r, a])
			}).on("update", function(s, a, r, d) {
				var o = t(this);
				e.updateAddressSelect(o, 2, a, r, function() {
					o.trigger("change", d)
				})
			}), e.$forms.area.on("update", function(s, a, r) {
				e.updateAddressSelect(t(this), 3, a, r)
			})
		};
		var i = function(t, a, r) {
			!t || t.length <= 0 || (s = t.data("_obj_editaddress"), s ? s.set(a, r) : (s = new e(t, a, r), t.data("_obj_editaddress", s)), s.show())
		};
		MOGU.editAddressBox = i
	}(jQuery);
! function() {
	var e = $("#J_s_addr_edit"),
		d = $("#J_t_addr_edit"),
		a = $(".J_intro"),
		t = $("#J_saddAddress"),
		s = $("#J_sAddrWrap"),
		r = $("#J_taddAddress"),
		i = $("#J_tAddrWrap"),
		n = {
			save: "/trade/address/addfororder",
			"delete": "/trade/address/delete",
			"default": "/trade/address/setdefault"
		},
		o = {
			save: "/trade/address/addReturnAddress",
			"delete": "/trade/address/deleteReturnAddress",
			"default": "/trade/address/setReturnAddressDefault"
		};
	t.click(function(e) {
		e.preventDefault(), MOGU.editAddressBox(s, function() {
			location.reload()
		}, {
			inter: n.save
		})
	}), r.click(function(e) {
		e.preventDefault(), MOGU.editAddressBox(i, function() {
			location.reload()
		}, {
			inter: o.save
		})
	}), e.on("click", ".edit", function(e) {
		e.preventDefault();
		var d = $(this).parents(".addr_section");
		return MOGU.editAddressBox(s, function() {
			location.reload()
		}, {
			inter: n.save,
			address: {
				province: d.find(".addr").attr("data-province"),
				city: d.find(".addr").attr("data-city"),
				area: d.find(".addr").attr("data-area"),
				postcode: d.find(".zcode").jsp(),
				street: d.find(".addr").attr("data-street"),
				name: d.find(".name").jsp(),
				mobile: d.find(".mobile").jsp(),
				addressId: d.attr("aid")
			}
		}), !1
	}).on("click", ".J_default", function(e) {
		e.preventDefault();
		var d = $(this),
			a = d.parents(".addr_section"),
			t = a.attr("aid");
		return jQuery.post(n["default"], {
			addressId: t
		}, function() {
			location.reload()
		}, "json"), !1
	}).on("click", ".del", function(e) {
		e.preventDefault();
		var d = $(this),
			a = d.parents(".addr_section"),
			t = a.attr("aid");
		return jQuery.post(n["delete"], {
			addressId: t
		}, function() {
			a.fadeOut(800)
		}, "json"), !1
	}), d.on("click", ".edit", function(e) {
		e.preventDefault();
		var d = $(this).parents(".addr_section");
		return MOGU.editAddressBox(i, function() {
			location.reload()
		}, {
			inter: o.save,
			address: {
				province: d.find(".addr").attr("data-province"),
				city: d.find(".addr").attr("data-city"),
				area: d.find(".addr").attr("data-area"),
				postcode: d.find(".zcode").jsp(),
				street: d.find(".addr").attr("data-street"),
				name: d.find(".name").jsp(),
				mobile: d.find(".mobile").jsp(),
				addressId: d.attr("aid")
			}
		}), !1
	}).on("click", ".J_default", function(e) {
		e.preventDefault();
		var d = $(this),
			a = d.parents(".addr_section"),
			t = a.attr("aid");
		return jQuery.post(o["default"], {
			addressId: t
		}, function() {
			location.reload()
		}, "json"), !1
	}).on("click", ".del", function(e) {
		e.preventDefault();
		var d = $(this),
			a = d.parents(".addr_section"),
			t = a.attr("aid");
		return d.hasClass("disable") ? !1 : (jQuery.post(o["delete"], {
			addressId: t
		}, function() {
			a.fadeOut(800)
		}, "json"), !1)
	});
	var l = a.find(".showedit").eq(0),
		c = a.find(".show").eq(0),
		f = a.find(".save").eq(0),
		u = a.find(".edit").eq(0),
		v = a.find(".del").eq(0),
		p = function(e) {
			return e.replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;").replace(/'/g, "&#039;")
		},
		h = function(e) {
			switch(e) {
				case "edit":
					l.addClass("stage_hide"), f.addClass("stage_hide"), c.removeClass("stage_hide"), u.removeClass("stage_hide"), v.removeClass("stage_hide");
					break;
				default:
					l.removeClass("stage_hide"), f.removeClass("stage_hide"), c.addClass("stage_hide"), u.addClass("stage_hide"), v.addClass("stage_hide")
			}
		};
	a.on("click", ".save", function() {
		var e = $(this);
		if(!e.hasClass("disable")) {
			e.addClass("disable");
			var d = p(l.val());
			return "" === $.trim(d) ? (MOGU.alert("退货说明不能为空"), e.removeClass("disable"), void 0) : $.trim(d).length >= 200 ? (MOGU.alert("退货说明不能超过200字"), e.removeClass("disable"), void 0) : ($.ajax({
				url: "/trade/address/addReturnAddressDescription",
				data: {
					description: d
				},
				type: "POST",
				dataType: "json",
				success: function() {
					c.jsp(d.replace(/\n/gim, "<br>")), h("edit")
				},
				complete: function() {
					e.removeClass("disable")
				},
				error: function() {
					e.removeClass("disable")
				}
			}), void 0)
		}
	}).on("click", ".edit", function() {
		var e = $(this);
		e.hasClass("disable") || (e.addClass("disable"), l.val(c.jsp().replace(/<br>/gim, "\n")), e.removeClass("disable"), h("save"))
	}).on("click", ".del", function() {
		var e = $(this);
		e.hasClass("disable") || MOGU.confirm("确认删除？", function(d) {
			d && (e.addClass("disable"), $.ajax({
				url: "/trade/address/addReturnAddressDescription",
				data: {
					description: ""
				},
				type: "POST",
				dataType: "json",
				success: function() {
					c.jsp(""), l.val(""), h("save")
				},
				complete: function() {
					e.removeClass("disable")
				},
				error: function() {
					e.removeClass("disable")
				}
			}))
		})
	})
}();
jQuery(document).ready(function(a) {
	var b = a("#coupon_prompt_wrap"),
		c = new Date,
		d = c.getDate();
	if(b.size() > 0) {
		if(d == window.store.get("isOrderCouponPrompt")) return;
		b.show(), b.on("click", ".prompt_close", function(a) {
			a.preventDefault(), b.hide(), window.store.set("isOrderCouponPrompt", d)
		})
	}
});
! function(a) {
	function t() {
		function t() {
			r.close(), location.href = "/trade/order/list4buyer"
		}
		var i = location.href;
		if(-1 != i.indexOf("refer=failed")) {
			var e = {
				title: " ",
				lightBoxId: "lbg",
				contentHtml: g,
				scroll: !0
			};
			r = new MGLightBox(e), r.init(), a("#lbg").on("click", ".fail_finish, .lb_close", function() {
				return t(), !1
			})
		}
	}

	function i() {
		var t = location.href;
		if(-1 != t.indexOf("from=pay")) {
			var i = a(".order_section").eq(0);
			if(!(i.length <= 0)) {
				var e = {
					title: "请付款",
					lightBoxId: "lbg",
					contentHtml: h(i.attr("data-id")),
					scroll: !1
				};
				r = new MGLightBox(e), r.init()
			}
		}
	}

	function e() {
		a("#lbg").on("click", ".outbox .t", function() {
			return a(this).addClass("selected").next().show().parent().siblings().find(".t").removeClass("selected").next().hide(), !1
		})
	}

	function s(t) {
		this.opts = a.extend({}, this.defaults, t), this.loop = null, this.init()
	}

	function c(t) {
		a.post("/trade/order/close", {
			orderId: t
		}, function(a) {
			var t = a.status.code,
				i = a.status.msg;
			1001 == t ? location.href = "/trade/order/list4buyer" : alert(i)
		}, "json")
	}

	function o() {
		var t = a(".order_table .timer");
		t.each(function() {
			var t = a(this);
			new s({
				timeleft: t.data("time"),
				day: t.find(".day"),
				hour: t.find(".hour"),
				minute: t.find(".minute"),
				second: t.find(".second"),
				callback: function() {
					var a = t.parents(".count_ticket");
					a.find(".order_time").remove(), a.find(".count_price").jsp('<span class="pay_btn closed">订单取消</span>')
				}
			})
		})
	}
	var r, n = ['<div class="outbox">', '<div class="paytitle">', "请选择支付方式", "</div>", '<div class="default">', '<div class="t selected">', '<span>使用默认支付</span><span class="i_arrow ico"></span>', "</div>", '<div class="list">', "{{ if(!it.weixinpay){ }}", '<div class="itembox forweipay">', '<a href="{{=it.href}}&outPayType=60000&from=web" class="chosepay" target="_blank"><img class="payimg" src="http://s6.mogujie.cn/pic/131109/7ycvj_kqyuwtsdmjbgurcugfjeg5sckzsew_137x37.gif" alt="">', "<h2>微信支付</h2>", '<div class="info">', "超简单，扫一扫即可支付", "</div>", "</a>", "</div>", "{{ } }}", "{{ if(it.hashgproduct){ }}", '<div class="itembox">', '<a href="{{=it.href}}&outPayType=8" class="chosepay" target="_blank"><img class="payimg" src="http://s12.mogujie.cn/pic/131109/7ycvj_kqyvg6sdmjbges2ugfjeg5sckzsew_140x42.gif" alt="">', "<h2>银联在线支付</h2>", '<div class="info">', "无须网银，有银行卡号即可支付", "</div>", "</a>", "</div>", "{{ }else{ }}", '<div class="itembox">', '<a href="{{=it.href}}&outPayType=3" class="chosepay" target="_blank"><img class="payimg" src="http://s12.mogujie.cn/pic/131109/7ycvj_kqyvg6sdmjbges2ugfjeg5sckzsew_140x42.gif" alt="">', "<h2>银联在线支付</h2>", '<div class="info">', "无须网银，有银行卡号即可支付", "</div>", "</a>", "</div>", "{{ } }}", '<div class="itembox forweipay" {{ if(!it.weixinpay){ }} style="display:none;"  {{ } }} }} >', '<a href="{{=it.href}}&outPayType=60000&from=web" class="chosepay" target="_blank"><img class="payimg" src="http://s6.mogujie.cn/pic/131109/7ycvj_kqyuwtsdmjbgurcugfjeg5sckzsew_137x37.gif" alt="">', "<h2>微信支付</h2>", '<div class="info">', '超简单，扫一扫即可支付<span class="red">首次使用还立减5元</span>', "</div>", "</a>", "</div>", "{{ if(it.hashgproduct){ }}", '<div class="itembox">', '<a href="{{=it.href}}&outPayType=10" class="chosepay" target="_blank"><img class="payimg" src="http://s7.mogujie.cn/pic/131109/7ycvj_kqywirslmjbguvsugfjeg5sckzsew_123x42.gif" alt="">', "<h2>财付通支付</h2>", '<div class="info">', "会支付，会生活", "</div>", "</a>", "</div>", "{{ }else{ }}", '<div class="itembox">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}" class="chosepay" target="_blank"><img class="payimg" src="http://s7.mogujie.cn/pic/131109/7ycvj_kqywirslmjbguvsugfjeg5sckzsew_123x42.gif" alt="">', "<h2>财付通支付</h2>", '<div class="info">', "会支付，会生活", "</div>", "</a>", "</div>", "{{ } }}", "</div>", "</div>", '<div class="deposit">', '<div class="t">', '<span>使用储蓄卡支付</span><span class="i_arrow ico"></span>', "</div>", '<div class="list clearfix">', '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=ICBC_D" target="_blank" class="chosepay"><img src="/img/bank/icbc.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CCB_D" target="_blank" class="chosepay"><img src="/img/bank/ccb.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CMB_D" target="_blank" class="chosepay"><img src="/img/bank/cmb.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=ABC" target="_blank" class="chosepay"><img src="/img/bank/abc.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=BOC_D" target="_blank" class="chosepay"><img src="/img/bank/boc.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=COMM_D" target="_blank" class="chosepay"><img src="/img/bank/bankcomm.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CIB_D" target="_blank" class="chosepay"><img src="/img/bank/cib.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CMBC_D" target="_blank" class="chosepay"><img src="/img/bank/cmbc.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CEB_D" target="_blank" class="chosepay"><img src="/img/bank/ceb.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CITIC" target="_blank" class="chosepay"><img src="/img/bank/citic.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=GDB_D" target="_blank" class="chosepay"><img src="/img/bank/gdb.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=POSTGC" target="_blank" class="chosepay"><img src="/img/bank/psbc.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=SPDB" target="_blank" class="chosepay"><img src="/img/bank/spdb.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=PAB" target="_blank" class="chosepay"><img src="/img/bank/pinganbank.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=BOB" target="_blank" class="chosepay"><img src="/img/bank/bjbank.jpg" width="130px" height="40px"></a>', "</div>", "</div>", "</div>", '<div class="credit">', '<div class="t">', '<span>使用信用卡支付</span><span class="i_arrow ico"></span>', "</div>", '<div class="list clearfix">', '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=ICBC_C" target="_blank" class="chosepay"><img src="/img/bank/icbc.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CCB_C" target="_blank" class="chosepay"><img src="/img/bank/ccb.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CMB_C" target="_blank" class="chosepay"><img src="/img/bank/cmb.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=ABC" target="_blank" class="chosepay"><img src="/img/bank/abc.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=BOC_C" target="_blank" class="chosepay"><img src="/img/bank/boc.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=COMM_C" target="_blank" class="chosepay"><img src="/img/bank/bankcomm.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CIB_C" target="_blank" class="chosepay"><img src="/img/bank/cib.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CMBC_C" target="_blank" class="chosepay"><img src="/img/bank/cmbc.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=CEB_C" target="_blank" class="chosepay"><img src="/img/bank/ceb.jpg" width="130px" height="40px"></a>', "</div>", '<div class="b">', '<a href="{{=it.href}}&outPayType={{=it.PayType}}&outPayTypeEx=GDB_C" target="_blank" class="chosepay"><img src="/img/bank/gdb.jpg" width="130px" height="40px"></a>', "</div>", "</div>", "</div>", "</div>"].join(""),
		p = "/trade/order/list4buyer"; - 1 != location.href.indexOf("/trade/item/checkgoods") && (p = "/trade/item/checkgoods"), -1 != location.href.indexOf("/magic/seller/paylist") && (p = "/magic/seller/paylist/2");
	var l = ['<div class="content">', '<p class="tit">请您在新打开的页面上完成付款</p>', "<p>付款完成前请不要关闭此窗口<br>完成付款后请根据您的情况点击下面的按钮</p>", '<div class="subbox">', '<a href="' + p + '" class="finish"></a>', '<a href="/trade/faq/detail?id=1ec&type=1" target="_blank" class="wrong"></a>', "</div>", "</div>"].join(""),
		d = ['<div class="pay_state_box">', '<div class="state clearfix">', '<div class="yaya icons"></div>', '<div class="info">', "<h1>请您在新打开的页面上完成付款</h1>", "<p>付款完成前请不要关闭此窗口</p>", "<p>完成付款后请根据您的情况点击下面的按钮</p>", "</div>", "</div>", '<div class="btns">', '<a href="{{=it.payDone}}" class="pay_done icons">已完成付款</a>', '<a href="{{=it.payChange}}" target="_blank" class="pay_change icons">更换支付方式</a>', "</div>", '<div class="more">', '<p class="tag mb10"><a href="javascript:;" id="J_PayQuestion" class="J_PayQuestion pay_question">支付遇到问题<b class="icons"></b></a><span class="split">|</span><a href="javascript" id="J_PayContact" class="mogutalk_btn" data-bid="14ejg#101" data-from="payfinish">蘑菇街客服</a></p>', '<div class="question_content" id="J_PayQuestionCon">', "<p>1、网上支付显示不成功</p>", '<p class="indent">• 支付密码错误&nbsp;&nbsp;&nbsp;&nbsp;• 银行余额不足&nbsp;&nbsp;&nbsp;&nbsp;• 银行卡未开通网上支付功能</p>', '<p class="indent mb5">• 所需支付金额超过了银行支付限额，建议您登陆网上银行提高上限额度</p>', "<p>2、网银页面显示错误或空白</p>", '<p class="indent mb5">部分网银对不同浏览器的兼容有限，导致无法正常支付，建议您使用IE浏览器进行支付操作。</p>', "<p>3、银行提示扣款成功，蘑菇街订单仍显示“未付款”</p>", '<p class="indent mb5">可能由于银行的数据没有即时传输，请不要担心，稍后刷新页面查看。如较长时间仍显示未付款，请联系蘑菇街客服人员。为您解决。</p>', '<p class="tr"><a href="/trade/faq/detail?id=1ec&type=1" target="_blank" class="underline">>>>更多问题</a></p>', "</div>", "</div>", "</div>"].join(""),
		h = function(a) {
			var t = "/trade/order/list4buyer";
			return -1 != location.href.indexOf("/trade/item/checkgoods") ? t = "/trade/item/checkgoods" : a && (t = "/trade/order/payremind?id=" + a), MGTOOL.template(d, {
				payDone: t,
				payChange: "/trade/orderpay/index?orderId=" + a
			})
		},
		g = ['<div class="content">', "<p>支付中遇到问题？</p>", "<p>你可以尝试重新付款；<br>或者查看支付常见问题，获取更多帮助。</p>", '<div class="subbox">', '<a href="javascript:;" class="fail_finish"></a>', '<a href="/haigou/help#ha=help_con8" class="fail_wrong"></a>', "</div>", "</div>"].join("");
	t(), i(), a(".pay").click(function(t) {
		var i = a(this),
			s = i.attr("href"),
			c = {
				href: s,
				ishide: !1
			};
		c.PayType = 2, i.attr("data-isonlyweixin") && (c.ishide = !0), i.attr("data-weixinpay") && (c.weixinpay = !0), i.attr("data-hashgproduct") && (c.hashgproduct = !0, c.PayType = 2);
		var o = doT.template(n)(c);
		if(i.hasClass("canchinapay")) {
			t.preventDefault();
			var p = {
				title: " ",
				lightBoxId: "lbg",
				contentHtml: o,
				scroll: !0
			};
			r = new MGLightBox(p), r.init(), e()
		}
	}), a(".chosepay").live("click", function() {
		a(this);
		r.close();
		var t = {
			title: "请付款",
			lightBoxId: "lbg",
			contentHtml: l,
			scroll: !0
		};
		r = new MGLightBox(t), r.init()
	}), a(".pay_quick_btn").click(function() {
		var t = a(this);
		if(t.hasClass("pay_final") && !confirm("此订单订金正在申请退款，如支付尾款，订金退款申请将自动取消，是否继续")) return !1;
		var i = {
			title: "请付款",
			lightBoxId: "lbg",
			contentHtml: h(t.parents(".order_section").attr("data-id")),
			scroll: !1
		};
		r = new MGLightBox(i), r.init()
	}), s.prototype = {
		init: function() {
			this._calcul(this.opts.timeleft)
		},
		_calcul: function(a) {
			var t = this;
			if(this.loop && clearTimeout(this.loop), 0 == a) return void(this.opts.callback && "function" == typeof this.opts.callback && this.opts.callback());
			var i = 1,
				e = 60,
				s = 3600,
				c = 86400,
				o = parseInt(a / c),
				r = parseInt(a / s) - 24 * o,
				n = this.formatNum(parseInt(a / e) - 60 * parseInt(a / s)),
				p = this.formatNum(parseInt(a / i) - 60 * parseInt(a / e));
			this.opts.day.text(o), this.opts.hour.text(r), this.opts.minute.text(n), this.opts.second.text(p), a -= 1, this.loop = setTimeout(function() {
				t._calcul(a)
			}, 1e3)
		},
		formatNum: function(a) {
			return 10 > a && (a = "0" + a), a
		},
		defaults: {
			timeleft: 0,
			day: null,
			hour: null,
			minute: null,
			second: null,
			callback: null
		}
	}, o(), a(".order_list").on("click", ".o_close", function() {
		return confirm("确认关闭?") && c(a(this).parents(".order_section").attr("data-id")), !1
	})
}(jQuery),
function(a) {
	function t(t) {
		a.browser.msie && "6.0" == a.browser.version && !a.support.style && this.hover(t)
	}
	t.prototype.hover = function(t) {
		var i = a(t);
		i.hover(function() {
			a(this).addClass("hover")
		}, function() {
			a(this).removeClass("hover")
		})
	}, new t(a(".order_table_wrap"))
}(jQuery),
function(a) {
	a(".o_del").click(function() {
		confirm("是否确认删除订单") && MOGU.Defult_Post_data(a(this))
	})
}(jQuery),
function(a) {
	if(a("#getCouponTip").size() > 0) {
		if(a("#lbg").size() > 0) return;
		var t = '<div class="get_coupon_tip_box"><a href="javascript:;" class="btn_close"></a><p>恭喜菇凉成功领取<br><span>满50元减10元现金券一张</span></p><a href="/trade/promotion/user/cashcoupon" class="btn_look_coupon"></a><a href="/book/elegant/" class="btn_shopping"></a></div>',
			i = {
				title: "",
				lightBoxId: "getCouponDialog",
				contentHtml: t,
				scroll: !0
			},
			e = new MGLightBox(i);
		e.init(), a("#getCouponDialog").on("click", "a", function() {
			a.get("/webapp/event0303/traceClick", {
				userId: a("#getCouponTip").val()
			}), e.close()
		})
	}
}(jQuery),
function(a) {
	a(document).on("click", ".J_back_money", function(t) {
		t.preventDefault();
		var i = a(this),
			e = i.data("key"),
			s = i.attr("href"),
			c = s.replace("select", "request");
		return a.post("/trade/refund/showchoice ", {
			orderId: i.attr("data-orderid")
		}, function(t) {
			if(1001 === t.status.code)
				if(1 == t.result.returntomgj) {
					var i = ['<div class="lbox_show">', '<div class="content">', '<div class="back_goods clearfix">', '<a href="' + c + "&received=gf&key=" + e + '" target="_blank" class="mr_a">', '<div class="back_mogujie">', '<p class="t_a">退货给蘑菇街</p>', '<p class="t_b">退给蘑菇街做商家的抽检样品</p>', "</div>", "</a>", '<a href="' + s + '&received=true" target="_blank">', '<div class="back_seller">', '<p class="t_a">退货给商家</p>', '<p class="t_b">退给商家</p>', "</div>", "</a>", "</div>", '<div class="back_rmb">', '<a href="' + s + '&received=false" target="_blank">不退货，我要退款</a>', "</div>", "</div>", "</div>"].join(""),
						o = {
							title: "退货退款",
							lightBoxId: "lb_back_goods",
							contentHtml: i,
							scroll: !0
						},
						r = new MGLightBox(o);
					r.init(), a("#lb_back_goods").on("click", "a", function() {
						setTimeout(function() {
							r.close()
						}, 1e3)
					}), a.post("/trade/mgrefund/click", {
						orderId: s
					})
				} else window.location.href = s
		}, "json"), !1
	})
}(jQuery, window),
function(a) {
	a(document).on("click", "#J_PayQuestion", function() {
		a(this).find("b").toggleClass("c"), a("#J_PayQuestionCon").toggle()
	}).on("click", "#J_PayContact", function() {
		a("#lbg").remove(), a(".light_box_fullbg").remove()
	})
}(jQuery),
function(a) {
	if(~location.pathname.indexOf("order")) {
		var t = "background: url(http://s6.mogujie.cn/pic/140623/18rm5b_kq2ew3tykrbfcwsugfjeg5sckzsew_123x200.png) no-repeat; _background: url(http://s6.mogujie.cn/pic/140624/18rm5b_kq2gmokzkrbdis2ugfjeg5sckzsew_123x200.png) no-repeat; position: fixed; _position: absolute; width: 123px; height: 200px; margin-top:110px; margin-left: 980px; _margin-left: 20px; _top: expression(documentElement.scrollTop ? documentElement.scrollTop + documentElement.clientHeight / 3: document.body.scrollTop + document.body.clientHeight / 3);",
			i = '<div style="' + t + '" ><img src="http://s6.mogujie.cn/pic/140626/18rm5b_kq2eu3sxkrbhmrcugfjeg5sckzsew_300x300.png" style="width: 99px; height: 99px; position: absolute; margin: 59px 0 0 13px; "><p style="margin-top: 165px; text-align: center; color: #818181;">随时掌控宝贝动向</p></div>';
		$muWrap = a(".mu_wrap"), $muWrap.length && $muWrap.append(i)
	}
}(jQuery),
function(a) {
	if(~location.pathname.indexOf("order") && !(a(".coupon_prompt_wrap").length > 0)) {
		var t, i, e = {
				"class": "m-safe-lession-pop-wrap",
				dom: '<div class="m-safe-lession-pop-wrap"><a href="http://www.mogujie.com/group/topic/110k6w?from=orderlist" target="_blank"><img src="http://s6.mogucdn.com/pic/140916/ubzlo_ieydqzbwmqzwknbvmmytambqhayde_185x104.png" width="185" height="104"></a><a href="javascript:;" class="J_btnClose close_btn"></a></div>'
			},
			s = {
				"class": "m-wallet-charge-pop-wrap",
				dom: '<div class="m-wallet-charge-pop-wrap"><a href="http://www.mogujie.com/act/1015walletcge?from=orderlist" target="_blank"><img src="//s6.mogucdn.com/pic/141023/ubzlo_ieydoyrqmq4tqmrrmqytambqmeyde_223x149.png" width="223" height="149"></a><a href="javascript:;" class="J_btnClose close_btn"></a></div>'
			},
			c = {
				"class": "m-wallet-duoshou-pop-wrap",
				dom: '<div class="m-wallet-duoshou-pop-wrap"><a href="http://www.mogujie.com/trade/credit/indexv2/chophand?from=orderlist" target="_blank"><img src="//s8.mogucdn.com/pic/141024/ubzlo_ieydcodemjtgiobrmqytambqmeyde_300x185.png" width="300" height="185"></a><a href="javascript:;" class="J_btnClose close_btn"></a></div>'
			},
			o = a(".J_footertimer").attr("data-svrtime"),
			r = 1413770400,
			n = 1414375200,
			p = 1414375200,
			l = 1414771199;
		o && !isNaN(o) && +o >= r && n > +o ? (t = a(s.dom), i = s["class"]) : o && !isNaN(o) && +o >= p && l > +o ? (t = a(c.dom), i = c["class"]) : (t = a(e.dom), i = e["class"]), a("." + i).length <= 0 && (a("body").append(t), t.on("click", function() {
			t.remove()
		}))
	}
}(jQuery);