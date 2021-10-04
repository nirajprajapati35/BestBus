/*
 * @overview underscore - JavaScript's utility _ belt
 * @copyright Copyright (c) 2009-2016 Jeremy Ashkenas, DocumentCloud and Investigative Reporters & Editors
 * @license   Licensed under MIT license
 *            See https://raw.githubusercontent.com/jashkenas/underscore/master/LICENSE
 * @version   1.8.0
 */
! function() {
    var a = function b(c, d, e) {
        function f(h, i) {
            if (!d[h]) {
                if (!c[h]) {
                    var j = "function" == typeof a && a;
                    if (!i && j) return j(h, !0);
                    if (g) return g(h, !0);
                    var k = new Error("Cannot find module '" + h + "'");
                    throw k.code = "MODULE_NOT_FOUND", k
                }
                var l = d[h] = {
                    exports: {}
                };
                c[h][0].call(l.exports, function(a) {
                    var b = c[h][1][a];
                    return f(b ? b : a)
                }, l, l.exports, b, c, d, e)
            }
            return d[h].exports
        }
        for (var g = "function" == typeof a && a, h = 0; h < e.length; h++) f(e[h]);
        return f
    }({
        1: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("./browser.js"),
                f = function() {
                    return this instanceof f ? void this.init() : new f
                };
            f.prototype.init = function() {
                this.data = {}, this.dead = !1
            }, f.prototype.event = function(a) {
                return d.isObject(a) ? (d.assert(a.event, "a.event no event"), d.assert(a.listener, "a.event no listener"), [a.event, a.listener].join(".")) : a
            }, f.prototype.add = function(a, b, c, d) {
                c = c === !0 ? !0 : !1, a = this.event(a);
                var e = {
                    func: b,
                    one: c,
                    ctx: d
                };
                return this.data.hasOwnProperty(a) ? this.data[a].push(e) : this.data[a] = [e], this
            }, f.prototype.on = function(a, b, c) {
                return this.add(a, b, !1, c)
            }, f.prototype.off = function(a, b) {
                if (!this.data.hasOwnProperty(a)) return this;
                var c = d.reduce(this.data[a], function(a, c) {
                    return d.isNone(b) || c.func !== b ? d.isNone(b) ? a : (a.push(c), a) : a
                }, []);
                return 0 === c.length ? delete this.data[a] : this.data[a] = c, this
            }, f.prototype.one = function(a, b, c) {
                return this.add(a, b, !0, c)
            }, f.prototype.get = function(a, b, c, e) {
                d.isFunction(b) && (c = b, b = {}, c && (e = c)), b || (b = {}), d.assert(c), b.hasOwnProperty("listener") || (b.listener = "l" + d.getUUID()), this.one({
                    event: a,
                    listener: b.listener
                }, c, e), this.notify(a, b)
            }, f.prototype.notify = function() {
                if (this.dead) return !1;
                var a = Array.prototype.slice.call(arguments, 0);
                if (0 === a.length) return this;
                var b = this.event(a.splice(0, 1)[0]);
                if (!this.data.hasOwnProperty(b)) return this;
                var c, f = [],
                    g = [];
                return d.each(this.data[b], function(a) {
                    g.push(a), a.one === !1 && f.push(a)
                }), 0 === f.length ? delete this.data[b] : this.data[b] = f, d.each(g, function(f) {
                    try {
                        c = d.isNone(f.ctx) ? this : f.ctx, f.func.apply(c, a)
                    } catch (g) {
                        e.console.error(b, a, g)
                    }
                }, this), this
            }, f.prototype.listeners = function(a) {
                return d.reduce(this.data, function(b, c, d) {
                    var e = d.split(".");
                    return 2 === e.length && e[0] === a && b.push(e[1]), b
                }, [])
            }, f.prototype.clear = function() {
                this.dead = !0, this.data = {}
            }, b.exports = f
        }, {
            "./browser.js": 4,
            "./utils.js": 30
        }],
        2: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("./browser.js"),
                f = a("conf"),
                g = {};
            g.random = function(a) {
                return Math.floor(Math.random() * a)
            }, g.safeCreateQuery = function(a) {
                var b = d.map(a, function(a, b) {
                    return b + "=" + ("urls" === b ? a : encodeURIComponent(a))
                });
                return b.sort(), b.join("&")
            }, g.Keeper = function(a, b) {
                this.init(a, b)
            }, g.Keeper.prototype = {
                init: function(a, b) {
                    this.urls = a, this.count = 0, this.results = {}, this.callback = b
                },
                each: function(a) {
                    if (this.results[a.original_url] = a, this.count++, this.count === this.urls.length) {
                        var b = d.map(this.urls, function(a) {
                            return this.results[a]
                        }, this);
                        this.callback(b)
                    }
                    return this
                }
            }, g.ajax = function(a, b, c, e) {
                var f = new XMLHttpRequest,
                    g = e ? "POST" : "GET";
                if ("withCredentials" in f) f.open(g, a, !0), c && d.map(c, function(a, b) {
                    f.setRequestHeader(b, a)
                }), f.setRequestHeader("Accept", "application/json"), f.onreadystatechange = function() {
                    4 === f.readyState && (200 === f.status ? b && b(JSON.parse(f.responseText)) : b && b({
                        type: "error"
                    }))
                };
                else {
                    if ("undefined" == typeof XDomainRequest) return b({
                        type: "error"
                    }), !1;
                    f = new XDomainRequest, f.open(g, a), f.onload = function() {
                        b && b(JSON.parse(f.responseText))
                    }, f.onerror = function() {
                        b({
                            type: "error"
                        })
                    }, f.onprogress = function() {}
                }
                f.send(e ? e : null)
            }, g.API = function(a) {
                this.init(a)
            }, g.API.prototype.init = function(a) {
                d.isString(a) ? this.key = a : d.isNone(a) || (this.key = a.key), this.key = this.key ? this.key : f.EMB_API_KEY, this.protocol = "http:" === window.location.protocol ? "http:" : "https:"
            }, g.API.prototype._buildUrl = function(a, b) {
                if (d.isNone(this.key)) return null;
                var c = this.protocol + "//api-cdn.embed.ly/" + a;
                return b = b ? b : {}, b.key || (b.key = this.key), c + "?" + g.safeCreateQuery(b)
            }, g.API.prototype._data = function(a, b, c, f) {
                if (e.console.log(a, b, c, f), d.isNone(f) && d.isFunction(c) && (f = c, c = {}), d.isNone(f)) return !1;
                if (d.isString(b)) {
                    c.url = b;
                    var h = this._buildUrl(a, c);
                    return g.ajax(h, function(a) {
                        a.url = b, f(a)
                    }), !0
                }
                if (d.isArray(b)) {
                    if (0 === b.length) return !1;
                    var i = new g.Keeper(b, f),
                        j = d.batch(b, 10),
                        k = function(a, b) {
                            return function(c) {
                                d.each(b, function(b, d) {
                                    var e = c[d];
                                    e.original_url = b, a.each(e)
                                })
                            }
                        };
                    return d.each(j, function(b) {
                        c.urls = d.map(b, function(a) {
                            return encodeURIComponent(a)
                        }).join(",");
                        var e = this._buildUrl(a, c);
                        g.ajax(e, k(i, b))
                    }, this), !0
                }
                return f({
                    type: "error"
                }), !1
            }, g.API.prototype.oembed = function(a, b, c) {
                return this._data("1/oembed", a, b, c)
            }, g.API.prototype.extract = function(a, b, c) {
                return this._data("1/extract", a, b, c)
            }, g.API.prototype.card = function(a, b, c) {
                return this._data("1/card-details", a, b, c)
            }, g.API.prototype.event = function(a, b) {
                var c = "api-" + g.random(10) + ".embed.ly",
                    d = this.protocol + "//" + c + "/1/e",
                    e = d + "?" + g.safeCreateQuery(a);
                g.ajax(e, b)
            }, g.Display = function() {}, g.Display.prototype._buildUrl = function(a, b, c) {
                var e = {
                        key: f.EMB_API_KEY,
                        url: b
                    },
                    h = d.extend(e, d.isNone(c) ? {} : c),
                    i = "://i-cdn.embed.ly/1/display" + ("display" === a ? "" : "/" + a);
                return (f.EMB_HTTPS ? "https" : "http") + i + "?" + g.safeCreateQuery(h)
            }, g.Display.prototype.display = function(a, b) {
                return this._buildUrl("display", a, b)
            }, g.Display.prototype.crop = function(a, b) {
                return this._buildUrl("crop", a, b)
            }, g.Display.prototype.resize = function(a, b) {
                return this._buildUrl("resize", a, b)
            }, g.api = function(a) {
                return new g.API(a)
            }, g.display = function() {
                return new g.Display
            }, b.exports = g
        }, {
            "./browser.js": 4,
            "./utils.js": 30,
            conf: "conf"
        }],
        3: [function(a, b, c) {
            var d = a("./utils"),
                e = a("./urlparse.js"),
                f = {
                    disallowed: ["1kd60cb"]
                };
            f.allowed = function(a) {
                if (!a) return !0;
                var b = e.getDomain(a);
                if (!b) return !0;
                var c = d.fullHash(b);
                return -1 === f.disallowed.indexOf(c)
            }, b.exports = f
        }, {
            "./urlparse.js": 29,
            "./utils": 30
        }],
        4: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("./dom.js"),
                f = a("./urlparse.js"),
                g = a("conf"),
                h = {};
            h.supports = {
                _test: function(a) {
                    var b = ["Webkit", "Moz", "O", "ms", "Khtml"],
                        c = document.createElement("div"),
                        e = a.charAt(0).toUpperCase() + a.substr(1),
                        f = [a];
                    d.each(b, function(a) {
                        f.push(a + e)
                    });
                    for (var g = 0; g < f.length; g++)
                        if ("" === c.style[f[g]]) return !0;
                    return !1
                },
                postMessage: function() {
                    return !!window.postMessage
                },
                boxShadow: function() {
                    return h.supports._test("boxShadow")
                },
                borderRadius: function() {
                    return h.supports._test("borderRadius")
                },
                touch: function() {
                    return !!("ontouchstart" in window)
                },
                svg: function() {
                    return !!document.createElementNS && !!document.createElementNS("http://www.w3.org/2000/svg", "svg").createSVGRect
                },
                mediaQuery: function() {
                    return !("undefined" == typeof window.matchMedia && "undefined" == typeof window.msMatchMedia)
                },
                rgba: function() {
                    var a = document.createElement("div"),
                        b = a.style.color;
                    try {
                        a.style.color = "rgba(1,5,13,0.44)"
                    } catch (c) {}
                    return a.style.color !== b
                },
                cors: function() {
                    if ("undefined" == typeof XMLHttpRequest) return !1;
                    var a = new XMLHttpRequest;
                    return "withCredentials" in a ? !0 : "undefined" != typeof XDomainRequest ? !0 : !1
                },
                flash: function() {
                    if ("undefined" != typeof navigator.plugins && 0 !== navigator.plugins.length) return !!navigator.plugins["Shockwave Flash"];
                    try {
                        return !!new ActiveXObject("ShockwaveFlash.ShockwaveFlash")
                    } catch (a) {
                        return !1
                    }
                },
                canvas: function() {
                    var a = document.createElement("canvas");
                    return !(!a.getContext || !a.getContext("2d"))
                }
            }, h.detect = function() {
                var a = function(a, b) {
                    b ? e.addClass(document.body, a) : e.addClass(document.body, "no-" + a)
                };
                a("touch", h.supports.touch()), a("boxshadow", h.supports.boxShadow()), a("borderradius", h.supports.borderRadius()), a("rgba", h.supports.rgba()), a("mediaquery", h.supports.mediaQuery())
            }, h.console = {
                _log: function(a, b) {
                    if ((g.EMB_DEBUG || window.EMB_DEBUG) && !d.isNone(window.console) && window.console && window.console[a])
                        if (window.console[a].apply) window.console[a].apply(window.console, b);
                        else {
                            var c = Array.prototype.join.call(b, ", ");
                            window.console[a](c)
                        }
                },
                log: function() {
                    this._log("log", arguments)
                },
                error: function() {
                    this._log("error", arguments)
                }
            }, h.open = function(a, b, c, e, f, g) {
                if (d.isNone(f) || d.isNone(g)) {
                    var i = h.window.center(c, e);
                    f = i.top, g = i.left
                }
                var j = window.open(a, b, "scrollbars=no, resizable=1, width=" + c + ", height=" + e + ", top=" + f + ", left=" + g);
                window.focus && j.focus()
            }, h.cookie = {
                set: function(a, b, c, d) {
                    var e = "";
                    if (c) {
                        var f = new Date;
                        f.setTime(f.getTime() + 24 * c * 60 * 60 * 1e3), e = "; expires=" + f.toGMTString()
                    }
                    document.cookie = a + "=" + b + e + "; path=/" + (d ? "; secure" : "")
                },
                get: function(a) {
                    for (var b = a + "=", c = document.cookie.split(";"), d = 0; d < c.length; d++) {
                        for (var e = c[d];
                            " " === e.charAt(0);) e = e.substring(1, e.length);
                        if (0 === e.indexOf(b)) return e.substring(b.length, e.length)
                    }
                    return null
                },
                del: function(a) {
                    h.cookie.set(a, "", -1)
                }
            }, h.window = {
                innerHeight: function() {
                    return d.isNone(window.innerHeight) ? document.documentElement.clientHeight : window.innerHeight
                },
                innerWidth: function() {
                    return d.isNone(window.innerWidth) ? document.documentElement.clientWidth : window.innerWidth
                },
                scrollY: function() {
                    return d.isNone(window.pageYOffset) ? (document.documentElement || document.body.parentNode || document.body).scrollTop : window.pageYOffset
                },
                center: function(a, b) {
                    var c = void 0 !== window.screenLeft ? window.screenLeft : screen.left,
                        d = void 0 !== window.screenTop ? window.screenTop : screen.top,
                        e = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width,
                        f = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height,
                        g = e / 2 - a / 2 + c,
                        h = f / 2 - b / 2 + d;
                    return {
                        left: g,
                        top: h
                    }
                }
            }, h.location = {
                hash: function() {
                    var a = window.location.href.split("#");
                    return 2 === a.length ? a[1] : ""
                },
                params: function() {
                    return d.extend({}, f.parseQuery(document.location.search), f.parseQuery(h.location.hash()))
                }
            }, h.mobile = function() {
                return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)
            }, h.isIE = function() {
                return /msie|trident/i.test(navigator.userAgent)
            }, h.isFirefox = function() {
                return /firefox/i.test(navigator.userAgent)
            }, h.isPhantom = function() {
                return /phantomjs/i.test(navigator.userAgent)
            }, h.isSafari = function() {
                return /safari/i.test(navigator.userAgent) && !/chrome/i.test(navigator.userAgent)
            }, h.language = function() {
                return window.navigator.userLanguage || window.navigator.language
            }, h.animateScroll = function(a, b) {
                var c, d, f = h.window.scrollY(),
                    g = a - f,
                    i = (new Date).getTime(),
                    j = !1;
                b = b ? b : 500;
                var k = Math.round(g / b * 10),
                    l = function(b) {
                        return b > a
                    };
                0 > k && (l = function(b) {
                    return a > b
                });
                var m = function() {
                    clearInterval(c), h.console.log("duration", (new Date).getTime() - i), e.detachEvent("scroll", d)
                };
                c = setInterval(function() {
                    return f += k, l(f) ? (m(), !1) : (window.scrollTo(0, f), void(j = !0))
                }, 10), d = function() {
                    j && f !== h.window.scrollY() && m()
                }, e.addEvent("scroll", d)
            }, h.isSandboxIframe = function() {
                if (window.parent === window) return !1;
                try {
                    var a = window.frameElement;
                    return !a.src
                } catch (b) {
                    return !1
                }
                return !1
            }, b.exports = h
        }, {
            "./dom.js": 7,
            "./urlparse.js": 29,
            "./utils.js": 30,
            conf: "conf"
        }],
        5: [function(a, b, c) {
            var d = !1,
                e = /xyz/.test(function() {
                    xyz
                }) ? /\b_super\b/ : /.*/,
                f = function() {};
            f.extend = function(a) {
                function b() {
                    !d && this.init && this.init.apply(this, arguments)
                }
                var c = this.prototype;
                d = !0;
                var f = new this;
                d = !1;
                for (var g in a) f[g] = "function" == typeof a[g] && "function" == typeof c[g] && e.test(a[g]) ? function(a, b) {
                    return function() {
                        var d = this._super;
                        this._super = c[a];
                        var e = b.apply(this, arguments);
                        return this._super = d, e
                    }
                }(g, a[g]) : a[g];
                return b.prototype = f, b.prototype.constructor = b, b.extend = arguments.callee, b
            }, b.exports = f
        }, {}],
        6: [function(a, b, c) {
            var d = a("./iframes/comms.js").one,
                e = a("./utils.js"),
                f = {
                    started: !1,
                    instance: null
                };
            f.EVENTS = ["xcomm.options.access", "xcomm.media.recommend", "xcomm.card.recommend", "xcomm.user.set", "xcomm.user.get", "xcomm.user.remove", "xcomm.log.event", "xcomm.page.progress"], f.clear = function() {
                f.instance && (f.instance.remove(), f.instance = null), f.started = !1
            }, f.connect = function(a, b) {
                if (!a || f.started) return !1;
                f.started = !0;
                var c = d(a, b);
                return f.instance = c, e.each(f.EVENTS, function(b) {
                    c.on(b, function(c) {
                        var d = b;
                        c.listener && (d = {
                            event: b,
                            listener: c.listener
                        }), a.notify(d, c)
                    }), a.on(b, function(a) {
                        c.send(b, a)
                    })
                }), c.on("xcomm.ready", function(b) {
                    a.notify("xcomm.ready", b)
                }), c
            }, b.exports = f
        }, {
            "./iframes/comms.js": 13,
            "./utils.js": 30
        }],
        7: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("conf"),
                f = {};
            f.toArray = function(a) {
                return d.map(a, function(a) {
                    return a
                })
            }, f.all = function(a) {
                var b = [];
                return document.querySelectorAll ? f.toArray(document.querySelectorAll(a)) : b
            }, f.one = function(a, b) {
                var c = f.all(a, b);
                return 0 === c.length ? null : c[0]
            }, f.create = function(a, b, c, e) {
                if (!a || !d.isString(a)) return null;
                d.isString(b) && d.isNone(c) && (c = b, b = {});
                var g;
                return g = e ? document.createElementNS("http://www.w3.org/2000/svg", a) : document.createElement(a), d.each(b, function(a, b) {
                    g.setAttribute(b, a)
                }), c && f.text(g, c), g
            }, f.set = function(a, b, c) {
                if (!a || !d.isString(a)) return null;
                d.isString(b) && d.isNone(c) && (c = b, b = {});
                var e = f.one(a);
                return e ? (d.each(b, function(a, b) {
                    e.setAttribute(b, a)
                }), d.isNone(c) || f.text(e, c), e) : null
            }, f.replace = function(a, b) {
                d.assert(d.isElement(a), "replace requires an element to be replaced"), d.assert(d.isElement(b), "replace requires an element to replace with."), a.parentNode.replaceChild(b, a)
            }, f.remove = function(a) {
                return d.isElement(a) && d.isElement(a.parentNode) ? void a.parentNode.removeChild(a) : !1
            }, f.hide = function(a) {
                return d.isString(a) && (a = f.one(a)), d.isElement(a) && (a.style.display = "none"), a
            }, f.show = function(a, b) {
                return d.isString(a) && (a = f.one(a)), d.isElement(a) && (a.style.display = b ? "inline-block" : "block"), a
            }, f.svg = function(a, b, c) {
                return f.create(a, b, c, "http://www.w3.org/2000/svg")
            }, f.children = function(a, b) {
                return d.isElement(a) ? d.reduce(a.childNodes, function(a, c) {
                    if (d.isElement(c)) {
                        if (!d.isNone(b))
                            if (c.namespaceURI && "http://www.w3.org/2000/svg" === c.namespaceURI) {
                                if (c.nodeName !== b) return a
                            } else if (b.toUpperCase() !== c.nodeName) return a;
                        a.push(c)
                    }
                    return a
                }, []) : []
            }, f.child = function(a, b) {
                var c = f.children(a, b);
                return 0 !== c.length ? c[0] : null
            }, f.text = function(a, b) {
                if (d.isString(a) && (a = f.one(a)), !a || !d.isElement(a)) return null;
                if (d.isNone(b)) return a.innerText || a.textContent;
                var c = void 0 === a.textContent ? "innerText" : "textContent";
                a[c] = b
            }, f.hasClass = function(a, b) {
                if (d.isString(a) && (a = f.one(a)), !d.isElement(a) || !d.isString(b) || !b) return !1;
                var c = a.getAttribute("class");
                return d.isNone(c) ? !1 : (" " + c + " ").indexOf(" " + b + " ") > -1 ? !0 : !1
            }, f.addClass = function(a, b) {
                if (d.isString(a) && (a = f.one(a)), !d.isElement(a) || !d.isString(b) || !b) return !1;
                if (f.hasClass(a, b)) return !1;
                var c = a.getAttribute("class");
                if (d.isNone(c)) return a.setAttribute("class", b), !0;
                var e = c.split(" "),
                    g = [];
                return d.map(e, function(a) {
                    var b = d.trim(a);
                    "" !== b && g.push(b)
                }), g.push(b), a.setAttribute("class", g.join(" ")), !0
            }, f.removeClass = function(a, b) {
                if (d.isString(a) && (a = f.one(a)), !d.isElement(a) || !d.isString(b) || !b) return !1;
                var c = a.getAttribute("class");
                if (d.isNone(c)) return !1;
                var e = !1,
                    g = d.reduce(c.split(" "), function(a, c) {
                        var f = d.trim(c);
                        return f ? f === b ? (e = !0, a) : (a.push(f), a) : a
                    }, []);
                return a.setAttribute("class", g.join(" ")), e
            }, f.data = function(a, b, c) {
                d.assert(a && d.isElement(a), "dom.data needs an element."), d.assert(b && d.isString(b), "dom.data needs an attr.");
                var e = d.camelCase(b, 1);
                return d.isNone(c) ? d.isNone(a.dataset) ? a.getAttribute("data-" + b) : d.isNone(a.dataset[e]) ? null : a.dataset[e] : void(d.isNone(a.dataset) ? a.setAttribute("data-" + b, c) : a.dataset[e] = c)
            }, f.attrize = function(a) {
                return a && d.isObject(a) ? d.map(a, function(a, b) {
                    return b + '="' + a + '"'
                }).sort().join(" ") : ""
            }, f.event = function(a) {
                var b = d.extend({}, a || window.event);
                return b.target || (b.target = b.srcElement || document), 3 === b.target.nodeType && (b.target = b.target.parentNode), !a.metaKey && a.ctrlKey && (b.metaKey = b.ctrlKey), b.stop = function() {
                    a.preventDefault ? a.preventDefault() : a.returnValue = !1
                }, b.pageX || b.pageY || !b.clientX && !b.clientY || (b.pageX = b.clientX + document.body.scrollLeft + document.documentElement.scrollLeft, b.pageY = b.clientY + document.body.scrollTop + document.documentElement.scrollTop), b
            }, f.addEvent = function(a, b, c) {
                d.isNone(a) || (a.addEventListener ? a.addEventListener(b, c, !1) : a.attachEvent ? a.attachEvent("on" + b, c) : a["on" + b] = c)
            }, f.detachEvent = function(a, b, c) {
                d.isNone(a) || (a.removeEventListener ? a.removeEventListener(b, c, !1) : a.detachEvent ? a.detachEvent("on" + b, c) : a["on" + b] = null)
            }, f.trigger = function(a, b) {
                d.assert(d.contains(["click"], b), "Not a valid event");
                var c;
                a.dispatchEvent ? (c = document.createEvent("MouseEvents"), c.initEvent(b, !0, !0), a.dispatchEvent(c, !0)) : (c = document.createEventObject(), a.fireEvent("on" + b, c))
            }, f.rect = function(a) {
                try {
                    return a.getBoundingClientRect()
                } catch (b) {}
                return !1
            }, f.onResize = function(a) {
                var b;
                f.addEvent(window, "resize", function() {
                    clearTimeout(b), b = setTimeout(a, 100)
                })
            }, e.EMB_DEBUG === !0 && (window.dom = f), b.exports = f
        }, {
            "./utils.js": 30,
            conf: "conf"
        }],
        8: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("./swap.js"),
                f = a("./dom.js"),
                g = a("./mutations.js"),
                h = {
                    timeout: null,
                    hub: null,
                    selectors: {
                        cards: [{
                            selector: ".embedly-card"
                        }, {
                            selector: ".reddit-card"
                        }],
                        button: [".embedly-button"],
                        slideshow: [".embedly-slideshow"]
                    },
                    analytics: null,
                    _queue: []
                };
            h.add = {}, h.add.cards = function(a) {
                if (d.isString(a)) {
                    if (".embedly-card" === a) return !1;
                    h.selectors.cards.push({
                        selector: a
                    })
                } else if (!d.isElement(a) && d.isObject(a)) {
                    if (!a.selector && !a.types) return !1;
                    var b = {};
                    if (d.isArray(a.types) && a.types.length > 0 && (b.types = a.types), a.selector) b.selector = a.selector, h.selectors.cards.push(b);
                    else {
                        var c = h.selectors.cards.reduce(function(a, b) {
                            return ".embedly-card" === b.selector ? b : a
                        }, {});
                        if (!c) return !1;
                        c.types = b.types
                    }
                }
                h.look()
            }, h.add.button = function(a) {
                d.isString(a) && (h.selectors.button.push(a), h.look())
            }, h.select = function(a, b) {
                return "." === a.substr(0, 1) ? f.hasClass(b, a.substr(1)) ? !0 : !1 : d.contains(f.all(a), b) ? !0 : !1
            }, h.each = function(a) {
                var b, c;
                if ("A" === a.nodeName || "BLOCKQUOTE" === a.nodeName)
                    for (b = 0; b < h.selectors.cards.length; b++)
                        if (c = h.selectors.cards[b], h.select(c.selector, a)) return a._em_opts = c, {
                            name: "card",
                            node: a
                        };
                if ("A" === a.nodeName)
                    for (b = 0; b < h.selectors.button.length; b++)
                        if (h.select(h.selectors.button[b], a)) return {
                            name: "button",
                            node: a
                        };
                if ("DIV" === a.nodeName)
                    for (b = 0; b < h.selectors.slideshow.length; b++)
                        if (h.select(h.selectors.slideshow[b], a)) return {
                            name: "slideshow",
                            node: a
                        };
                if ("IFRAME" === a.nodeName) {
                    if ("embedly-embed" === a.className) return {
                        name: "iframe",
                        node: a
                    };
                    if (a.src && /\/\/cdn\.embedly\.com\/widgets\/media\.html/.test(a.src)) return {
                        name: "iframe",
                        node: a
                    };
                    if (null !== h.analytics && h.analytics.replace) {
                        var d = e.replace(a, h.analytics);
                        if (null !== d) return {
                            name: "iframe",
                            node: d
                        }
                    }
                }
                return null
            }, h.release = function() {
                var a = h._queue;
                h._queue = [], a = d.reduce(a, function(a, b) {
                    return d.contains(a, b) ? a : b.className && "embd-" === b.className.substr(0, 5) ? a : (a.push(b), a)
                }, []);
                var b = d.reduce(a, function(a, b) {
                    var c = h.each(b);
                    return c && a[c.name + "s"].push(c.node), a
                }, {
                    cards: [],
                    buttons: [],
                    slideshows: [],
                    iframes: []
                });
                h.hub.notify("found", b)
            }, h.queue = function(a) {
                clearTimeout(h.timeout), h._queue.push(a), h.timeout = setTimeout(function() {
                    h.release()
                }, 50)
            }, h.look = function() {
                d.each(h.selectors.cards, function(a) {
                    d.each(f.all(a.selector), function(a) {
                        h.queue(a)
                    })
                }), d.each(h.selectors.button, function(a) {
                    d.each(f.all(a), function(a) {
                        h.queue(a)
                    })
                }), d.each(h.selectors.slideshow, function(a) {
                    d.each(f.all(a), function(a) {
                        h.queue(a)
                    })
                }), d.each(f.all("iframe"), function(a) {
                    h.queue(a)
                }), h.hub && h.hub.notify("look.done")
            }, h.stop = function() {
                g.stop()
            }, h.connect = function(a) {
                h.hub = a, a.on("mutation.insert.a", h.queue), a.on("mutation.insert.blockquote", h.queue), a.on("mutation.insert.iframe", h.queue), g.connect(a), h.look()
            }, b.exports = h
        }, {
            "./dom.js": 7,
            "./mutations.js": 21,
            "./swap.js": 27,
            "./utils.js": 30
        }],
        9: [function(a, b, c) {
            b.exports = {
                cards: a("./cards.js"),
                button: a("./button.js"),
                modal: a("./modal.js"),
                slideshow: a("./slideshow.js"),
                comms: a("./comms.js"),
                connect: a("./base.js").connect
            }
        }, {
            "./base.js": 10,
            "./button.js": 11,
            "./cards.js": 12,
            "./comms.js": 13,
            "./modal.js": 14,
            "./slideshow.js": 15
        }],
        10: [function(a, b, c) {
            var d = a("../utils.js"),
                e = a("../dom.js"),
                f = a("../a.js"),
                g = a("../browser.js"),
                h = a("../urlparse.js"),
                i = a("conf"),
                j = {};
            j.connect = function(a, b, c) {
                if (!b || !d.isElement(b)) return !1;
                var i = {
                        sid: a,
                        elem: b
                    },
                    j = h.getOrigin(b.src ? b.src : document.location.toString()),
                    k = new f,
                    l = [],
                    m = !1,
                    n = b.src;
                i.on = function(a, b, c) {
                    k.on(a, b, c)
                }, i.one = function(a, b, c) {
                    k.one(a, b, c)
                }, i.off = function(a, b) {
                    k.off(a, b)
                }, i.send = function(a, b, c) {
                    if (d.isNone(b) && (b = {}), d.isString(b) && (b = {
                            msg: b
                        }), b.method = a, m === !1 && !c) return g.console.log("frame.queue", b), l.push(b), !1;
                    if (i.sid && (b.sid = i.sid), g.console.log("frame.send", b), i.__tunnel) i.__tunnel.send(b);
                    else if (i.elem.contentWindow && i.elem.contentWindow.postMessage) {
                        var e = JSON.stringify(b);
                        i.elem.contentWindow.postMessage(e, null === j ? "*" : j)
                    }
                }, i.ready = function() {
                    m || (g.console.log("frame.ready", i.name), m = !0, d.each(l, function(a) {
                        i.send(a.method, a)
                    }))
                }, i.resize = function(a) {
                    a.width && i.elem.setAttribute("width", a.width), a.height && i.elem.setAttribute("height", a.height)
                }, i.remove = function() {
                    e.remove(i.elem), i.__hub.clear(), i.__tunnel && i.__tunnel.clear(), i._remove && i._remove()
                }, k.on("message", function(a) {
                    "resize" === a.method && i.resize && i.resize(a), a.event && a.listener ? k.notify({
                        event: a.event,
                        listener: a.listener
                    }, a) : a.method && k.notify(a.method, a)
                });
                var o = function(a, b) {
                    if (a.origin === j || null === j || "about:" === a.origin) {
                        if (!b.src && !b.sid && !b.listener) return !1;
                        if (i.sid && b.sid !== i.sid) return !1;
                        if (b.src && b.src !== n) return !1;
                        g.console.log("frame.message", b), k.notify("message", b)
                    }
                };
                return c.on("window.message", o), i._remove = function() {
                    c.off("window.message", o)
                }, i.__hub = k, i
            }, j.rendering = function(a) {
                return "1" === e.data(a, "rendering") ? !0 : (e.data(a, "rendering", "1"), !1)
            }, j.create = function(a, b, c, f, g) {
                var h = d.getUUID();
                c.sid = h;
                var k = d.extend({}, f);
                c.sandbox === !1 && (k.src = i.EMB_FRAME_SRC + a + ".html#sid=" + h), c.url && (k.id = "emb_" + d.hash(c.url)), k["class"] = "embedly-" + a;
                var l = e.create("iframe", k);
                d.each(g, function(a, b) {
                    l.style[b] = a
                });
                var m = j.connect(h, l, b);
                return m.__appended = function() {}, c.sandbox === !1 ? m : (m.__appended = function() {
                    var b = l.contentWindow.document,
                        c = decodeURIComponent("%3C!DOCTYPE%20html%3E%3Chtml%3E%3Chead%3E%3C%2Fhead%3E%3Cbody%3E%3C%2Fbody%3E%3C%2Fhtml%3E");
                    b.open(), b.write(c), b.close();
                    var d = b.getElementsByTagName("head")[0],
                        e = i.EMB_ORIGIN_BASE + "js/all." + i.EMB_ASSET_VERSION + ".js",
                        f = i.EMB_ORIGIN_BASE + "css/all." + i.EMB_ASSET_VERSION + ".css",
                        g = b.createElement("script");
                    g.type = "text/javascript", g.src = e;
                    var h = b.createElement("link");
                    h.type = "text/css", h.rel = "stylesheet", h.href = f, m.__hub.notify(a + ".load", l, b), d.appendChild(h), b.body.appendChild(g)
                }, m)
            }, b.exports = j
        }, {
            "../a.js": 1,
            "../browser.js": 4,
            "../dom.js": 7,
            "../urlparse.js": 29,
            "../utils.js": 30,
            conf: "conf"
        }],
        11: [function(a, b, c) {
            var d = a("../utils.js"),
                e = a("../browser.js"),
                f = a("../dom.js"),
                g = a("./base.js"),
                h = a("../tunnels.js"),
                i = {
                    name: "button",
                    attrs: {
                        frameborder: "0",
                        scrolling: "no",
                        allowtransparency: "true",
                        height: "20",
                        width: "80"
                    },
                    styles: {
                        border: "none"
                    }
                };
            i.one = function(a, b) {
                if (!d.isElement(a)) return null;
                if (g.rendering(a)) return null;
                var c = f.data(a, "url");
                d.isNone(c) && (c = document.location.toString());
                var j, k = {
                    url: c
                };
                d.each(["theme", "target", "lang"], function(b) {
                    j = f.data(a, b), d.isNone(j) || (k[b] = j)
                });
                var l = e.window.center(635, 500);
                k.left = l.left, k.top = l.top;
                var m = g.create("button", b, k, i.attrs, i.styles);
                return m.one("button.load", function(a) {
                    var b = function(a, b) {
                            return function(c) {
                                a.__tunnel = new h.Tunnel(a.__hub), c.create(b, a.__tunnel)
                            }
                        },
                        c = b(m, k);
                    a.contentWindow.buttons ? c(a.contentWindow.buttons) : a.contentWindow.onButtonsReady = c
                }), f.replace(a, m.elem), m.__appended(), m.on("button.click", function() {
                    e.window.innerWidth() <= 768 || e.mobile() ? window.location = "http://embed.ly/code?url=" + encodeURIComponent(k.url) : b.notify("modal.create", k)
                }), m.on("button.ready", function() {
                    m.ready()
                }), m
            }, b.exports = i
        }, {
            "../browser.js": 4,
            "../dom.js": 7,
            "../tunnels.js": 28,
            "../utils.js": 30,
            "./base.js": 10
        }],
        12: [function(a, b, c) {
            var d = a("../api.js"),
                e = a("../utils.js"),
                f = a("../dom.js"),
                g = a("../urlparse.js"),
                h = a("../browser.js"),
                i = a("../keeper.js"),
                j = a("./base.js"),
                k = a("../share.js"),
                l = a("../tunnels.js"),
                m = {
                    attrs: {
                        frameborder: "0",
                        scrolling: "no",
                        allowtransparency: "true",
                        allowfullscreen: "true"
                    },
                    styles: {
                        width: "1px",
                        height: "0px",
                        border: "none",
                        position: "absolute",
                        visibility: "hidden"
                    },
                    extractless: /https:\/\/(\w+\.pinterest\.com\/.*)|(\w+\.reddit\.com\/r\/.*\/comments\/.*)/,
                    sandboxless: [{
                        re: /https?:\/\/\w+\.facebook\.com\/.*/
                    }, {
                        re: /https?:\/\/twitter\.com\/.*/,
                        test: function() {
                            return h.isFirefox()
                        }
                    }]
                };
            m.isPercent = function(a) {
                return /\%/i.test(a)
            }, m.cleanWidth = function(a) {
                a = e.trim(a);
                var b = /(\d+)px/i.exec(a);
                return b && (a = b[1]), a
            }, m.sandbox = function(a) {
                var b, c;
                for (b = 0; b < m.sandboxless.length; b++)
                    if (c = m.sandboxless[b], c.re.test(a)) return e.isFunction(c.test) ? !c.test(a) : !1;
                return !0
            }, m.css = function() {
                if ("undefined" != typeof m._css) return m._css;
                var a = f.one("style.embedly-css");
                if (e.isElement(a)) {
                    var b = f.text(a);
                    e.spaceless(b) && (m._css = "style:" + e.trim(b))
                } else {
                    var c = f.one("link.embedly-css");
                    e.isElement(c) && c.href && (m._css = "link:" + e.trim(c.href))
                }
                return m._css || (m._css = null), m._css
            }, m.options = function(a) {
                if (!e.isElement(a) || !e.isElement(a.parentNode)) return null;
                var b = {
                    sandbox: !0
                };
                e.each(["type", "via", "chrome", "image", "description", "key", "align", "embed", "controls", "analytics", "lang", "width", "referrer", "theme", "recommend", "branding", "seo", "preview", "comment", "created"], function(c) {
                    var d = f.data(a, "card-" + c);
                    e.isNone(d) || (b[c] = d)
                });
                var c = m.css();
                if (c && (b.css = c), e.each(["recommend-1", "recommend-2", "recommend-3"], function(c) {
                        var d = f.data(a, "card-" + c);
                        e.isNone(d) || (b.hasOwnProperty("recommendations") ? b.recommendations.push(d) : b.recommendations = [d])
                    }), "BLOCKQUOTE" === a.nodeName) {
                    var d, h, i = f.child(a, "h4"),
                        j = f.child(a, "p");
                    if (e.isNone(i)) {
                        if ("reddit-card" === a.className) {
                            if (h = f.toArray(a.querySelectorAll("a")), h.length > 0) {
                                if (d = h[0], !d || !d.href) return !1;
                                b.url = d.href
                            }
                        } else if (j) {
                            if (h = a.getElementsByTagName("a"), 0 === h.length) return !1;
                            d = h[h.length - 1], b.url = d.getAttribute("href")
                        }
                    } else d = f.child(i, "a"), b.url = d.getAttribute("href"), b.title = f.text(d), e.isNone(j) ? b.description = "0" : b.description = f.text(j)
                } else "A" === a.nodeName && (b.url = a.getAttribute("href"));
                e.each(["url", "image", "embed"], function(a) {
                    b.hasOwnProperty(a) && (b[a] = g.sanitize(b[a]))
                });
                var k, l, n;
                if (e.each(document.getElementsByTagName("meta"), function(a) {
                        n = [a.getAttribute("name"), a.getAttribute("property")], e.contains(n, "twitter:site") ? l = a.getAttribute("content") : e.contains(n, "twitter:creator") && (k = a.getAttribute("content"))
                    }), k ? b.twitter_via = k : l && (b.twitter_via = l), !b.url) return null;
                var o = g.parse(b.url);
                return o.valid() ? (b.url = o.url, b.sandbox = m.sandbox(b.url), b.referrer || (b.referrer = document.URL), b.width && (b.width = m.cleanWidth(b.width)), /thescore\.com/.test(b.referrer) && (b.key = "900b122ee8ee43f79b2240c831f24429"), b) : null
            };
            var n = function(a, b, c, d) {
                this.init(a, b, c, d)
            };
            n.prototype.init = function(a, b, c, d) {
                if (this.elem = b, this.options = c, !c.url) return this.error = !0, this.frame = null, !1;
                this.error = !1, this.frame = m.build(b, c, a), this._done = d;
                var g = new i,
                    h = g.callback();
                this.frame.one("card.load", function(a, b) {
                    h({
                        iframe: a,
                        doc: b
                    })
                }), this._extract = g.callback(), this.extract = e.bind(function(a) {
                    return this.extracted ? !1 : (this.extracted = !0, void this._extract(a))
                }, this), c.embed && (this.media = g.callback());
                var j = b.parentNode;
                j && j.offsetWidth && (j.offsetWidth > 600 ? this.frame.elem.style.width = "600px" : this.frame.elem.style.width = j.offsetWidth + "px");
                var k = f.create("div", {
                        "class": "embedly-card"
                    }),
                    l = f.create("div", {
                        "class": "embedly-card-hug"
                    });
                k.appendChild(l), l.appendChild(this.frame.elem), j.insertBefore(k, b), this.frame.__appended(), g.wait(this.done, this)
            }, n.prototype.done = function(a) {
                var b = a[0].iframe,
                    c = a[0].doc,
                    d = a[1],
                    e = {};
                if (3 === a.length && (e = a[2].media), !this.frame.elem.parentNode) return !1;
                if (this.options.sandbox === !1) this.frame.ready(), this.frame.send("card.create", {
                    options: this.options,
                    extract: d,
                    media: e
                });
                else {
                    var f = function(a, b, d, f) {
                            return function(a) {
                                f.__tunnel = new l.Tunnel(f.__hub), a.create(c.body, {
                                    options: b,
                                    extract: d,
                                    media: e,
                                    tunnel: f.__tunnel
                                })
                            }
                        },
                        g = f(b, this.options, d, this.frame);
                    b.contentWindow.cards ? g(b.contentWindow.cards) : b.contentWindow.onCardsReady = g
                }
                this.frame.options = this.options, this.frame.extract = d, this._done(this.frame)
            }, m.fetch = function(a, b, c, f) {
                c = e.extend({}, c ? c : {}), c.protocol = window.location.protocol, c = e.map(b, function(a) {
                    return c.override === !0 ? e.extend({}, m.options(a), c) : e.extend({}, c, m.options(a))
                });
                var g = new i,
                    h = [];
                c = e.reduce(c, function(c, d, e) {
                    var f = new n(a, b[e], d, g.callback());
                    return m.extractless.test(d.url) ? f.extract({}) : f.error || c.push(d), h.push(f), c
                }, []);
                var j = e.reduce(c, function(a, b) {
                    return a.push(b.url), b.embed && a.push(b.embed), a
                }, []);
                if (!j.length) return e.isFunction(f) && f(e.map(h, function(a) {
                    return a.frame
                })), e.map(h, function(a) {
                    return a.frame
                });
                var k = {
                        card: 1,
                        v: "MTcyMDEw",
                        youtube_showinfo: 0,
                        "native": !0
                    },
                    l = e.reduce(c, function(a, b) {
                        return b.key && !a ? b.key : a
                    }, null);
                l && (k.key = l);
                var o = window.location.protocol;
                return c.protocol && (o = c.protocol), o = o.split(":")[0], e.contains(["http", "https"], o) || (o = "https"), k.scheme = o, d.api().card(j, k, function(a) {
                    e.each(a, function(a) {
                        e.each(h, function(b) {
                            b.options.url === a.original_url ? b.extract(a) : b.options.embed === a.original_url && b.media(a)
                        })
                    })
                }), g.wait(function(a) {
                    f(a)
                }), e.map(h, function(a) {
                    return a.frame
                })
            }, m.build = function(a, b, c) {
                var d = j.create("card", c, b, m.attrs, m.styles);
                return h.isFirefox() && (d.elem.style.visibility = "visible", d.elem.style.height = "1px"), d.on("card.repeat", function(a) {
                    var b = {
                        url: a.url,
                        via: document.location.toString()
                    };
                    e.each(["image", "embed", "title", "description", "lang"], function(c) {
                        a.hasOwnProperty(c) && (b[c] = a[c])
                    }), c.notify("modal.create", b)
                }), d.on("card.ready", function() {
                    d.ready()
                }), d.on("card.rendered", function(b) {
                    if (d.url = b.url, d.type = b.type, "error" === b.name) return d.__hub.notify("card.error", a), d.remove(), !1;
                    if (a._em_opts) {
                        var g = e.extend({}, a._em_opts);
                        if (delete a._em_opts, e.isArray(g.types) && g.types.length > 0 && !e.contains(g.types, b.type)) return d.__hub.notify("card.error", a), d.remove(), !1
                    }
                    d.rendered = !0, !d.options.twitter_via && b.defaultTwitterVia && (d.options.twitter_via = b.defaultTwitterVia);
                    var h = d.elem.parentNode;
                    d.elem.style.display = "block", d.elem.style.margin = "0", d.elem.style.padding = "0", d.elem.style.visibility = "visible", d.elem.style.position = "relative", b.height ? d.elem.height = b.height : d.elem.height = "300", b.width ? m.isPercent(b.width) ? (h.style.width = b.width, d.elem.width = "100%") : (d.elem.width = b.width, h.style.maxWidth = b.width + "px") : (d.elem.width = "600", h.style.maxWidth = "600px"), h.style.padding = "0", h.style.position = "relative", h.style.minWidth = "200px", "left" === b.align ? h.style.margin = "5px 0" : "right" === b.align ? h.style.margin = "5px 0 5px auto" : h.style.margin = "5px auto", d.elem.style.width = null, d.elem.style.height = null, d.elem.style.maxWidth = "100%", d.elem.style.minWidth = "200px", f.remove(a), "error" !== b.type && (c.notify("card.rendered", d.elem, d), b.controls && k.card(d))
                }), d.one("card.error", function(a) {
                    c.notify("card.error", a)
                }), d.on("resize", function() {
                    c.notify("card.resize", d.elem, d)
                }), d.on("log.event", function(a) {
                    c.notify("log.event", a)
                }), d.on("pinterest.log", function() {
                    c.notify("pinterest.log")
                }), d.on("card.player.ready", function() {
                    c.notify("card.player.ready", d)
                }), d.on("card.recommend.shown", function(a) {
                    c.notify("recommend.shown", d.elem, a)
                }), d
            }, m.multi = function(a, b, c, d) {
                return a = e.reduce(a, function(a, b) {
                    return j.rendering(b) ? a : (a.push(b), a)
                }, []), m.fetch(c, a, b, function(a) {
                    e.isFunction(d) && d(a)
                })
            }, m.one = function(a, b, c, d) {
                if (j.rendering(a)) return null;
                var f = m.fetch(c, [a], b, function(a) {
                    e.isFunction(d) && d(a[0])
                });
                return f[0]
            }, b.exports = m
        }, {
            "../api.js": 2,
            "../browser.js": 4,
            "../dom.js": 7,
            "../keeper.js": 17,
            "../share.js": 26,
            "../tunnels.js": 28,
            "../urlparse.js": 29,
            "../utils.js": 30,
            "./base.js": 10
        }],
        13: [function(a, b, c) {
            var d = a("../utils.js"),
                e = a("../dom.js"),
                f = a("../urlparse.js"),
                g = a("./base.js"),
                h = a("conf"),
                i = {
                    attrs: {
                        frameborder: "0",
                        allowtransparency: "true"
                    },
                    styles: {
                        border: "none",
                        position: "absolute",
                        top: "-9999em",
                        width: "10px",
                        height: "10px"
                    }
                };
            i.one = function(a, b) {
                var c = d.getUUID();
                d.assert(b.name), b = d.extend({
                    sid: c
                }, b ? b : {});
                var j = d.extend({}, i.attrs);
                j.id = "emb_xcomm", j["class"] = "embedly-xcomm", j.src = h.EMB_SECURE_FRAME_SRC + "xcomm.html#" + f.createQuery(b);
                var k = e.create("iframe", j);
                d.each(i.styles, function(a, b) {
                    k.style[b] = a
                });
                var l = g.connect(c, k, a);
                return l.on("xcomm.ready", function() {
                    l.ready()
                }), document.body.appendChild(k), l
            }, b.exports = i
        }, {
            "../dom.js": 7,
            "../urlparse.js": 29,
            "../utils.js": 30,
            "./base.js": 10,
            conf: "conf"
        }],
        14: [function(a, b, c) {
            var d = a("../utils.js"),
                e = a("../browser.js"),
                f = a("./base.js"),
                g = a("../tunnels.js"),
                h = {
                    name: "modal",
                    attrs: {
                        frameborder: "0",
                        allowtransparency: "true"
                    },
                    styles: {
                        border: "none",
                        position: "fixed",
                        top: "0",
                        left: "0",
                        bottom: "0",
                        right: "0",
                        width: "100%",
                        height: "100%",
                        zIndex: "2147483647"
                    }
                };
            h.one = function(a, b) {
                if (d.isNone(a) && (a = {
                        url: document.location.toString()
                    }), d.isNone(a.url) && (a.url = document.location.toString()), a.protocol = window.location.protocol, "window" === a.target) return e.open("http://cdn.embedly.com/widgets/embed?url=" + encodeURIComponent(a.url), "Embed Code", 635, 500), !1;
                a.t = "card";
                var c = f.create("modal", b, a, h.attrs, h.styles);
                return c.on("modal.load", function(b) {
                    var d = function(a, b) {
                            return function(c) {
                                a.__tunnel = new g.Tunnel(a.__hub), c.create(b, a.__tunnel)
                            }
                        },
                        e = d(c, a);
                    b.contentWindow.modals ? e(b.contentWindow.modals) : b.contentWindow.onModalsReady = e
                }), c.resize = function() {}, c.on("modal.close", function() {
                    document.body.style.overflow = "inherit", document.body.removeChild(c.elem)
                }), c.on("modal.ready", function() {
                    c.ready()
                }), c.one("modal.copy", function() {
                    b.notify("modal.copy", a)
                }), document.body.appendChild(c.elem), document.body.style.overflow = "hidden", c.__appended(), c
            }, b.exports = h
        }, {
            "../browser.js": 4,
            "../tunnels.js": 28,
            "../utils.js": 30,
            "./base.js": 10
        }],
        15: [function(a, b, c) {
            var d = a("../utils.js"),
                e = a("../api.js"),
                f = a("../dom.js"),
                g = a("../keeper.js"),
                h = a("./base.js"),
                i = a("../tunnels.js"),
                j = {
                    name: "slideshow",
                    attrs: {
                        frameborder: "0",
                        scrolling: "no",
                        allowtransparency: "true",
                        allowfullscreen: "true"
                    },
                    styles: {
                        width: "1px",
                        height: "0px",
                        border: "none",
                        position: "absolute",
                        visibility: "hidden"
                    },
                    opts: ["schema", "lang", "width", "align"]
                };
            j.options = function(a, b) {
                if (!d.isElement(a) || !d.isElement(a.parentNode)) return null;
                var c = d.reduce(j.opts, function(a, c) {
                    return b.hasOwnProperty(c) && (a[c] = b[c]), a
                }, b.options ? b.options : {});
                return d.reduce(j.opts, function(b, c) {
                    var e = f.data(a, "slideshow-" + c);
                    return d.isNone(e) || (b[c] = e), b
                }, c)
            }, j.urls = function(a, b) {
                return d.isArray(b.urls) && b.urls.length > 0 ? b.urls : d.reduce(f.children(a, "blockquote"), function(a, b) {
                    if ("BLOCKQUOTE" === b.nodeName) {
                        var c = f.child(b, "h4");
                        if (!d.isNone(c)) {
                            var e = f.child(c, "a");
                            d.isNone(e) || a.push(e.href)
                        }
                    }
                    return a
                }, [])
            }, j.fetch = function(a, b) {
                var c = {
                    card: 1,
                    v: 1
                };
                e.api().extract(a, c, function(a) {
                    b(a)
                })
            }, j.build = function(a, b, c) {
                var d = b[0].iframe,
                    e = b[0].doc,
                    f = b[1],
                    g = function(a, b, c) {
                        return function(d) {
                            a.__tunnel = new i.Tunnel(a.__hub), d.create(e.body, {
                                options: b,
                                extract: c,
                                tunnel: a.__tunnel
                            })
                        }
                    },
                    h = g(c, a, f);
                d.contentWindow.slideshows ? h(d.contentWindow.slideshows) : d.contentWindow.onSlideshowsReady = h
            }, j.one = function(a, b, c) {
                if (!d.isElement(a)) return null;
                if (b = b ? b : {}, h.rendering(a)) return null;
                var e = j.options(a, b),
                    i = j.urls(a, b);
                if (null === e || 0 === i.length) return null;
                var k = h.create("slideshow", c, e, j.attrs, j.styles),
                    l = new g,
                    m = l.callback(),
                    n = l.callback();
                return l.wait(function(a) {
                    j.build(e, a, k)
                }), k.on("slideshow.load", function(a, b) {
                    m({
                        iframe: a,
                        doc: b
                    })
                }), j.fetch(i, n), a.parentNode.insertBefore(k.elem, a), k.on("slideshow.ready", function() {
                    k.ready()
                }), k.on("slideshow.rendered", function(b) {
                    return k.ready(), "error" === b.name ? (k.remove(), k.__hub.notify("slideshow.error", a), !1) : (k.rendered = !0, k.elem.style.display = "block", k.elem.style.margin = "10px auto", k.elem.style.visibility = "visible", k.elem.style.position = "relative", k.elem.width = "700", b.height ? k.elem.height = b.height : k.elem.height = "500", b.width ? k.elem.width = b.width : k.elem.width = "700", k.elem.style.width = null, k.elem.style.height = null, k.elem.style.maxWidth = "99%", k.elem.style.minWidth = "300px", void f.remove(a))
                }), k.on("log.event", function(a) {
                    c.notify("log.event", a)
                }), k.__appended(), k
            }, b.exports = j
        }, {
            "../api.js": 2,
            "../dom.js": 7,
            "../keeper.js": 17,
            "../tunnels.js": 28,
            "../utils.js": 30,
            "./base.js": 10
        }],
        16: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("./class.js"),
                f = {
                    senders: [],
                    integrations: ["google", "kissmetrics", "mixpanel", "segment", "heap", "intercom"]
                };
            f.Sender = e.extend({
                init: function() {
                    this.sent = []
                },
                event: function(a, b, c) {
                    var e = d.reduce([a, b, c], function(a, b) {
                        return b && (a += b), a
                    }, "");
                    return d.contains(this.sent, e) ? !1 : (this.sent.push(e), void this.send(a, b, c))
                },
                send: function() {}
            }), f.GoogleAnalytics = f.Sender.extend({
                isValid: function() {
                    return window.ga && d.isFunction(window.ga)
                },
                send: function(a, b, c) {
                    window.ga("send", "event", "Embedly > " + a, b, c)
                }
            }), f.KissMetrics = f.Sender.extend({
                isValid: function() {
                    return window._kmq && d.isFunction(window._kmq.push)
                },
                send: function(a, b, c) {
                    window._kmq.push(["record", "Embedly > " + a + " > " + b, {
                        url: c
                    }])
                }
            }), f.Mixpanel = f.Sender.extend({
                isValid: function() {
                    return window.mixpanel && d.isFunction(window.mixpanel.push)
                },
                send: function(a, b, c) {
                    window.mixpanel.push(["track", "Embedly > " + a + " > " + b, {
                        url: c
                    }])
                }
            }), f.Segment = f.Sender.extend({
                isValid: function() {
                    return window.analytics && d.isFunction(window.analytics.track)
                },
                send: function(a, b, c) {
                    window.analytics.track("Embedly > " + a + " > " + b, {
                        url: c
                    })
                }
            }), f.Heap = f.Sender.extend({
                isValid: function() {
                    return window.heap && d.isFunction(window.heap.track)
                },
                send: function(a, b, c) {
                    window.heap.track("Embedly > " + a + " > " + b, {
                        url: c
                    })
                }
            }), f.Intercom = f.Sender.extend({
                isValid: function() {
                    return window.Intercom && d.isFunction(window.Intercom)
                },
                send: function(a, b, c) {
                    window.Intercom("trackEvent", "Embedly > " + a + " > " + b, {
                        url: c
                    })
                }
            }), f._integrations = {
                google: f.GoogleAnalytics,
                kissmetrics: f.KissMetrics,
                mixpanel: f.Mixpanel,
                segment: f.Segment,
                heap: f.Heap,
                intercom: f.Intercom
            }, f.send = function(a, b, c) {
                d.each(f.senders, function(d) {
                    d.isValid() && d.event(a, b, c)
                }), f.hub && f.hub.notify("analytics.event", a, b, c)
            }, f.player = function(a) {
                a.on("play", function() {
                    f.send("Video", "Play", a.url)
                }), a.on("timeupdate", function(b) {
                    if (b.seconds && b.duration && d.isNumber(b.seconds) && d.isNumber(b.duration)) {
                        var c = parseInt(b.seconds / b.duration * 4, 10);
                        c && c > 0 && 5 > c && f.send("Video", d.fmt("{n}% Watched", {
                            n: (25 * c).toString()
                        }), a.url)
                    }
                }), a.on("ended", function() {
                    f.send("Video", "100% Watched", a.url)
                })
            }, f.event = function(a, b, c) {
                return a && b && c && "click" === b ? (d.contains(["facebook", "twitter", "pinterest", "repeat"], a) && (b = a, a = "social"), "article-full" === a && (a = "article"), d.contains(["video", "image", "rich", "article", "product", "social", "recommend"], a) ? (a = d.capitalize(a), b = d.capitalize(b), void f.send(a, b, c)) : !1) : !1
            }, f.configure = function(a) {
                a && d.isArray(a) || (a = []), f.senders = [], d.each(a, function(a) {
                    if (d.isString(a)) {
                        if (f._integrations.hasOwnProperty(a)) {
                            var b = f._integrations[a];
                            f.senders.push(new b)
                        }
                    } else if (d.isFunction(a)) {
                        var c = f.Sender.extend({
                            isValid: function() {
                                return !0
                            },
                            send: a
                        });
                        f.senders.push(new c)
                    }
                })
            }, f.connect = function(a) {
                a.on("media.player", f.player), d.each(f.integrations, function(a) {
                    if (f._integrations.hasOwnProperty(a)) {
                        var b = f._integrations[a];
                        f.senders.push(new b)
                    }
                }), f.hub = a, a.on("log.event", function(a) {
                    if (a && a.a && "click" === a.a)
                        if ("recommend" === a.c && a.l) {
                            var b = a.l.split("|");
                            3 === b.length && f.event(a.c, a.a, b.slice(1).join(" "))
                        } else f.event(a.c, a.a, a.u)
                })
            }, b.exports = f
        }, {
            "./class.js": 5,
            "./utils.js": 30
        }],
        17: [function(a, b, c) {
            var d = a("./utils.js"),
                e = function() {
                    this.init()
                };
            e.prototype.init = function() {
                this.len = 0, this.count = 0, this.results = {}, this.finished = !1, this.started = !1
            }, e.prototype.callback = function() {
                var a = this.len;
                return this.len++, d.bind(function(b) {
                    this.each(a, b)
                }, this)
            }, e.prototype.done = function() {
                if (!this.started) return !1;
                if (this.finished) return !0;
                if (this.count === this.len) {
                    this.finished = !0;
                    for (var a = [], b = 0; b < this.len; b++) a.push(this.results[b]);
                    return this.func.call(this.ctx, a), !0
                }
            }, e.prototype.each = function(a, b) {
                this.results[a] = b, this.count++, this.done()
            }, e.prototype.wait = function(a, b) {
                this.func = a, this.ctx = b ? b : null, this.started = !0, this.done()
            }, b.exports = e
        }, {
            "./utils.js": 30
        }],
        18: [function(a, b, c) {
            var d = {};
            d.addReddit = function() {
                window.libringEventAPI = window.libringEventAPI || {
                    track: function(a, b, c) {
                        try {
                            var d = new XMLHttpRequest;
                            d.open("POST", "https://eventapi.libring.com/v1/event", !0), d.setRequestHeader("Content-type", "text/plain"), d.send('{"accessCode":"7AMXYZIYIVEDFM3CRPHEH33WQQ","data":[{"eventType":"' + a + '","values":{"url":"' + b + '","category":"' + c + '"}}]}')
                        } catch (e) {
                            return !1
                        }
                    }
                }
            }, b.exports = d
        }, {}],
        19: [function(a, b, c) {
            var d = a("../utils.js"),
                e = a("../urlparse.js"),
                f = a("../browser.js"),
                g = a("../comms.js"),
                h = {
                    hub: null,
                    timeout: null,
                    connected: !1,
                    connecting: !1,
                    COOKIE_NAME: "em_cdn_uid",
                    sid: d.getUUID(),
                    _queue: []
                };
            h.getUID = function() {
                var a = f.cookie.get(h.COOKIE_NAME);
                if (d.isNone(a)) return h.setUID();
                var b = e.parseQuery(decodeURIComponent(a));
                if (!b.u || !b.t) return h.setUID();
                var c;
                try {
                    c = parseInt(b.t, 10)
                } catch (g) {
                    return h.setUID()
                }
                return 32 !== b.u.length ? h.setUID() : d.getTimestamp() - c > 15552e6 ? h.setUID(b.u) : b.u
            }, h.setUID = function(a) {
                var b = {
                        u: d.isNone(a) ? d.getUUID() : a,
                        t: d.getTimestamp()
                    },
                    c = encodeURIComponent(e.createQuery(b));
                return f.cookie.set(h.COOKIE_NAME, c, 365), c = f.cookie.get(h.COOKIE_NAME), d.isNone(c) ? 0 : (b = e.parseQuery(decodeURIComponent(c)), b.u)
            }, h.uid = h.getUID(), h.release = function() {
                var a = h._queue;
                h._queue = [], f.console.log("log.release", a), h.hub.notify("xcomm.log.event", {
                    events: a
                })
            }, h.queue = function(a) {
                clearTimeout(h.timeout), h._queue.push(a), h.comms() && (h.timeout = setTimeout(function() {
                    h.release()
                }, 50))
            }, h.event = function(a) {
                var b = {
                    uid: h.uid,
                    sid: h.sid,
                    t: d.getTimestamp()
                };
                window.self === window.top ? (b.r = document.location.toString(), b.rr = document.referrer) : b.r = document.referrer, d.assert(a.g), d.assert(a.c), d.assert(a.a), b = d.extend({}, b, a), "reddit" !== b.c || "load" !== b.a && "click" !== b.a && "view" !== b.a || !window.libringEventAPI || window.libringEventAPI.track(b.a, b.u, b.r), h.queue(b)
            }, h.comms = function() {
                return h.connected ? !0 : h.hub ? h.connecting ? !1 : (h.connecting = !0, h.hub.one("xcomm.ready", function() {
                    h.connected = !0, h.release()
                }), void g.connect(h.hub, {
                    name: h.name
                })) : !1
            }, h.connect = function(a, b) {
                h.name = b, a.on("log.event", function(a) {
                    h.event(a)
                }), h.hub = a
            }, b.exports = h
        }, {
            "../browser.js": 4,
            "../comms.js": 6,
            "../urlparse.js": 29,
            "../utils.js": 30
        }],
        20: [function(a, b, c) {
            var d = a("./browser.js"),
                e = a("./utils.js"),
                f = a("./dom.js"),
                g = {
                    _data: null
                };
            g.COOKIE_NAME = "em_p_uid", g.format = function(a) {
                return a && e.isObject(a) ? e.map(a, function(a, b) {
                    return b + ":" + a
                }).sort().join("|") : null
            }, g.parse = function(a) {
                if (!a) return null;
                var b;
                return e.reduce(a.split("|"), function(a, c) {
                    return null === a ? null : (b = c.split(":"), 2 !== b.length ? null : (a[b[0]] = b[1], a))
                }, {})
            }, g.timestamp = function(a) {
                var b;
                try {
                    b = parseInt(a, 10)
                } catch (c) {
                    return !1
                }
                return b
            }, g.get = function() {
                var a = d.cookie.get(g.COOKIE_NAME);
                if (e.isNone(a)) return g.set();
                var b = g.parse(a),
                    c = g.timestamp(b.t);
                return c === !1 ? g.set() : e.getTimestamp() - c > 15552e6 ? g.set({
                    u: b.u,
                    l: b.l
                }) : b
            }, g.set = function(a) {
                var b = {
                    u: e.getUUID(),
                    t: e.getTimestamp(),
                    l: 0
                };
                a && (b = e.extend(b, a));
                var c = g.format(b);
                return d.cookie.set(g.COOKIE_NAME, c, 365, "https:" === window.location.protocol), c = d.cookie.get(g.COOKIE_NAME), e.isNone(c) ? null : g.parse(c)
            }, g.update = function(a) {
                var b = g.get();
                return b ? (b = e.extend(b, a), g.set(b)) : !1
            }, g.data = function() {
                if (g._data) return g._data;
                var a = {
                        mt: e.getTimestamp(),
                        mr: document.referrer,
                        msw: d.window.innerWidth(),
                        msh: d.window.innerHeight()
                    },
                    b = g.get();
                return b ? (a.muu = b.u, a.mut = b.t, a.mul = b.l) : a.muu = 0, g._data = a, g.update({
                    l: e.getTimestamp()
                }), g._data
            }, g.send = function(a, b) {
                if (!b || !e.isElement(b.elem)) return !1;
                var c = e.extend(g.data(), {}),
                    d = f.rect(b.elem);
                d && (c.mft = d.top, c.mfl = d.left, c.mfw = d.width, c.mfh = d.height), b.send(a, c)
            }, b.exports = g
        }, {
            "./browser.js": 4,
            "./dom.js": 7,
            "./utils.js": 30
        }],
        21: [function(a, b, c) {
            var d = a("./dom.js"),
                e = a("./utils"),
                f = {
                    _event: null,
                    _observer: null
                };
            f.nodeNames = ["iframe", "a", "blockquote"], f.html = function() {
                var a = document.getElementsByTagName("html");
                return 0 === a.length ? null : a[0]
            }, f.recurse = function(a) {
                var b = [];
                return e.isElement(a) && b.push(a), e.reduce(a.childNodes, function(a, b) {
                    return e.isElement(b) ? a.concat(f.recurse(b)) : a
                }, b)
            }, f.observer = function(a) {
                var b = f.html();
                if (null === b) return !1;
                if (!window.MutationObserver) return !1;
                f._observer = new window.MutationObserver(function(b) {
                    e.each(b, function(b) {
                        if ("childList" === b.type && b.addedNodes) {
                            var c = Array.prototype.slice.call(b.addedNodes);
                            e.each(c, function(b) {
                                e.each(f.recurse(b), function(b) {
                                    b.nodeName && e.contains(f.nodeNames, b.nodeName.toLowerCase()) && a.notify("mutation.insert." + b.nodeName.toLowerCase(), b)
                                })
                            })
                        }
                    })
                });
                var c = {
                    childList: !0,
                    subtree: !0
                };
                return f._observer.observe(b, c), !0
            }, f.events = function(a) {
                var b = f.html();
                return null === b ? !1 : (f._event = function(b) {
                    e.each(f.recurse(b.target), function(b) {
                        b.nodeName && e.contains(f.nodeNames, b.nodeName.toLowerCase()) && a.notify("mutation.insert." + b.nodeName.toLowerCase(), b)
                    })
                }, d.addEvent(b, "DOMNodeInserted", f._event), !0)
            }, f.stop = function() {
                var a = f.html();
                return null === a ? !1 : (f._event && (d.detachEvent(a, "DOMNodeInserted", f._event), f._event = null), void(f._observer && (f._observer.disconnect(), f._observer = null)))
            }, f.connect = function(a) {
                return f._event || f._observer ? !1 : void(f.observer(a) || f.events(a))
            }, b.exports = f
        }, {
            "./dom.js": 7,
            "./utils": 30
        }],
        22: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("./urlparse.js"),
                f = a("./comms.js"),
                g = a("conf"),
                h = {
                    started: !1
                };
            h.connect = function(a, b) {
                var c = e.getDomain(document.location.toString());
                if (!b && g.PAGE_PROGRESS_DOMAINS && !d.contains(g.PAGE_PROGRESS_DOMAINS, c)) return !1;
                if (h.started) return !1;
                h.started = !0;
                var i = function() {
                    a.get("xcomm.page.progress", function() {
                        a.notify("xcomm.page.progress.started")
                    })
                };
                f.started ? i() : (f.connect(a, {
                    name: "platform"
                }), a.one("xcomm.ready", i))
            }, b.exports = h
        }, {
            "./comms.js": 6,
            "./urlparse.js": 29,
            "./utils.js": 30,
            conf: "conf"
        }],
        23: [function(a, b, c) {
            function d(a) {
                return function() {
                    var b = {
                            method: a
                        },
                        c = Array.prototype.slice.call(arguments);
                    /^get/.test(a) ? (e.assert(c.length > 0, "Get methods require a callback."), c.unshift(b)) : (/^set/.test(a) && (e.assert(0 !== c.length, "Set methods require a value."), b.value = c[0]), c = [b]), this.send.apply(this, c)
                }
            }
            var e = a("./utils.js"),
                f = a("./browser.js"),
                g = {};
            g.CONTEXT = "player.js", g.VERSION = "0.0.11", g.bound = function(a, b) {
                return function(c) {
                    a.call(b || window, c.value)
                }
            }, g.Player = function(a) {
                return this instanceof g.Player ? void this.init(a) : new g.Player(a)
            }, g.EVENTS = {
                READY: "ready",
                PLAY: "play",
                PAUSE: "pause",
                ENDED: "ended",
                TIMEUPDATE: "timeupdate",
                PROGRESS: "progress",
                ERROR: "error"
            }, g.EVENTS.all = function() {
                return e.map(g.EVENTS, function(a) {
                    return a
                })
            }, g.METHODS = {
                PLAY: "play",
                PAUSE: "pause",
                GETPAUSED: "getPaused",
                MUTE: "mute",
                UNMUTE: "unmute",
                GETMUTED: "getMuted",
                SETVOLUME: "setVolume",
                GETVOLUME: "getVolume",
                GETDURATION: "getDuration",
                SETCURRENTTIME: "setCurrentTime",
                GETCURRENTTIME: "getCurrentTime",
                SETLOOP: "setLoop",
                GETLOOP: "getLoop",
                REMOVEEVENTLISTENER: "removeEventListener",
                ADDEVENTLISTENER: "addEventListener"
            }, g.METHODS.all = function() {
                return e.map(g.METHODS, function(a) {
                    return a
                })
            }, g.READIED = [], g.Player.prototype.init = function(a) {
                this.frame = a, this.url = a.url, this.events = g.EVENTS.all(), this.methods = g.METHODS.all()
            }, g.Player.prototype.send = function(a, b, c) {
                return a.context = g.CONTEXT, a.version = g.VERSION, b ? (a.listener = "l" + e.getUUID(), this.frame.one({
                    event: a.method,
                    listener: a.listener
                }, g.bound(b, c), c)) : this.frame.on(a.method, b, c), this.frame.send(a.method, a), !0
            }, g.Player.prototype.on = function(a, b, c) {
                var d = e.getUUID(),
                    f = {
                        event: a,
                        listener: d
                    };
                return "ready" === a ? this.frame.one(f, g.bound(b, c), c) : this.frame.on(f, g.bound(b, c), c), this.frame.send("addEventListener", {
                    event: "addEventListener",
                    value: a,
                    listener: d,
                    context: g.CONTEXT,
                    version: g.VERSION
                }), !0
            }, g.Player.prototype.off = function(a) {
                var b = this.frame.__hub.listeners(a);
                if (f.console.log("Player.off", b), b.length > 0)
                    for (var c in b) this.send({
                        method: "removeEventListener",
                        value: a,
                        listener: b[c]
                    }), this.frame.__hub.off([a, b[c]].join("."));
                return !1
            }, g.Player.prototype.supports = function(a, b) {
                e.assert(e.indexOf(["method", "event"], a) > -1, 'evtOrMethod needs to be either "event" or "method" got ' + a), b = e.isArray(b) ? b : [b];
                for (var c = "event" === a ? this.events : this.methods, d = 0; d < b.length; d++)
                    if (-1 === g.indexOf(c, b[d])) return !1;
                return !0
            }, e.each(g.METHODS.all(), function(a) {
                g.Player.prototype.hasOwnProperty(a) || (g.Player.prototype[a] = d(a))
            }), g._all = [], g.get = function(a, b, c) {
                var d = function(a, b) {
                    return function(c, d) {
                        return a && d !== a ? !1 : void b.call(window, c, a)
                    }
                }(b, c);
                e.each(g._all, function(a) {
                    d(a.player, a.elem)
                }), a.on("media.player", d)
            }, g.add = function(a, b) {
                var c = new g.Player(b);
                a.notify("media.player", c, b.elem), g._all.push({
                    player: c,
                    elem: b.elem
                })
            }, g.connect = function(a) {
                a.on("media.player.init", function(b) {
                    g.add(a, b)
                }), a.on("card.player.ready", function(b) {
                    g.add(a, b)
                })
            }, b.exports = g
        }, {
            "./browser.js": 4,
            "./utils.js": 30
        }],
        24: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("./browser.js"),
                f = a("./dom.js"),
                g = function() {
                    this.init()
                };
            g.prototype.init = function() {
                var a = this;
                document.addEventListener ? document.addEventListener("DOMContentLoaded", function() {
                    document.removeEventListener("DOMContentLoaded", arguments.callee, !1), a.ready()
                }, !1) : document.attachEvent && (document.attachEvent("onreadystatechange", function() {
                    "complete" === document.readyState && (document.detachEvent("onreadystatechange", arguments.callee), a.ready())
                }), document.documentElement.doScroll && window === window.top && ! function() {
                    if (!a.isReady) {
                        try {
                            document.documentElement.doScroll("left")
                        } catch (b) {
                            return void setTimeout(arguments.callee, 0)
                        }
                        a.ready()
                    }
                }()), f.addEvent(window, "load", a.ready)
            }, g.prototype.ready = function() {
                return this.isReady ? !1 : (this.isReady = !1, void(this.callback && this.callback()))
            }, g.prototype.bind = function(a) {
                this.isReady && a(), this.callback = a
            }, g.prototype.elem = function(a, b, c) {
                var d = !1,
                    e = function() {
                        d === !1 && (d = !0, b.call(c))
                    };
                return a.onload = e, f.addEvent(a, "load", e), a.onreadystatechange = function() {
                    var b = a.readyState;
                    ("loaded" === b || "complete" === b) && (a.onreadystatechange = null, e())
                }, e
            }, g.prototype.firstNode = function() {
                var a = document.getElementsByTagName("head")[0],
                    b = f.child(a, "link");
                if (b) return b;
                var c = f.child(a, "style");
                if (c) return c;
                var d = f.child(a, "script");
                return d ? d : null
            }, g.prototype.appendToHead = function(a) {
                var b = this.firstNode();
                if (null === b) {
                    var c = document.getElementsByTagName("head")[0];
                    c ? c.appendChild(a) : document.body.appendChild(a)
                } else b.parentNode.insertBefore(a, b)
            }, g.prototype.script = function(a, b, c, e) {
                var f = document.createElement("script");
                return f.type = "text/javascript", f.src = a, d.isNone(e) || d.each(e, function(a, b) {
                    f.setAttribute(b, a)
                }), this.elem(f, b, c), this.appendToHead(f), f
            }, g.prototype.css = function(a, b, c) {
                var d = document.createElement("link");
                d.type = "text/css", d.rel = "stylesheet", d.href = a;
                var f = this.elem(d, b, c);
                this.appendToHead(d), e.isPhantom() && f()
            }, b.exports = new g
        }, {
            "./browser.js": 4,
            "./dom.js": 7,
            "./utils.js": 30
        }],
        25: [function(a, b, c) {
            var d = a("../urlparse.js"),
                e = a("../utils.js"),
                f = {
                    enabled: !1,
                    defaults: {},
                    options: {},
                    _queue: {}
                };
            f.queue = function(a, b, c) {
                b ? b.send(a) : f._queue.hasOwnProperty(c) ? f._queue[c].push(a) : f._queue[c] = [a]
            }, f.add = function(a, b) {
                var c = d.getQuery(a.elem.src);
                if (f.enabled) {
                    var g = {
                        key: c.key,
                        media: c.url,
                        url: document.location.toString()
                    };
                    f.options.hasOwnProperty(a.elem) && (g = e.extend(g, f.options[a.elem])), g = e.extend(g, f.defaults), a.send("media.recommend", g), a.on("media.recommend.shown", function(c) {
                        b.notify("recommend.shown", a.elem, c)
                    }), f._queue.hasOwnProperty(a.elem) && (e.each(f._queue[a.elem], function(b) {
                        a.send(b)
                    }), delete f._queue[a.elem])
                }
            }, f.connect = function(a) {
                a.on("media.recommend.options", function(b, c, d) {
                    f.enabled = !0, null === b ? f.defaults = c : e.isElement(b) && (f.options[b] = c), e.each(d, function(b) {
                        a.notify("media.recommend.add", b)
                    })
                }), a.on("media.recommend.add", function(b) {
                    f.add(b, a)
                }), a.on("media.recommend.show", function(a, b) {
                    f.queue("media.recommend.show", a, b)
                }), a.on("media.recommend.destroy", function(a, b) {
                    f.queue("media.recommend.destroy", a, b)
                }), a.on("media.recommend.resize", function(a, b) {
                    if (!b.height) return !1;
                    var c = a.parentNode,
                        d = window.getComputedStyle(c),
                        f = window.getComputedStyle(a),
                        g = ["relative" === d.position, d.paddingBottom === d.height || d.paddingTop === d.height, "absolute" === f.position];
                    if (e.every(g)) {
                        var h = parseInt(f.width, 10),
                            i = (b.height / h * 100).toPrecision(8) + "%",
                            j = parseInt(d.paddingTop, 10),
                            k = parseInt(d.paddingBottom, 10);
                        j > k ? c.style.paddingTop = i : c.style.paddingBottom = i
                    } else a.style.maxHeight = "none", a.height = b.height, a.style.height = b.height.toString() + "px"
                })
            }, b.exports = f
        }, {
            "../urlparse.js": 29,
            "../utils.js": 30
        }],
        26: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("./dom.js"),
                f = a("./ready.js"),
                g = a("./urlparse.js"),
                h = a("./log/front.js"),
                i = a("conf"),
                j = {
                    _css: !1,
                    hub: null
                };
            j.connect = function(a) {
                j.hub = a
            }, j.log = function(a, b) {
                j.hub.notify("log.event", {
                    u: a,
                    g: "card",
                    a: "click",
                    c: b,
                    l: d.hash(h.sid)
                })
            }, j.url = function(a) {
                var b = ["e", d.hash(a), d.hash(h.sid)].join(".");
                return g.addHash(document.URL, b)
            }, j.buttons = function(a) {
                var b, c = e.create("div", {
                    "class": "embdscl0"
                });
                return d.each(["facebook", "twitter", "pinterest", "linkedin", "card"], function(d) {
                    b = e.create("a", {
                        "class": "embd-" + d
                    }), b.innerHTML = "<i></i>", j.buttons[d].call(window, b, a) === !0 && c.appendChild(b)
                }), c
            }, j.buttons.twitter = function(a, b) {
                var c = b.options.url,
                    f = b.extract.title,
                    h = b.options.twitter_via,
                    i = {
                        url: j.url(c)
                    };
                return f && (i.text = d.truncate(f, 100)), h ? i.via = "@" === h.substr(0, 1) ? h.substr(1) : h : i.via = "embedly", a.href = "https://twitter.com/intent/tweet?" + g.createQuery(i), e.addEvent(a, "click", function(c) {
                    var d = e.event(c);
                    d.stop(), window.open(a.href, "_blank", "width=550,height=410,top=150,left=150"), j.log(b.options.url, "twitter")
                }), !0
            }, j.buttons.facebook = function(a, b) {
                var c = {
                    u: j.url(b.options.url)
                };
                return a.href = "https://www.facebook.com/sharer/sharer.php?" + g.createQuery(c), e.addEvent(a, "click", function(c) {
                    var d = e.event(c);
                    d.stop(), window.open(a.href, "_blank", "width=700,height=425,top=150,left=150"), j.log(b.options.url, "facebook")
                }), !0
            }, j.buttons.pinterest = function(a, b) {
                var c, d = "https://www.pinterest.com/pin/create/button/";
                if (b.options.image) c = b.options.image;
                else if (b.extract.media && "photo" === b.extract.media.type) c = b.extract.media.url;
                else {
                    if (!(b.extract.images && b.extract.images.length > 0)) return !1;
                    c = b.extract.images[0].url
                }
                return a.href = g.appendQuery(d, {
                    url: j.url(b.options.url),
                    media: c,
                    description: b.extract.title
                }), e.addEvent(a, "click", function(c) {
                    var d = e.event(c);
                    d.stop(), window.open(a.href, "_blank", "width=700,height=425,top=150,left=150"), j.log(b.options.url, "pinterest")
                }), !0
            }, j.buttons.card = function(a, b) {
                return e.addEvent(a, "click", function(a) {
                    var c = e.event(a);
                    c.stop();
                    var f = {
                        url: b.options.url
                    };
                    d.each(["image", "embed", "title", "description", "lang"], function(a) {
                        b.options.hasOwnProperty(a) && (f[a] = b.options[a])
                    }), b.__hub.notify("card.repeat", f), j.log(b.options.url, "repeat")
                }), !0
            }, j.buttons.linkedin = function(a, b) {
                var c = {
                    url: j.url(b.options.url),
                    mini: "true"
                };
                return a.href = "https://www.linkedin.com/shareArticle?" + g.createQuery(c), e.addEvent(a, "click", function(c) {
                    var d = e.event(c);
                    d.stop(), window.open(a.href, "_blank", "width=700,height=425,top=150,left=150"), j.log(b.options.url, "linkedin")
                }), !0
            }, j.buttons.embedly = function(a, b) {
                var c = {
                    utm_source: g.getDomain(document.URL),
                    utm_medium: "referral",
                    utm_campaign: "cards"
                };
                return a.href = g.appendQuery("http://embed.ly/cards", c), a.target = "_blank", e.addEvent(a, "click", function() {
                    j.log(b.options.url, "whats-this")
                }), !0
            }, j.css = function(a) {
                if (!j._css) {
                    j._css = !0;
                    var b = i.EMB_ORIGIN_BASE + "css/social." + i.EMB_ASSET_VERSION + ".css";
                    return f.css(b, a), !1
                }
                a()
            }, j.card = function(a) {
                var b = a.elem.parentNode;
                return !d.isElement(b) || "DIV" !== b.nodeName && !e.hasClass(b, "embedly-card") ? !1 : void j.css(function() {
                    var c = j.buttons(a);
                    e.addEvent(b, "mouseenter", function() {
                        e.addClass(c, "embd-active")
                    }), e.addEvent(b, "mouseleave", function() {
                        e.removeClass(c, "embd-active")
                    }), b.appendChild(c), a.__hub.notify("card.share.init")
                })
            }, b.exports = j
        }, {
            "./dom.js": 7,
            "./log/front.js": 19,
            "./ready.js": 24,
            "./urlparse.js": 29,
            "./utils.js": 30,
            conf: "conf"
        }],
        27: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("./urlparse.js"),
                f = a("conf"),
                g = {};
            g.youtube = {
                schema: "youtube",
                re: /youtube\.com\/embed\/([^\/?#]+)/i,
                url: function(a) {
                    var b = g.youtube.re.exec(a);
                    return 2 !== b.length ? a : "http://www.youtube.com/watch?v=" + b[1]
                }
            }, g.vimeo = {
                schema: "vimeo",
                re: /player\.vimeo\.com\/video\/([^\/?#]+)/i,
                url: function(a) {
                    var b = g.vimeo.re.exec(a);
                    return 2 !== b.length ? a : "http://vimeo.com/" + b[1]
                }
            }, g.soundcloud = {
                schema: "soundcloud",
                re: /w\.soundcloud\.com\/player\/\?/,
                url: function(a) {
                    var b = e.getQuery(a);
                    if (b.url) {
                        var c = /api\.soundcloud\.com\/tracks\/([^\/?#]+)/.exec(b.url);
                        if (2 === c.length) return "https://soundcloud.com/track/" + c[1]
                    }
                    return a
                }
            }, g.providers = [g.youtube, g.vimeo, g.soundcloud], g.provider = function(a) {
                return d.reduce(g.providers, function(b, c) {
                    return c.re.test(a) ? c : b
                }, null)
            }, g.replace = function(a, b) {
                if (d.isNone(a) || !d.isElement(a)) return null;
                if ("IFRAME" !== a.nodeName) return null;
                if (!a.src || !d.isString(a.src)) return null;
                if (!b.key) return !1;
                var c = a.src;
                c = c.replace(/&amp;/g, "&");
                var h = g.provider(c);
                if (null === h) return null;
                var i = "https:" === window.location.protocol ? "https:" : "http:";
                "file://" === c.substr(0, 7) && (c = c.substr(5)), "//" === c.substr(0, 2) && (c = i + c);
                var j = d.extend({}, b, {
                        url: h.url(c),
                        src: c,
                        schema: h.schema,
                        type: "text/html"
                    }),
                    k = i + "//cdn.embedly.com/widgets/";
                f.EMB_DEBUG && (k = f.EMB_FRAME_SRC);
                var l = k + "media.html?" + e.createQuery(j);
                return a.src = l, a
            }, b.exports = g
        }, {
            "./urlparse.js": 29,
            "./utils.js": 30,
            conf: "conf"
        }],
        28: [function(a, b, c) {
            var d = a("./utils.js"),
                e = {};
            e.Tunnel = function(a) {
                this.init(a)
            }, e.Tunnel.prototype.init = function(a) {
                this.parent = a, this.child = null, this.ready = !1, this.queue = []
            }, e.Tunnel.prototype.connect = function(a) {
                this.child = a, this.child.on("receiver.send", d.bind(function(a, b) {
                    d.isNone(b) && (b = {}), b.method = a, setTimeout(d.bind(function() {
                        this.parent.notify("message", b)
                    }, this), 1)
                }, this)), this.ready = !0, this.release()
            }, e.Tunnel.prototype.release = function() {
                for (var a = 0; a < this.queue.length; a++) this.send(this.queue[a]);
                this.queue = []
            }, e.Tunnel.prototype.send = function(a) {
                return this.ready ? void setTimeout(d.bind(function() {
                    this.child.notify(a.method, a)
                }, this), 1) : (this.queue.push(a), !1)
            }, e.Tunnel.prototype.clear = function() {
                this.ready = !1, this.parent.clear(), this.child && this.child.clear()
            }, b.exports = e
        }, {
            "./utils.js": 30
        }],
        29: [function(a, b, c) {
            var d = a("./utils.js"),
                e = {};
            e.createQuery = function(a) {
                var b = [],
                    c = "";
                return a && d.isObject(a) && !d.isEmptyObject(a) ? (d.each(a, function(a, c) {
                    b.push(encodeURIComponent(c) + "=" + encodeURIComponent(a))
                }), b.sort(), b.join("&")) : c
            }, e.parseQuery = function(a) {
                var b = {};
                if (!a || !d.isString(a)) return b;
                ("#" === a.substr(0, 1) || "?" === a.substr(0, 1)) && (a = a.substr(1));
                var c = a.split("&");
                return d.each(c, function(a) {
                    if (!a) return !0;
                    var c = a.split("="),
                        d = decodeURIComponent(c[0]);
                    1 === c.length ? b[d] = "" : 2 === c.length ? b[d] = decodeURIComponent(c[1]) : b[d] = decodeURIComponent(c.slice(1).join("="))
                }), b
            }, e.getQuery = function(a) {
                if (!a || !d.isString(a)) return {};
                var b = a.split("?");
                return 2 === b.length ? e.parseQuery(b[1]) : b.length > 2 ? e.parseQuery(b.slice(1).join("?")) : {}
            }, e.appendQuery = function(a, b) {
                if (!a || !d.isString(a)) return null;
                var c = a.split("?"),
                    f = c[0];
                if (!b || !d.isObject(b) || d.isEmptyObject(b)) return a;
                var g = e.getQuery(a);
                return g = d.extend(g, b), d.isEmptyObject(g) ? a : [f, e.createQuery(g)].join("?")
            }, e.removeQuery = function(a, b) {
                if (!a || !d.isString(a)) return null;
                var c = a.split("?"),
                    f = c[0],
                    g = e.getQuery(a);
                return g.hasOwnProperty(b) && delete g[b], d.isEmptyObject(g) ? f : [f, e.createQuery(g)].join("?")
            }, e.getOrigin = function(a) {
                if (!a || !d.isString(a)) return null;
                if (!/^https?:\/\//.test(a)) return null;
                var b = a.split("/").slice(0, 3).join("/");
                return -1 === b.indexOf(".") && -1 === b.indexOf(":") ? null : b
            }, e.getDomain = function(a) {
                var b = e.getOrigin(a);
                return b ? b.replace(/^https?:\/\//, "") : null
            }, e.param = function(a) {
                return d.map(a, function(a, b) {
                    return encodeURIComponent(b) + "=" + encodeURIComponent(a)
                }).join("&")
            }, e.Parsed = function(a, b) {
                this.init(a, b)
            }, e.Parsed.prototype.init = function(a, b) {
                this.original = a, this.url = b, this._valid = !1, this.url = b
            }, e.Parsed.prototype.valid = function(a) {
                return (a === !0 || a === !1) && (this._valid = a), this._valid
            }, e.parse = function(a) {
                var b = a,
                    c = "https:" === window.location.protocol ? "https:" : "http:";
                a = a ? d.trim(a) : a;
                var f = new e.Parsed(b, a);
                return a ? /^https?:\/\/[^\/]+\.[^\/]/i.test(a) ? (f.valid(!0), f) : /^\w+:/i.test(a) ? f : "#" === a[0] ? f : /^\/\/[^\/]+\.[^\/]/i.test(a) ? (f.valid(!0), f.url = c + a, f) : /^\/([^\/]+|$)/i.test(a) ? (f.valid(!0), f.url = e.getOrigin(window.location.toString()) + a, f) : /^[^\/]+\.[^\/]/i.test(a) ? (f.valid(!0), f.url = "http://" + a, f) : f : f
            }, e.addHash = function(a, b) {
                return -1 === a.indexOf("#") ? a + "#" + b : a + "&" + b
            }, e.sanitize = function(a) {
                return a ? (a = a.replace(/#x\d\d;/, ""), a.replace(/[^-A-Za-z0-9+&@#\/%?=~_|!:,.;\(\)]/g, "")) : a
            }, b.exports = e
        }, {
            "./utils.js": 30
        }],
        30: [function(a, b, c) {
            var d = a("conf"),
                e = {},
                f = {},
                g = Array.prototype,
                h = Object.prototype,
                i = Function.prototype,
                j = g.slice,
                k = h.toString,
                l = g.forEach,
                m = g.reduce,
                n = g.every,
                o = g.indexOf,
                p = i.bind;
            e.identity = function(a) {
                return a
            }, e.each = function(a, b, c) {
                if (null != a)
                    if (l && a.forEach === l) a.forEach(b, c);
                    else if (a.length === +a.length) {
                    for (var d = 0, e = a.length; e > d; d++)
                        if (d in a && b.call(c, a[d], d, a) === f) return
                } else
                    for (var g in a)
                        if (h.hasOwnProperty.call(a, g) && b.call(c, a[g], g, a) === f) return
            }, e.map = function(a, b, c) {
                var d = [];
                return null == a ? d : Array.prototype.map && a.map === Array.prototype.map ? a.map(b, c) : (e.each(a, function(a, e, f) {
                    d[d.length] = b.call(c, a, e, f)
                }), d)
            }, e.reduce = function(a, b, c, d) {
                var f = arguments.length > 2;
                if (null == a && (a = []), m && a.reduce === m) return d && (b = e.bind(b, d)), f ? a.reduce(b, c) : a.reduce(b);
                if (e.each(a, function(a, e, g) {
                        f ? c = b.call(d, c, a, e, g) : (c = a, f = !0)
                    }), !f) throw new TypeError("Reduce of empty array with no initial value");
                return c
            }, e.zip = function(a) {
                return e.map(a[0], function(b, c) {
                    return b.map(a, function(a) {
                        return a[c]
                    })
                })
            }, e.extend = function(a) {
                return e.each(Array.prototype.slice.call(arguments, 1), function(b) {
                    for (var c in b) void 0 !== b[c] && (a[c] = b[c])
                }), a
            }, e.contains = function(a, b) {
                if (!o) {
                    for (var c = 0, d = a.length; d > c; c++)
                        if (a[c] === b) return !0;
                    return !1
                }
                return a.indexOf(b) > -1
            }, e.every = function(a, b, c) {
                b || (b = e.identity);
                var d = !0;
                return null == a ? d : n && a.every === n ? a.every(b, c) : (e.each(a, function(a, e, g) {
                    return (d = d && b.call(c, a, e, g)) ? void 0 : f
                }), !!d)
            }, e.indexOf = function(a, b) {
                if (null == a) return -1;
                var c = 0,
                    d = a.length;
                if (o && a.indexOf === o) return a.indexOf(b);
                for (; d > c; c++)
                    if (a[c] === b) return c;
                return -1
            }, e.batch = function(a, b) {
                var c = [],
                    d = [];
                return e.each(a, function(a) {
                    d.push(a), d.length === b && (c.push(d), d = [])
                }), 0 !== d.length && c.push(d), c
            };
            var q = function() {};
            e.bind = function(a, b) {
                var c, d;
                if (p && a.bind === p) return p.apply(a, j.call(arguments, 1));
                if (!e.isFunction(a)) throw new TypeError;
                return c = j.call(arguments, 2), d = function() {
                    if (!(this instanceof d)) return a.apply(b, c.concat(j.call(arguments)));
                    q.prototype = a.prototype;
                    var e = new q;
                    q.prototype = null;
                    var f = a.apply(e, c.concat(j.call(arguments)));
                    return Object(f) === f ? f : e
                }
            }, e.get = function(a, b, c) {
                if (c = e.isNone(c) ? null : c, e.isNone(b) || !e.isString(b) || !a) return c;
                if ("" === b) return a;
                var d = b.split("."),
                    f = d.splice(0, 1)[0];
                return a.hasOwnProperty(f) ? e.get(a[f], d.join("."), c) : c
            }, e.isFunction = function(a) {
                try {
                    return /^\s*\bfunction\b/.test(a)
                } catch (b) {
                    return !1
                }
            }, e.isNone = function(a) {
                return null === a || "undefined" == typeof a
            }, e.isString = function(a) {
                return "[object String]" === k.call(a)
            }, e.isNumber = function(a) {
                return "[object Number]" === k.call(a)
            }, e.isDate = function(a) {
                return "[object Date]" === k.call(a)
            }, e.isObject = function(a) {
                return "[object Object]" === k.call(a)
            }, e.isArray = function(a) {
                return "[object Array]" === k.call(a)
            }, e.isElement = function(a) {
                return !e.isNone(a) && !e.isNone(a.nodeType) && 1 === a.nodeType
            }, e.isEmptyObject = function(a) {
                if (e.isObject(a)) {
                    for (var b in a)
                        if (h.hasOwnProperty.call(a, b)) return !1;
                    return !0
                }
                return !1
            }, e.bool = function(a) {
                return e.isNone(a) ? null : "true" === a || "yes" === a || "1" === a || 1 === a || a === !0 ? !0 : "false" === a || "no" === a || "0" === a || 0 === a || a === !1 ? !1 : null
            }, e.assert = function(a, b) {
                if (!a) throw b || "Assertion Failed"
            }, e.getUUID = function() {
                return "xxxxxxxxxxxx4xxxyxxxxxxxxxxxxxxx".replace(/[xy]/g, function(a) {
                    var b = 16 * Math.random() | 0,
                        c = "x" === a ? b : 3 & b | 8;
                    return c.toString(16)
                })
            }, e.getTimestamp = function() {
                var a = new Date;
                return a.getTime()
            }, e.trim = function(a) {
                return a.replace(/^\s+|\s+$/g, "")
            }, e.spaceless = function(a) {
                return a.replace(/\s+/g, "")
            }, e.capitalize = function(a) {
                return a.charAt(0).toUpperCase() + a.substr(1)
            }, e.camelCase = function(a, b) {
                var c = a.split("-");
                return b = b ? b : c.length, c.length > 1 && (a = c.splice(0, 1)[0], a += e.map(c.splice(0, b), function(a) {
                    return a[0].toUpperCase() + a.substr(1)
                }).join(""), c.length > 0 && (a += "-" + c.join("-"))), a
            }, e.truncate = function(a, b) {
                return a ? (b = b ? b : 50, a.length < b ? a : (a = a.substr(0, b - 3), e.trim(a) + "...")) : ""
            }, e.fmt = function(a, b) {
                return a.replace(/{(\w+)}/g, function(a, c) {
                    return b[c] ? b[c] : ""
                })
            }, e.fullHash = function(a) {
                var b, c, d, e = 0;
                if (0 === a.length) return e;
                for (b = 0, d = a.length; d > b; b++) c = a.charCodeAt(b), e = (e << 5) - e + c, e |= 0;
                return Math.abs(e).toString(32)
            }, e.hash = function(a) {
                var b = "0000000" + e.fullHash(a);
                return b.substr(b.length - 6)
            }, e.rgbToHex = function(a, b, c) {
                return "#" + ((1 << 24) + (a << 16) + (b << 8) + c).toString(16).slice(1)
            }, d.EMB_DEBUG === !0 && (window._ = e), b.exports = e
        }, {
            conf: "conf"
        }],
        31: [function(a, b, c) {
            var d = a("./utils.js"),
                e = a("./dom.js"),
                f = a("./browser.js"),
                g = function() {
                    this.init()
                };
            g.prototype.init = function() {
                this._elements = [], this._listening = !1
            }, g.prototype.viewable = function(a) {
                if (!a.getBoundingClientRect) return !0;
                var b;
                try {
                    b = a.getBoundingClientRect()
                } catch (c) {
                    return !1
                }
                return b.bottom >= 0 && b.right >= 0 && b.top <= (window.innerHeight || document.documentElement.clientHeight) && b.left <= (window.innerWidth || document.documentElement.clientWidth)
            }, g.prototype.check = function() {
                this.freeze = !0;
                var a = [];
                d.each(this._elements, d.bind(function(b, c) {
                    if (this.viewable(b.elem)) {
                        try {
                            b.func.call(this)
                        } catch (d) {
                            f.console.log(d)
                        }
                        a.push(c)
                    }
                }, this)), d.each(a, function(a) {
                    this._elements.splice(a, 1)
                }, this), 0 === this._elements.length && this.stop(), this.freeze = !1
            }, g.prototype.stop = function() {
                try {
                    e.detachEvent(window, "DOMContentLoaded", this.handler), e.detachEvent(window, "load", this.handler), e.detachEvent(window, "resize", this.handler), e.detachEvent(window, "scroll", this.handler)
                } catch (a) {}
                this.handler = null, this._listening = !1
            }, g.prototype.listen = function() {
                return this._listening ? !1 : (this._listening = !0, this.handler = d.bind(function() {
                    !this.freeze && this._elements.length && this.check()
                }, this), e.addEvent(window, "DOMContentLoaded", this.handler), e.addEvent(window, "load", this.handler), e.addEvent(window, "resize", this.handler), void e.addEvent(window, "scroll", this.handler))
            }, g.prototype.on = function(a, b, c) {
                "viewable" === a && (this._elements.push({
                    elem: b,
                    func: c
                }), this.listen(), this.check())
            }, b.exports = g
        }, {
            "./browser.js": 4,
            "./dom.js": 7,
            "./utils.js": 30
        }],
        32: [function(a, b, c) {
            if (window.embedly && window.embedly.look) return window.embedly.look(), !1;
            var d = a("./common/iframes/all.js"),
                e = a("./common/browser.js"),
                f = a("./common/utils.js"),
                g = a("./common/a.js"),
                h = a("./common/dom.js"),
                i = a("./common/ready.js"),
                j = a("./common/meta.js"),
                k = a("./common/viewport.js"),
                l = a("./common/page.js"),
                m = a("./common/urlparse.js"),
                n = a("./common/found.js"),
                o = a("./common/share.js"),
                p = a("./common/log/front.js"),
                q = a("./common/recommend/front.js"),
                r = a("./common/players.js"),
                s = a("./common/integrate.js"),
                t = a("./common/blacklist.js"),
                u = a("./common/libring.js"),
                v = new g,
                w = new k;
            q.connect(v), o.connect(v), u.addReddit(), r.connect(v), s.connect(v), p.connect(v, "platform");
            var x = function() {
                    var a = /emb_(\d+)/.exec(e.location.hash());
                    return a ? a[1] : null
                },
                y = {
                    analytics: null,
                    recommend: !1,
                    shared: x(),
                    defaults: {
                        cards: {}
                    }
                },
                z = {
                    media: []
                },
                A = function(a) {
                    var b;
                    try {
                        b = JSON.parse(a.data)
                    } catch (c) {
                        return e.console.error(c), !1
                    }
                    v.notify("window.message", a, b)
                };
            h.addEvent(window, "message", A);
            var B = function(a, b, c) {
                    var e;
                    if (f.isFunction(b) && (c = b, b = {}), f.isString(a) || !f.isElement(a) && f.isObject(a)) return n.add.cards(a), !0;
                    if (f.isElement(a) && ("a" === a.nodeName.toLowerCase() || "blockquote" === a.nodeName.toLowerCase())) {
                        var g = f.extend({}, y.defaults.cards, b);
                        e = d.cards.one(a, g, v, function(a) {
                            f.isFunction(c) && c.call(a, a)
                        })
                    }
                    return e
                },
                C = function(a) {
                    var b;
                    return f.isString(a) ? (n.add.button(a), !0) : (f.isElement(a) && "a" === a.nodeName.toLowerCase() && (b = d.button.one(a, v)), b && b.on("button.rendered", function() {
                        v.notify("button.rendered", b.elem, b)
                    }), b)
                },
                D = function(a, b) {
                    var c;
                    c = f.isString(a) ? {
                        url: a
                    } : a;
                    var e = d.modal.one(c, v);
                    return f.isFunction(b) && b.call(e, e), e
                },
                E = function(a, b, c) {
                    var e = d.slideshow.one(a, b, v);
                    return f.isFunction(c) && c.call(e, e), e
                },
                F = function(a) {
                    if ("1" === h.data(a, "connected")) return !1;
                    h.data(a, "connected", "1");
                    var b = d.connect(null, a, v);
                    b.one("media.ready", function(a) {
                        b.url = a.url, b.ready(), w.on("viewable", b.elem, function() {
                            b.send("media.view")
                        }), v.notify("media.recommend.add", b), z.media.push(b), a.controllable && v.notify("media.player.init", b), v.notify("media.ready", b)
                    }), b.on("media.recommend.resize", function(b) {
                        v.notify("media.recommend.resize", a, b)
                    }), b.on("iframe.resize", function(a) {
                        a.height && (b.elem.height = a.height), v.notify("media.resize", b)
                    }), b.send("media.ready", {}, !0)
                },
                G = function(a) {
                    return a && a.key ? (n.analytics = a, void n.look()) : !1
                },
                H = function(a, b) {
                    if (!f.isElement(a)) return !1;
                    if (f.isString(b)) {
                        var c = !1;
                        f.each(z.media, function(d) {
                            d.elem === a && (c = !0, v.notify("media.recommend." + b, d, d.elem))
                        }), c || v.notify("media.recommend." + b, null, a)
                    } else f.isObject(b) && v.notify("media.recommend.options", a, b, z.media);
                    n.look()
                },
                I = function(a) {
                    return f.isString(a) && "reset" === a ? (y.defaults.cards = {}, !1) : f.isObject(a) ? (a.hasOwnProperty("cards") && f.isObject(a.cards) && (y.defaults.cards = f.extend({}, y.defaults.cards, a.cards)), a.hasOwnProperty("recommend") && (v.notify("media.recommend.options", null, a.recommend, z.media), f.each(z.media, function(a) {
                        v.notify("media.recommend.add", a)
                    })), void(a.hasOwnProperty("integrations") && s.configure(a.integrations))) : !1
                },
                J = function(a, b) {
                    f.isFunction(a) && (b = a, a = null), r.get(v, a, b)
                };
            v.on("found", function(a) {
                a.cards && a.cards.length && d.cards.multi(a.cards, y.defaults.cards, v), a.buttons && a.buttons.length && f.each(a.buttons, function(a) {
                    C(a)
                }), a.slideshows && a.slideshows.length && f.each(a.slideshows, function(a) {
                    E(a)
                }), a.iframes && a.iframes.length && f.each(a.iframes, function(a) {
                    F(a)
                })
            }), v.on("modal.create", function(a) {
                D(a)
            }), v.on("media.ready", function(a) {
                j.send("media.meta", a)
            }), v.on("card.rendered", function(a, b) {
                j.send("card.meta", b), w.on("viewable", a, f.bind(function() {
                    this.send("card.view")
                }, b))
            }), v.on("card.rendered", function(a, b) {
                if (!y.shared) return !1;
                if (!b.query || !b.query.url) return !1;
                var c = f.hash(b.query.url);
                return c !== y.shared ? !1 : (y.shared = null, void setTimeout(function() {
                    var a = h.rect(b.elem);
                    return a && a.top ? void e.animateScroll(a.top - 5, 500) : !1
                }, 500))
            });
            var K = !1;
            v.on("pinterest.log", function() {
                if (K) return !1;
                K = !0;
                var a = {
                    type: "pidget",
                    partner: "embedly",
                    via: document.URL,
                    callback: f.getUUID()
                };
                i.script("https://log.pinterest.com/?" + m.createQuery(a), function() {
                    h.remove(h.one("#pinLog"))
                }, this, {
                    id: "pinLog"
                })
            });
            var L = function(a, b) {
                    v.on(a, b)
                },
                M = function(a, b) {
                    v.off(a, b)
                },
                N = function() {
                    h.detachEvent(window, "message", A), n.stop(), v.clear(), h.remove(h.one("#emb_xcomm")), window.embedly = null
                },
                O = function() {
                    var a = Array.prototype.slice.call(arguments, 0);
                    if (0 === a.length) return null;
                    var b = a.splice(0, 1)[0];
                    switch (b) {
                        case "card":
                            return B.apply(window, a);
                        case "button":
                            return C.apply(window, a);
                        case "modal":
                            return D.apply(window, a);
                        case "slideshow":
                            return E.apply(window, a);
                        case "look":
                            return n.look.apply(window, a);
                        case "on":
                            return L.apply(window, a);
                        case "off":
                            return M.apply(window, a);
                        case "kill":
                            return N.apply(window, a);
                        case "analytics":
                            return G.apply(window, a);
                        case "player":
                            return J.apply(window, a);
                        case "recommend":
                            return H.apply(window, a);
                        case "defaults":
                            return I.apply(window, a)
                    }
                    return null
                },
                P = function() {
                    var a = [];
                    window.embedly && f.isFunction(window.embedly) && f.isArray(window.embedly.q) && (a = window.embedly.q), window.embedly = function() {
                        return O.apply(window, arguments)
                    }, window.embedly.card = function() {
                        return B.apply(window, arguments)
                    }, window.embedly.button = function() {
                        return C.apply(window, arguments)
                    }, window.embedly.modal = function() {
                        return D.apply(window, arguments)
                    }, window.embedly.slideshow = function() {
                        return E.apply(window, arguments)
                    }, window.embedly.look = function() {
                        return n.look()
                    }, window.embedly.defaults = function() {
                        return I.apply(window, arguments)
                    }, f.each(a, function(a) {
                        window.embedly.apply(window, a)
                    }), l.connect(v), n.connect(v), i.bind(n.look), f.isFunction(window.onEmbedlyReady) && window.onEmbedlyReady.apply(this, [window.embedly])
                };
            t.allowed(window.location.toString()) ? P() : (window.embedly = function() {}, f.each(["card", "button", "modal", "slideshow", "look", "defaults"], function(a) {
                window.embedly[a] = function() {}
            }))
        }, {
            "./common/a.js": 1,
            "./common/blacklist.js": 3,
            "./common/browser.js": 4,
            "./common/dom.js": 7,
            "./common/found.js": 8,
            "./common/iframes/all.js": 9,
            "./common/integrate.js": 16,
            "./common/libring.js": 18,
            "./common/log/front.js": 19,
            "./common/meta.js": 20,
            "./common/page.js": 22,
            "./common/players.js": 23,
            "./common/ready.js": 24,
            "./common/recommend/front.js": 25,
            "./common/share.js": 26,
            "./common/urlparse.js": 29,
            "./common/utils.js": 30,
            "./common/viewport.js": 31
        }],
        conf: [function(a, b, c) {
            ! function(a) {
                a.EMB_DEBUG = !1, a.EMB_HTTPS = "http:" !== window.location.protocol ? !0 : !1, a.EMB_ORIGIN = (a.EMB_HTTPS ? "https" : "http") + "://cdn.embedly.com", a.EMB_ORIGIN_BASE = a.EMB_ORIGIN + "/", a.EMB_ASSET_VERSION = "7e055c97", a.EMB_FRAME_SRC = a.EMB_ORIGIN + "/widgets/", a.EMB_SECURE_FRAME_SRC = "https://cdn.embedly.com/widgets/", a.EMB_POST_MESSAGE = !!window.postMessage, a.EMB_PROGRESS = !0, a.EMB_APP_API = "https://app.embed.ly", a.EMB_API_KEY = "fd92ebbc52fc43fb98f69e50e7893c13";
                var b = window.location.pathname.split(".")[0].split("/");
                a.EMB_GROUP = b[b.length - 1].toLowerCase(), a.PAGE_PROGRESS_DOMAINS = []
            }("undefined" == typeof b ? this.conf = {} : b.exports)
        }, {}]
    }, {}, [32])
}();