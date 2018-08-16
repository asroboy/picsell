!function (e) {
    var t = {};

    function n(i) {
        if (t[i])return t[i].exports;
        var r = t[i] = {i: i, l: !1, exports: {}};
        return e[i].call(r.exports, r, r.exports, n), r.l = !0, r.exports
    }

    n.m = e, n.c = t, n.d = function (e, t, i) {
        n.o(e, t) || Object.defineProperty(e, t, {configurable: !1, enumerable: !0, get: i})
    }, n.r = function (e) {
        Object.defineProperty(e, "__esModule", {value: !0})
    }, n.n = function (e) {
        var t = e && e.__esModule ? function () {
            return e.default
        } : function () {
            return e
        };
        return n.d(t, "a", t), t
    }, n.o = function (e, t) {
        return Object.prototype.hasOwnProperty.call(e, t)
    }, n.p = "", n(n.s = 3)
}([function (e, t, n) {
    var i;
    !function (t, n) {
        "use strict";
        "object" == typeof e && "object" == typeof e.exports ? e.exports = t.document ? n(t, !0) : function (e) {
            if (!e.document)throw new Error("jQuery requires a window with a document");
            return n(e)
        } : n(t)
    }("undefined" != typeof window ? window : this, function (n, r) {
        "use strict";
        var o = [], s = n.document, a = Object.getPrototypeOf, u = o.slice, l = o.concat, c = o.push, f = o.indexOf, h = {}, p = h.toString, d = h.hasOwnProperty, g = d.toString, y = g.call(Object), m = {}, v = function (e) {
            return "function" == typeof e && "number" != typeof e.nodeType
        }, x = function (e) {
            return null != e && e === e.window
        }, b = {type: !0, src: !0, noModule: !0};

        function w(e, t, n) {
            var i, r = (t = t || s).createElement("script");
            if (r.text = e, n)for (i in b)n[i] && (r[i] = n[i]);
            t.head.appendChild(r).parentNode.removeChild(r)
        }

        function T(e) {
            return null == e ? e + "" : "object" == typeof e || "function" == typeof e ? h[p.call(e)] || "object" : typeof e
        }

        var C = function (e, t) {
            return new C.fn.init(e, t)
        }, S = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;

        function j(e) {
            var t = !!e && "length" in e && e.length, n = T(e);
            return !v(e) && !x(e) && ("array" === n || 0 === t || "number" == typeof t && t > 0 && t - 1 in e)
        }

        C.fn = C.prototype = {
            jquery: "3.3.1", constructor: C, length: 0, toArray: function () {
                return u.call(this)
            }, get: function (e) {
                return null == e ? u.call(this) : e < 0 ? this[e + this.length] : this[e]
            }, pushStack: function (e) {
                var t = C.merge(this.constructor(), e);
                return t.prevObject = this, t
            }, each: function (e) {
                return C.each(this, e)
            }, map: function (e) {
                return this.pushStack(C.map(this, function (t, n) {
                    return e.call(t, n, t)
                }))
            }, slice: function () {
                return this.pushStack(u.apply(this, arguments))
            }, first: function () {
                return this.eq(0)
            }, last: function () {
                return this.eq(-1)
            }, eq: function (e) {
                var t = this.length, n = +e + (e < 0 ? t : 0);
                return this.pushStack(n >= 0 && n < t ? [this[n]] : [])
            }, end: function () {
                return this.prevObject || this.constructor()
            }, push: c, sort: o.sort, splice: o.splice
        }, C.extend = C.fn.extend = function () {
            var e, t, n, i, r, o, s = arguments[0] || {}, a = 1, u = arguments.length, l = !1;
            for ("boolean" == typeof s && (l = s, s = arguments[a] || {}, a++), "object" == typeof s || v(s) || (s = {}), a === u && (s = this, a--); a < u; a++)if (null != (e = arguments[a]))for (t in e)n = s[t], s !== (i = e[t]) && (l && i && (C.isPlainObject(i) || (r = Array.isArray(i))) ? (r ? (r = !1, o = n && Array.isArray(n) ? n : []) : o = n && C.isPlainObject(n) ? n : {}, s[t] = C.extend(l, o, i)) : void 0 !== i && (s[t] = i));
            return s
        }, C.extend({
            expando: "jQuery" + ("3.3.1" + Math.random()).replace(/\D/g, ""),
            isReady: !0,
            error: function (e) {
                throw new Error(e)
            },
            noop: function () {
            },
            isPlainObject: function (e) {
                var t, n;
                return !(!e || "[object Object]" !== p.call(e)) && (!(t = a(e)) || "function" == typeof(n = d.call(t, "constructor") && t.constructor) && g.call(n) === y)
            },
            isEmptyObject: function (e) {
                var t;
                for (t in e)return !1;
                return !0
            },
            globalEval: function (e) {
                w(e)
            },
            each: function (e, t) {
                var n, i = 0;
                if (j(e))for (n = e.length; i < n && !1 !== t.call(e[i], i, e[i]); i++); else for (i in e)if (!1 === t.call(e[i], i, e[i]))break;
                return e
            },
            trim: function (e) {
                return null == e ? "" : (e + "").replace(S, "")
            },
            makeArray: function (e, t) {
                var n = t || [];
                return null != e && (j(Object(e)) ? C.merge(n, "string" == typeof e ? [e] : e) : c.call(n, e)), n
            },
            inArray: function (e, t, n) {
                return null == t ? -1 : f.call(t, e, n)
            },
            merge: function (e, t) {
                for (var n = +t.length, i = 0, r = e.length; i < n; i++)e[r++] = t[i];
                return e.length = r, e
            },
            grep: function (e, t, n) {
                for (var i = [], r = 0, o = e.length, s = !n; r < o; r++)!t(e[r], r) !== s && i.push(e[r]);
                return i
            },
            map: function (e, t, n) {
                var i, r, o = 0, s = [];
                if (j(e))for (i = e.length; o < i; o++)null != (r = t(e[o], o, n)) && s.push(r); else for (o in e)null != (r = t(e[o], o, n)) && s.push(r);
                return l.apply([], s)
            },
            guid: 1,
            support: m
        }), "function" == typeof Symbol && (C.fn[Symbol.iterator] = o[Symbol.iterator]), C.each("Boolean Number String Function Array Date RegExp Object Error Symbol".split(" "), function (e, t) {
            h["[object " + t + "]"] = t.toLowerCase()
        });
        var E = function (e) {
            var t, n, i, r, o, s, a, u, l, c, f, h, p, d, g, y, m, v, x, b = "sizzle" + 1 * new Date, w = e.document, T = 0, C = 0, S = se(), j = se(), E = se(), A = function (e, t) {
                return e === t && (f = !0), 0
            }, k = {}.hasOwnProperty, R = [], N = R.pop, D = R.push, H = R.push, O = R.slice, L = function (e, t) {
                for (var n = 0, i = e.length; n < i; n++)if (e[n] === t)return n;
                return -1
            }, q = "checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped", I = "[\\x20\\t\\r\\n\\f]", F = "(?:\\\\.|[\\w-]|[^\0-\\xa0])+", M = "\\[" + I + "*(" + F + ")(?:" + I + "*([*^$|!~]?=)" + I + "*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|(" + F + "))|)" + I + "*\\]", P = ":(" + F + ")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|" + M + ")*)|.*)\\)|)", B = new RegExp(I + "+", "g"), $ = new RegExp("^" + I + "+|((?:^|[^\\\\])(?:\\\\.)*)" + I + "+$", "g"), z = new RegExp("^" + I + "*," + I + "*"), W = new RegExp("^" + I + "*([>+~]|" + I + ")" + I + "*"), _ = new RegExp("=" + I + "*([^\\]'\"]*?)" + I + "*\\]", "g"), V = new RegExp(P), U = new RegExp("^" + F + "$"), G = {
                ID: new RegExp("^#(" + F + ")"),
                CLASS: new RegExp("^\\.(" + F + ")"),
                TAG: new RegExp("^(" + F + "|[*])"),
                ATTR: new RegExp("^" + M),
                PSEUDO: new RegExp("^" + P),
                CHILD: new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(" + I + "*(even|odd|(([+-]|)(\\d*)n|)" + I + "*(?:([+-]|)" + I + "*(\\d+)|))" + I + "*\\)|)", "i"),
                bool: new RegExp("^(?:" + q + ")$", "i"),
                needsContext: new RegExp("^" + I + "*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\(" + I + "*((?:-\\d)?\\d*)" + I + "*\\)|)(?=[^-]|$)", "i")
            }, X = /^(?:input|select|textarea|button)$/i, Y = /^h\d$/i, Q = /^[^{]+\{\s*\[native \w/, J = /^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/, K = /[+~]/, Z = new RegExp("\\\\([\\da-f]{1,6}" + I + "?|(" + I + ")|.)", "ig"), ee = function (e, t, n) {
                var i = "0x" + t - 65536;
                return i != i || n ? t : i < 0 ? String.fromCharCode(i + 65536) : String.fromCharCode(i >> 10 | 55296, 1023 & i | 56320)
            }, te = /([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g, ne = function (e, t) {
                return t ? "\0" === e ? "�" : e.slice(0, -1) + "\\" + e.charCodeAt(e.length - 1).toString(16) + " " : "\\" + e
            }, ie = function () {
                h()
            }, re = ve(function (e) {
                return !0 === e.disabled && ("form" in e || "label" in e)
            }, {dir: "parentNode", next: "legend"});
            try {
                H.apply(R = O.call(w.childNodes), w.childNodes), R[w.childNodes.length].nodeType
            } catch (e) {
                H = {
                    apply: R.length ? function (e, t) {
                        D.apply(e, O.call(t))
                    } : function (e, t) {
                        for (var n = e.length, i = 0; e[n++] = t[i++];);
                        e.length = n - 1
                    }
                }
            }
            function oe(e, t, i, r) {
                var o, a, l, c, f, d, m, v = t && t.ownerDocument, T = t ? t.nodeType : 9;
                if (i = i || [], "string" != typeof e || !e || 1 !== T && 9 !== T && 11 !== T)return i;
                if (!r && ((t ? t.ownerDocument || t : w) !== p && h(t), t = t || p, g)) {
                    if (11 !== T && (f = J.exec(e)))if (o = f[1]) {
                        if (9 === T) {
                            if (!(l = t.getElementById(o)))return i;
                            if (l.id === o)return i.push(l), i
                        } else if (v && (l = v.getElementById(o)) && x(t, l) && l.id === o)return i.push(l), i
                    } else {
                        if (f[2])return H.apply(i, t.getElementsByTagName(e)), i;
                        if ((o = f[3]) && n.getElementsByClassName && t.getElementsByClassName)return H.apply(i, t.getElementsByClassName(o)), i
                    }
                    if (n.qsa && !E[e + " "] && (!y || !y.test(e))) {
                        if (1 !== T)v = t, m = e; else if ("object" !== t.nodeName.toLowerCase()) {
                            for ((c = t.getAttribute("id")) ? c = c.replace(te, ne) : t.setAttribute("id", c = b), a = (d = s(e)).length; a--;)d[a] = "#" + c + " " + me(d[a]);
                            m = d.join(","), v = K.test(e) && ge(t.parentNode) || t
                        }
                        if (m)try {
                            return H.apply(i, v.querySelectorAll(m)), i
                        } catch (e) {
                        } finally {
                            c === b && t.removeAttribute("id")
                        }
                    }
                }
                return u(e.replace($, "$1"), t, i, r)
            }

            function se() {
                var e = [];
                return function t(n, r) {
                    return e.push(n + " ") > i.cacheLength && delete t[e.shift()], t[n + " "] = r
                }
            }

            function ae(e) {
                return e[b] = !0, e
            }

            function ue(e) {
                var t = p.createElement("fieldset");
                try {
                    return !!e(t)
                } catch (e) {
                    return !1
                } finally {
                    t.parentNode && t.parentNode.removeChild(t), t = null
                }
            }

            function le(e, t) {
                for (var n = e.split("|"), r = n.length; r--;)i.attrHandle[n[r]] = t
            }

            function ce(e, t) {
                var n = t && e, i = n && 1 === e.nodeType && 1 === t.nodeType && e.sourceIndex - t.sourceIndex;
                if (i)return i;
                if (n)for (; n = n.nextSibling;)if (n === t)return -1;
                return e ? 1 : -1
            }

            function fe(e) {
                return function (t) {
                    return "input" === t.nodeName.toLowerCase() && t.type === e
                }
            }

            function he(e) {
                return function (t) {
                    var n = t.nodeName.toLowerCase();
                    return ("input" === n || "button" === n) && t.type === e
                }
            }

            function pe(e) {
                return function (t) {
                    return "form" in t ? t.parentNode && !1 === t.disabled ? "label" in t ? "label" in t.parentNode ? t.parentNode.disabled === e : t.disabled === e : t.isDisabled === e || t.isDisabled !== !e && re(t) === e : t.disabled === e : "label" in t && t.disabled === e
                }
            }

            function de(e) {
                return ae(function (t) {
                    return t = +t, ae(function (n, i) {
                        for (var r, o = e([], n.length, t), s = o.length; s--;)n[r = o[s]] && (n[r] = !(i[r] = n[r]))
                    })
                })
            }

            function ge(e) {
                return e && void 0 !== e.getElementsByTagName && e
            }

            for (t in n = oe.support = {}, o = oe.isXML = function (e) {
                var t = e && (e.ownerDocument || e).documentElement;
                return !!t && "HTML" !== t.nodeName
            }, h = oe.setDocument = function (e) {
                var t, r, s = e ? e.ownerDocument || e : w;
                return s !== p && 9 === s.nodeType && s.documentElement ? (d = (p = s).documentElement, g = !o(p), w !== p && (r = p.defaultView) && r.top !== r && (r.addEventListener ? r.addEventListener("unload", ie, !1) : r.attachEvent && r.attachEvent("onunload", ie)), n.attributes = ue(function (e) {
                    return e.className = "i", !e.getAttribute("className")
                }), n.getElementsByTagName = ue(function (e) {
                    return e.appendChild(p.createComment("")), !e.getElementsByTagName("*").length
                }), n.getElementsByClassName = Q.test(p.getElementsByClassName), n.getById = ue(function (e) {
                    return d.appendChild(e).id = b, !p.getElementsByName || !p.getElementsByName(b).length
                }), n.getById ? (i.filter.ID = function (e) {
                    var t = e.replace(Z, ee);
                    return function (e) {
                        return e.getAttribute("id") === t
                    }
                }, i.find.ID = function (e, t) {
                    if (void 0 !== t.getElementById && g) {
                        var n = t.getElementById(e);
                        return n ? [n] : []
                    }
                }) : (i.filter.ID = function (e) {
                    var t = e.replace(Z, ee);
                    return function (e) {
                        var n = void 0 !== e.getAttributeNode && e.getAttributeNode("id");
                        return n && n.value === t
                    }
                }, i.find.ID = function (e, t) {
                    if (void 0 !== t.getElementById && g) {
                        var n, i, r, o = t.getElementById(e);
                        if (o) {
                            if ((n = o.getAttributeNode("id")) && n.value === e)return [o];
                            for (r = t.getElementsByName(e), i = 0; o = r[i++];)if ((n = o.getAttributeNode("id")) && n.value === e)return [o]
                        }
                        return []
                    }
                }), i.find.TAG = n.getElementsByTagName ? function (e, t) {
                    return void 0 !== t.getElementsByTagName ? t.getElementsByTagName(e) : n.qsa ? t.querySelectorAll(e) : void 0
                } : function (e, t) {
                    var n, i = [], r = 0, o = t.getElementsByTagName(e);
                    if ("*" === e) {
                        for (; n = o[r++];)1 === n.nodeType && i.push(n);
                        return i
                    }
                    return o
                }, i.find.CLASS = n.getElementsByClassName && function (e, t) {
                        if (void 0 !== t.getElementsByClassName && g)return t.getElementsByClassName(e)
                    }, m = [], y = [], (n.qsa = Q.test(p.querySelectorAll)) && (ue(function (e) {
                    d.appendChild(e).innerHTML = "<a id='" + b + "'></a><select id='" + b + "-\r\\' msallowcapture=''><option selected=''></option></select>", e.querySelectorAll("[msallowcapture^='']").length && y.push("[*^$]=" + I + "*(?:''|\"\")"), e.querySelectorAll("[selected]").length || y.push("\\[" + I + "*(?:value|" + q + ")"), e.querySelectorAll("[id~=" + b + "-]").length || y.push("~="), e.querySelectorAll(":checked").length || y.push(":checked"), e.querySelectorAll("a#" + b + "+*").length || y.push(".#.+[+~]")
                }), ue(function (e) {
                    e.innerHTML = "<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";
                    var t = p.createElement("input");
                    t.setAttribute("type", "hidden"), e.appendChild(t).setAttribute("name", "D"), e.querySelectorAll("[name=d]").length && y.push("name" + I + "*[*^$|!~]?="), 2 !== e.querySelectorAll(":enabled").length && y.push(":enabled", ":disabled"), d.appendChild(e).disabled = !0, 2 !== e.querySelectorAll(":disabled").length && y.push(":enabled", ":disabled"), e.querySelectorAll("*,:x"), y.push(",.*:")
                })), (n.matchesSelector = Q.test(v = d.matches || d.webkitMatchesSelector || d.mozMatchesSelector || d.oMatchesSelector || d.msMatchesSelector)) && ue(function (e) {
                    n.disconnectedMatch = v.call(e, "*"), v.call(e, "[s!='']:x"), m.push("!=", P)
                }), y = y.length && new RegExp(y.join("|")), m = m.length && new RegExp(m.join("|")), t = Q.test(d.compareDocumentPosition), x = t || Q.test(d.contains) ? function (e, t) {
                    var n = 9 === e.nodeType ? e.documentElement : e, i = t && t.parentNode;
                    return e === i || !(!i || 1 !== i.nodeType || !(n.contains ? n.contains(i) : e.compareDocumentPosition && 16 & e.compareDocumentPosition(i)))
                } : function (e, t) {
                    if (t)for (; t = t.parentNode;)if (t === e)return !0;
                    return !1
                }, A = t ? function (e, t) {
                    if (e === t)return f = !0, 0;
                    var i = !e.compareDocumentPosition - !t.compareDocumentPosition;
                    return i || (1 & (i = (e.ownerDocument || e) === (t.ownerDocument || t) ? e.compareDocumentPosition(t) : 1) || !n.sortDetached && t.compareDocumentPosition(e) === i ? e === p || e.ownerDocument === w && x(w, e) ? -1 : t === p || t.ownerDocument === w && x(w, t) ? 1 : c ? L(c, e) - L(c, t) : 0 : 4 & i ? -1 : 1)
                } : function (e, t) {
                    if (e === t)return f = !0, 0;
                    var n, i = 0, r = e.parentNode, o = t.parentNode, s = [e], a = [t];
                    if (!r || !o)return e === p ? -1 : t === p ? 1 : r ? -1 : o ? 1 : c ? L(c, e) - L(c, t) : 0;
                    if (r === o)return ce(e, t);
                    for (n = e; n = n.parentNode;)s.unshift(n);
                    for (n = t; n = n.parentNode;)a.unshift(n);
                    for (; s[i] === a[i];)i++;
                    return i ? ce(s[i], a[i]) : s[i] === w ? -1 : a[i] === w ? 1 : 0
                }, p) : p
            }, oe.matches = function (e, t) {
                return oe(e, null, null, t)
            }, oe.matchesSelector = function (e, t) {
                if ((e.ownerDocument || e) !== p && h(e), t = t.replace(_, "='$1']"), n.matchesSelector && g && !E[t + " "] && (!m || !m.test(t)) && (!y || !y.test(t)))try {
                    var i = v.call(e, t);
                    if (i || n.disconnectedMatch || e.document && 11 !== e.document.nodeType)return i
                } catch (e) {
                }
                return oe(t, p, null, [e]).length > 0
            }, oe.contains = function (e, t) {
                return (e.ownerDocument || e) !== p && h(e), x(e, t)
            }, oe.attr = function (e, t) {
                (e.ownerDocument || e) !== p && h(e);
                var r = i.attrHandle[t.toLowerCase()], o = r && k.call(i.attrHandle, t.toLowerCase()) ? r(e, t, !g) : void 0;
                return void 0 !== o ? o : n.attributes || !g ? e.getAttribute(t) : (o = e.getAttributeNode(t)) && o.specified ? o.value : null
            }, oe.escape = function (e) {
                return (e + "").replace(te, ne)
            }, oe.error = function (e) {
                throw new Error("Syntax error, unrecognized expression: " + e)
            }, oe.uniqueSort = function (e) {
                var t, i = [], r = 0, o = 0;
                if (f = !n.detectDuplicates, c = !n.sortStable && e.slice(0), e.sort(A), f) {
                    for (; t = e[o++];)t === e[o] && (r = i.push(o));
                    for (; r--;)e.splice(i[r], 1)
                }
                return c = null, e
            }, r = oe.getText = function (e) {
                var t, n = "", i = 0, o = e.nodeType;
                if (o) {
                    if (1 === o || 9 === o || 11 === o) {
                        if ("string" == typeof e.textContent)return e.textContent;
                        for (e = e.firstChild; e; e = e.nextSibling)n += r(e)
                    } else if (3 === o || 4 === o)return e.nodeValue
                } else for (; t = e[i++];)n += r(t);
                return n
            }, (i = oe.selectors = {
                cacheLength: 50,
                createPseudo: ae,
                match: G,
                attrHandle: {},
                find: {},
                relative: {
                    ">": {dir: "parentNode", first: !0},
                    " ": {dir: "parentNode"},
                    "+": {dir: "previousSibling", first: !0},
                    "~": {dir: "previousSibling"}
                },
                preFilter: {
                    ATTR: function (e) {
                        return e[1] = e[1].replace(Z, ee), e[3] = (e[3] || e[4] || e[5] || "").replace(Z, ee), "~=" === e[2] && (e[3] = " " + e[3] + " "), e.slice(0, 4)
                    }, CHILD: function (e) {
                        return e[1] = e[1].toLowerCase(), "nth" === e[1].slice(0, 3) ? (e[3] || oe.error(e[0]), e[4] = +(e[4] ? e[5] + (e[6] || 1) : 2 * ("even" === e[3] || "odd" === e[3])), e[5] = +(e[7] + e[8] || "odd" === e[3])) : e[3] && oe.error(e[0]), e
                    }, PSEUDO: function (e) {
                        var t, n = !e[6] && e[2];
                        return G.CHILD.test(e[0]) ? null : (e[3] ? e[2] = e[4] || e[5] || "" : n && V.test(n) && (t = s(n, !0)) && (t = n.indexOf(")", n.length - t) - n.length) && (e[0] = e[0].slice(0, t), e[2] = n.slice(0, t)), e.slice(0, 3))
                    }
                },
                filter: {
                    TAG: function (e) {
                        var t = e.replace(Z, ee).toLowerCase();
                        return "*" === e ? function () {
                            return !0
                        } : function (e) {
                            return e.nodeName && e.nodeName.toLowerCase() === t
                        }
                    }, CLASS: function (e) {
                        var t = S[e + " "];
                        return t || (t = new RegExp("(^|" + I + ")" + e + "(" + I + "|$)")) && S(e, function (e) {
                                return t.test("string" == typeof e.className && e.className || void 0 !== e.getAttribute && e.getAttribute("class") || "")
                            })
                    }, ATTR: function (e, t, n) {
                        return function (i) {
                            var r = oe.attr(i, e);
                            return null == r ? "!=" === t : !t || (r += "", "=" === t ? r === n : "!=" === t ? r !== n : "^=" === t ? n && 0 === r.indexOf(n) : "*=" === t ? n && r.indexOf(n) > -1 : "$=" === t ? n && r.slice(-n.length) === n : "~=" === t ? (" " + r.replace(B, " ") + " ").indexOf(n) > -1 : "|=" === t && (r === n || r.slice(0, n.length + 1) === n + "-"))
                        }
                    }, CHILD: function (e, t, n, i, r) {
                        var o = "nth" !== e.slice(0, 3), s = "last" !== e.slice(-4), a = "of-type" === t;
                        return 1 === i && 0 === r ? function (e) {
                            return !!e.parentNode
                        } : function (t, n, u) {
                            var l, c, f, h, p, d, g = o !== s ? "nextSibling" : "previousSibling", y = t.parentNode, m = a && t.nodeName.toLowerCase(), v = !u && !a, x = !1;
                            if (y) {
                                if (o) {
                                    for (; g;) {
                                        for (h = t; h = h[g];)if (a ? h.nodeName.toLowerCase() === m : 1 === h.nodeType)return !1;
                                        d = g = "only" === e && !d && "nextSibling"
                                    }
                                    return !0
                                }
                                if (d = [s ? y.firstChild : y.lastChild], s && v) {
                                    for (x = (p = (l = (c = (f = (h = y)[b] || (h[b] = {}))[h.uniqueID] || (f[h.uniqueID] = {}))[e] || [])[0] === T && l[1]) && l[2], h = p && y.childNodes[p]; h = ++p && h && h[g] || (x = p = 0) || d.pop();)if (1 === h.nodeType && ++x && h === t) {
                                        c[e] = [T, p, x];
                                        break
                                    }
                                } else if (v && (x = p = (l = (c = (f = (h = t)[b] || (h[b] = {}))[h.uniqueID] || (f[h.uniqueID] = {}))[e] || [])[0] === T && l[1]), !1 === x)for (; (h = ++p && h && h[g] || (x = p = 0) || d.pop()) && ((a ? h.nodeName.toLowerCase() !== m : 1 !== h.nodeType) || !++x || (v && ((c = (f = h[b] || (h[b] = {}))[h.uniqueID] || (f[h.uniqueID] = {}))[e] = [T, x]), h !== t)););
                                return (x -= r) === i || x % i == 0 && x / i >= 0
                            }
                        }
                    }, PSEUDO: function (e, t) {
                        var n, r = i.pseudos[e] || i.setFilters[e.toLowerCase()] || oe.error("unsupported pseudo: " + e);
                        return r[b] ? r(t) : r.length > 1 ? (n = [e, e, "", t], i.setFilters.hasOwnProperty(e.toLowerCase()) ? ae(function (e, n) {
                            for (var i, o = r(e, t), s = o.length; s--;)e[i = L(e, o[s])] = !(n[i] = o[s])
                        }) : function (e) {
                            return r(e, 0, n)
                        }) : r
                    }
                },
                pseudos: {
                    not: ae(function (e) {
                        var t = [], n = [], i = a(e.replace($, "$1"));
                        return i[b] ? ae(function (e, t, n, r) {
                            for (var o, s = i(e, null, r, []), a = e.length; a--;)(o = s[a]) && (e[a] = !(t[a] = o))
                        }) : function (e, r, o) {
                            return t[0] = e, i(t, null, o, n), t[0] = null, !n.pop()
                        }
                    }), has: ae(function (e) {
                        return function (t) {
                            return oe(e, t).length > 0
                        }
                    }), contains: ae(function (e) {
                        return e = e.replace(Z, ee), function (t) {
                            return (t.textContent || t.innerText || r(t)).indexOf(e) > -1
                        }
                    }), lang: ae(function (e) {
                        return U.test(e || "") || oe.error("unsupported lang: " + e), e = e.replace(Z, ee).toLowerCase(), function (t) {
                            var n;
                            do {
                                if (n = g ? t.lang : t.getAttribute("xml:lang") || t.getAttribute("lang"))return (n = n.toLowerCase()) === e || 0 === n.indexOf(e + "-")
                            } while ((t = t.parentNode) && 1 === t.nodeType);
                            return !1
                        }
                    }), target: function (t) {
                        var n = e.location && e.location.hash;
                        return n && n.slice(1) === t.id
                    }, root: function (e) {
                        return e === d
                    }, focus: function (e) {
                        return e === p.activeElement && (!p.hasFocus || p.hasFocus()) && !!(e.type || e.href || ~e.tabIndex)
                    }, enabled: pe(!1), disabled: pe(!0), checked: function (e) {
                        var t = e.nodeName.toLowerCase();
                        return "input" === t && !!e.checked || "option" === t && !!e.selected
                    }, selected: function (e) {
                        return e.parentNode && e.parentNode.selectedIndex, !0 === e.selected
                    }, empty: function (e) {
                        for (e = e.firstChild; e; e = e.nextSibling)if (e.nodeType < 6)return !1;
                        return !0
                    }, parent: function (e) {
                        return !i.pseudos.empty(e)
                    }, header: function (e) {
                        return Y.test(e.nodeName)
                    }, input: function (e) {
                        return X.test(e.nodeName)
                    }, button: function (e) {
                        var t = e.nodeName.toLowerCase();
                        return "input" === t && "button" === e.type || "button" === t
                    }, text: function (e) {
                        var t;
                        return "input" === e.nodeName.toLowerCase() && "text" === e.type && (null == (t = e.getAttribute("type")) || "text" === t.toLowerCase())
                    }, first: de(function () {
                        return [0]
                    }), last: de(function (e, t) {
                        return [t - 1]
                    }), eq: de(function (e, t, n) {
                        return [n < 0 ? n + t : n]
                    }), even: de(function (e, t) {
                        for (var n = 0; n < t; n += 2)e.push(n);
                        return e
                    }), odd: de(function (e, t) {
                        for (var n = 1; n < t; n += 2)e.push(n);
                        return e
                    }), lt: de(function (e, t, n) {
                        for (var i = n < 0 ? n + t : n; --i >= 0;)e.push(i);
                        return e
                    }), gt: de(function (e, t, n) {
                        for (var i = n < 0 ? n + t : n; ++i < t;)e.push(i);
                        return e
                    })
                }
            }).pseudos.nth = i.pseudos.eq, {
                radio: !0,
                checkbox: !0,
                file: !0,
                password: !0,
                image: !0
            })i.pseudos[t] = fe(t);
            for (t in{submit: !0, reset: !0})i.pseudos[t] = he(t);
            function ye() {
            }

            function me(e) {
                for (var t = 0, n = e.length, i = ""; t < n; t++)i += e[t].value;
                return i
            }

            function ve(e, t, n) {
                var i = t.dir, r = t.next, o = r || i, s = n && "parentNode" === o, a = C++;
                return t.first ? function (t, n, r) {
                    for (; t = t[i];)if (1 === t.nodeType || s)return e(t, n, r);
                    return !1
                } : function (t, n, u) {
                    var l, c, f, h = [T, a];
                    if (u) {
                        for (; t = t[i];)if ((1 === t.nodeType || s) && e(t, n, u))return !0
                    } else for (; t = t[i];)if (1 === t.nodeType || s)if (c = (f = t[b] || (t[b] = {}))[t.uniqueID] || (f[t.uniqueID] = {}), r && r === t.nodeName.toLowerCase())t = t[i] || t; else {
                        if ((l = c[o]) && l[0] === T && l[1] === a)return h[2] = l[2];
                        if (c[o] = h, h[2] = e(t, n, u))return !0
                    }
                    return !1
                }
            }

            function xe(e) {
                return e.length > 1 ? function (t, n, i) {
                    for (var r = e.length; r--;)if (!e[r](t, n, i))return !1;
                    return !0
                } : e[0]
            }

            function be(e, t, n, i, r) {
                for (var o, s = [], a = 0, u = e.length, l = null != t; a < u; a++)(o = e[a]) && (n && !n(o, i, r) || (s.push(o), l && t.push(a)));
                return s
            }

            function we(e, t, n, i, r, o) {
                return i && !i[b] && (i = we(i)), r && !r[b] && (r = we(r, o)), ae(function (o, s, a, u) {
                    var l, c, f, h = [], p = [], d = s.length, g = o || function (e, t, n) {
                            for (var i = 0, r = t.length; i < r; i++)oe(e, t[i], n);
                            return n
                        }(t || "*", a.nodeType ? [a] : a, []), y = !e || !o && t ? g : be(g, h, e, a, u), m = n ? r || (o ? e : d || i) ? [] : s : y;
                    if (n && n(y, m, a, u), i)for (l = be(m, p), i(l, [], a, u), c = l.length; c--;)(f = l[c]) && (m[p[c]] = !(y[p[c]] = f));
                    if (o) {
                        if (r || e) {
                            if (r) {
                                for (l = [], c = m.length; c--;)(f = m[c]) && l.push(y[c] = f);
                                r(null, m = [], l, u)
                            }
                            for (c = m.length; c--;)(f = m[c]) && (l = r ? L(o, f) : h[c]) > -1 && (o[l] = !(s[l] = f))
                        }
                    } else m = be(m === s ? m.splice(d, m.length) : m), r ? r(null, s, m, u) : H.apply(s, m)
                })
            }

            function Te(e) {
                for (var t, n, r, o = e.length, s = i.relative[e[0].type], a = s || i.relative[" "], u = s ? 1 : 0, c = ve(function (e) {
                    return e === t
                }, a, !0), f = ve(function (e) {
                    return L(t, e) > -1
                }, a, !0), h = [function (e, n, i) {
                    var r = !s && (i || n !== l) || ((t = n).nodeType ? c(e, n, i) : f(e, n, i));
                    return t = null, r
                }]; u < o; u++)if (n = i.relative[e[u].type])h = [ve(xe(h), n)]; else {
                    if ((n = i.filter[e[u].type].apply(null, e[u].matches))[b]) {
                        for (r = ++u; r < o && !i.relative[e[r].type]; r++);
                        return we(u > 1 && xe(h), u > 1 && me(e.slice(0, u - 1).concat({value: " " === e[u - 2].type ? "*" : ""})).replace($, "$1"), n, u < r && Te(e.slice(u, r)), r < o && Te(e = e.slice(r)), r < o && me(e))
                    }
                    h.push(n)
                }
                return xe(h)
            }

            return ye.prototype = i.filters = i.pseudos, i.setFilters = new ye, s = oe.tokenize = function (e, t) {
                var n, r, o, s, a, u, l, c = j[e + " "];
                if (c)return t ? 0 : c.slice(0);
                for (a = e, u = [], l = i.preFilter; a;) {
                    for (s in n && !(r = z.exec(a)) || (r && (a = a.slice(r[0].length) || a), u.push(o = [])), n = !1, (r = W.exec(a)) && (n = r.shift(), o.push({
                        value: n,
                        type: r[0].replace($, " ")
                    }), a = a.slice(n.length)), i.filter)!(r = G[s].exec(a)) || l[s] && !(r = l[s](r)) || (n = r.shift(), o.push({
                        value: n,
                        type: s,
                        matches: r
                    }), a = a.slice(n.length));
                    if (!n)break
                }
                return t ? a.length : a ? oe.error(e) : j(e, u).slice(0)
            }, a = oe.compile = function (e, t) {
                var n, r = [], o = [], a = E[e + " "];
                if (!a) {
                    for (t || (t = s(e)), n = t.length; n--;)(a = Te(t[n]))[b] ? r.push(a) : o.push(a);
                    (a = E(e, function (e, t) {
                        var n = t.length > 0, r = e.length > 0, o = function (o, s, a, u, c) {
                            var f, d, y, m = 0, v = "0", x = o && [], b = [], w = l, C = o || r && i.find.TAG("*", c), S = T += null == w ? 1 : Math.random() || .1, j = C.length;
                            for (c && (l = s === p || s || c); v !== j && null != (f = C[v]); v++) {
                                if (r && f) {
                                    for (d = 0, s || f.ownerDocument === p || (h(f), a = !g); y = e[d++];)if (y(f, s || p, a)) {
                                        u.push(f);
                                        break
                                    }
                                    c && (T = S)
                                }
                                n && ((f = !y && f) && m--, o && x.push(f))
                            }
                            if (m += v, n && v !== m) {
                                for (d = 0; y = t[d++];)y(x, b, s, a);
                                if (o) {
                                    if (m > 0)for (; v--;)x[v] || b[v] || (b[v] = N.call(u));
                                    b = be(b)
                                }
                                H.apply(u, b), c && !o && b.length > 0 && m + t.length > 1 && oe.uniqueSort(u)
                            }
                            return c && (T = S, l = w), x
                        };
                        return n ? ae(o) : o
                    }(o, r))).selector = e
                }
                return a
            }, u = oe.select = function (e, t, n, r) {
                var o, u, l, c, f, h = "function" == typeof e && e, p = !r && s(e = h.selector || e);
                if (n = n || [], 1 === p.length) {
                    if ((u = p[0] = p[0].slice(0)).length > 2 && "ID" === (l = u[0]).type && 9 === t.nodeType && g && i.relative[u[1].type]) {
                        if (!(t = (i.find.ID(l.matches[0].replace(Z, ee), t) || [])[0]))return n;
                        h && (t = t.parentNode), e = e.slice(u.shift().value.length)
                    }
                    for (o = G.needsContext.test(e) ? 0 : u.length; o-- && (l = u[o], !i.relative[c = l.type]);)if ((f = i.find[c]) && (r = f(l.matches[0].replace(Z, ee), K.test(u[0].type) && ge(t.parentNode) || t))) {
                        if (u.splice(o, 1), !(e = r.length && me(u)))return H.apply(n, r), n;
                        break
                    }
                }
                return (h || a(e, p))(r, t, !g, n, !t || K.test(e) && ge(t.parentNode) || t), n
            }, n.sortStable = b.split("").sort(A).join("") === b, n.detectDuplicates = !!f, h(), n.sortDetached = ue(function (e) {
                return 1 & e.compareDocumentPosition(p.createElement("fieldset"))
            }), ue(function (e) {
                return e.innerHTML = "<a href='#'></a>", "#" === e.firstChild.getAttribute("href")
            }) || le("type|href|height|width", function (e, t, n) {
                if (!n)return e.getAttribute(t, "type" === t.toLowerCase() ? 1 : 2)
            }), n.attributes && ue(function (e) {
                return e.innerHTML = "<input/>", e.firstChild.setAttribute("value", ""), "" === e.firstChild.getAttribute("value")
            }) || le("value", function (e, t, n) {
                if (!n && "input" === e.nodeName.toLowerCase())return e.defaultValue
            }), ue(function (e) {
                return null == e.getAttribute("disabled")
            }) || le(q, function (e, t, n) {
                var i;
                if (!n)return !0 === e[t] ? t.toLowerCase() : (i = e.getAttributeNode(t)) && i.specified ? i.value : null
            }), oe
        }(n);
        C.find = E, C.expr = E.selectors, C.expr[":"] = C.expr.pseudos, C.uniqueSort = C.unique = E.uniqueSort, C.text = E.getText, C.isXMLDoc = E.isXML, C.contains = E.contains, C.escapeSelector = E.escape;
        var A = function (e, t, n) {
            for (var i = [], r = void 0 !== n; (e = e[t]) && 9 !== e.nodeType;)if (1 === e.nodeType) {
                if (r && C(e).is(n))break;
                i.push(e)
            }
            return i
        }, k = function (e, t) {
            for (var n = []; e; e = e.nextSibling)1 === e.nodeType && e !== t && n.push(e);
            return n
        }, R = C.expr.match.needsContext;

        function N(e, t) {
            return e.nodeName && e.nodeName.toLowerCase() === t.toLowerCase()
        }

        var D = /^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i;

        function H(e, t, n) {
            return v(t) ? C.grep(e, function (e, i) {
                return !!t.call(e, i, e) !== n
            }) : t.nodeType ? C.grep(e, function (e) {
                return e === t !== n
            }) : "string" != typeof t ? C.grep(e, function (e) {
                return f.call(t, e) > -1 !== n
            }) : C.filter(t, e, n)
        }

        C.filter = function (e, t, n) {
            var i = t[0];
            return n && (e = ":not(" + e + ")"), 1 === t.length && 1 === i.nodeType ? C.find.matchesSelector(i, e) ? [i] : [] : C.find.matches(e, C.grep(t, function (e) {
                return 1 === e.nodeType
            }))
        }, C.fn.extend({
            find: function (e) {
                var t, n, i = this.length, r = this;
                if ("string" != typeof e)return this.pushStack(C(e).filter(function () {
                    for (t = 0; t < i; t++)if (C.contains(r[t], this))return !0
                }));
                for (n = this.pushStack([]), t = 0; t < i; t++)C.find(e, r[t], n);
                return i > 1 ? C.uniqueSort(n) : n
            }, filter: function (e) {
                return this.pushStack(H(this, e || [], !1))
            }, not: function (e) {
                return this.pushStack(H(this, e || [], !0))
            }, is: function (e) {
                return !!H(this, "string" == typeof e && R.test(e) ? C(e) : e || [], !1).length
            }
        });
        var O, L = /^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;
        (C.fn.init = function (e, t, n) {
            var i, r;
            if (!e)return this;
            if (n = n || O, "string" == typeof e) {
                if (!(i = "<" === e[0] && ">" === e[e.length - 1] && e.length >= 3 ? [null, e, null] : L.exec(e)) || !i[1] && t)return !t || t.jquery ? (t || n).find(e) : this.constructor(t).find(e);
                if (i[1]) {
                    if (t = t instanceof C ? t[0] : t, C.merge(this, C.parseHTML(i[1], t && t.nodeType ? t.ownerDocument || t : s, !0)), D.test(i[1]) && C.isPlainObject(t))for (i in t)v(this[i]) ? this[i](t[i]) : this.attr(i, t[i]);
                    return this
                }
                return (r = s.getElementById(i[2])) && (this[0] = r, this.length = 1), this
            }
            return e.nodeType ? (this[0] = e, this.length = 1, this) : v(e) ? void 0 !== n.ready ? n.ready(e) : e(C) : C.makeArray(e, this)
        }).prototype = C.fn, O = C(s);
        var q = /^(?:parents|prev(?:Until|All))/, I = {children: !0, contents: !0, next: !0, prev: !0};

        function F(e, t) {
            for (; (e = e[t]) && 1 !== e.nodeType;);
            return e
        }

        C.fn.extend({
            has: function (e) {
                var t = C(e, this), n = t.length;
                return this.filter(function () {
                    for (var e = 0; e < n; e++)if (C.contains(this, t[e]))return !0
                })
            }, closest: function (e, t) {
                var n, i = 0, r = this.length, o = [], s = "string" != typeof e && C(e);
                if (!R.test(e))for (; i < r; i++)for (n = this[i]; n && n !== t; n = n.parentNode)if (n.nodeType < 11 && (s ? s.index(n) > -1 : 1 === n.nodeType && C.find.matchesSelector(n, e))) {
                    o.push(n);
                    break
                }
                return this.pushStack(o.length > 1 ? C.uniqueSort(o) : o)
            }, index: function (e) {
                return e ? "string" == typeof e ? f.call(C(e), this[0]) : f.call(this, e.jquery ? e[0] : e) : this[0] && this[0].parentNode ? this.first().prevAll().length : -1
            }, add: function (e, t) {
                return this.pushStack(C.uniqueSort(C.merge(this.get(), C(e, t))))
            }, addBack: function (e) {
                return this.add(null == e ? this.prevObject : this.prevObject.filter(e))
            }
        }), C.each({
            parent: function (e) {
                var t = e.parentNode;
                return t && 11 !== t.nodeType ? t : null
            }, parents: function (e) {
                return A(e, "parentNode")
            }, parentsUntil: function (e, t, n) {
                return A(e, "parentNode", n)
            }, next: function (e) {
                return F(e, "nextSibling")
            }, prev: function (e) {
                return F(e, "previousSibling")
            }, nextAll: function (e) {
                return A(e, "nextSibling")
            }, prevAll: function (e) {
                return A(e, "previousSibling")
            }, nextUntil: function (e, t, n) {
                return A(e, "nextSibling", n)
            }, prevUntil: function (e, t, n) {
                return A(e, "previousSibling", n)
            }, siblings: function (e) {
                return k((e.parentNode || {}).firstChild, e)
            }, children: function (e) {
                return k(e.firstChild)
            }, contents: function (e) {
                return N(e, "iframe") ? e.contentDocument : (N(e, "template") && (e = e.content || e), C.merge([], e.childNodes))
            }
        }, function (e, t) {
            C.fn[e] = function (n, i) {
                var r = C.map(this, t, n);
                return "Until" !== e.slice(-5) && (i = n), i && "string" == typeof i && (r = C.filter(i, r)), this.length > 1 && (I[e] || C.uniqueSort(r), q.test(e) && r.reverse()), this.pushStack(r)
            }
        });
        var M = /[^\x20\t\r\n\f]+/g;

        function P(e) {
            return e
        }

        function B(e) {
            throw e
        }

        function $(e, t, n, i) {
            var r;
            try {
                e && v(r = e.promise) ? r.call(e).done(t).fail(n) : e && v(r = e.then) ? r.call(e, t, n) : t.apply(void 0, [e].slice(i))
            } catch (e) {
                n.apply(void 0, [e])
            }
        }

        C.Callbacks = function (e) {
            e = "string" == typeof e ? function (e) {
                var t = {};
                return C.each(e.match(M) || [], function (e, n) {
                    t[n] = !0
                }), t
            }(e) : C.extend({}, e);
            var t, n, i, r, o = [], s = [], a = -1, u = function () {
                for (r = r || e.once, i = t = !0; s.length; a = -1)for (n = s.shift(); ++a < o.length;)!1 === o[a].apply(n[0], n[1]) && e.stopOnFalse && (a = o.length, n = !1);
                e.memory || (n = !1), t = !1, r && (o = n ? [] : "")
            }, l = {
                add: function () {
                    return o && (n && !t && (a = o.length - 1, s.push(n)), function t(n) {
                        C.each(n, function (n, i) {
                            v(i) ? e.unique && l.has(i) || o.push(i) : i && i.length && "string" !== T(i) && t(i)
                        })
                    }(arguments), n && !t && u()), this
                }, remove: function () {
                    return C.each(arguments, function (e, t) {
                        for (var n; (n = C.inArray(t, o, n)) > -1;)o.splice(n, 1), n <= a && a--
                    }), this
                }, has: function (e) {
                    return e ? C.inArray(e, o) > -1 : o.length > 0
                }, empty: function () {
                    return o && (o = []), this
                }, disable: function () {
                    return r = s = [], o = n = "", this
                }, disabled: function () {
                    return !o
                }, lock: function () {
                    return r = s = [], n || t || (o = n = ""), this
                }, locked: function () {
                    return !!r
                }, fireWith: function (e, n) {
                    return r || (n = [e, (n = n || []).slice ? n.slice() : n], s.push(n), t || u()), this
                }, fire: function () {
                    return l.fireWith(this, arguments), this
                }, fired: function () {
                    return !!i
                }
            };
            return l
        }, C.extend({
            Deferred: function (e) {
                var t = [["notify", "progress", C.Callbacks("memory"), C.Callbacks("memory"), 2], ["resolve", "done", C.Callbacks("once memory"), C.Callbacks("once memory"), 0, "resolved"], ["reject", "fail", C.Callbacks("once memory"), C.Callbacks("once memory"), 1, "rejected"]], i = "pending", r = {
                    state: function () {
                        return i
                    }, always: function () {
                        return o.done(arguments).fail(arguments), this
                    }, catch: function (e) {
                        return r.then(null, e)
                    }, pipe: function () {
                        var e = arguments;
                        return C.Deferred(function (n) {
                            C.each(t, function (t, i) {
                                var r = v(e[i[4]]) && e[i[4]];
                                o[i[1]](function () {
                                    var e = r && r.apply(this, arguments);
                                    e && v(e.promise) ? e.promise().progress(n.notify).done(n.resolve).fail(n.reject) : n[i[0] + "With"](this, r ? [e] : arguments)
                                })
                            }), e = null
                        }).promise()
                    }, then: function (e, i, r) {
                        var o = 0;

                        function s(e, t, i, r) {
                            return function () {
                                var a = this, u = arguments, l = function () {
                                    var n, l;
                                    if (!(e < o)) {
                                        if ((n = i.apply(a, u)) === t.promise())throw new TypeError("Thenable self-resolution");
                                        l = n && ("object" == typeof n || "function" == typeof n) && n.then, v(l) ? r ? l.call(n, s(o, t, P, r), s(o, t, B, r)) : (o++, l.call(n, s(o, t, P, r), s(o, t, B, r), s(o, t, P, t.notifyWith))) : (i !== P && (a = void 0, u = [n]), (r || t.resolveWith)(a, u))
                                    }
                                }, c = r ? l : function () {
                                    try {
                                        l()
                                    } catch (n) {
                                        C.Deferred.exceptionHook && C.Deferred.exceptionHook(n, c.stackTrace), e + 1 >= o && (i !== B && (a = void 0, u = [n]), t.rejectWith(a, u))
                                    }
                                };
                                e ? c() : (C.Deferred.getStackHook && (c.stackTrace = C.Deferred.getStackHook()), n.setTimeout(c))
                            }
                        }

                        return C.Deferred(function (n) {
                            t[0][3].add(s(0, n, v(r) ? r : P, n.notifyWith)), t[1][3].add(s(0, n, v(e) ? e : P)), t[2][3].add(s(0, n, v(i) ? i : B))
                        }).promise()
                    }, promise: function (e) {
                        return null != e ? C.extend(e, r) : r
                    }
                }, o = {};
                return C.each(t, function (e, n) {
                    var s = n[2], a = n[5];
                    r[n[1]] = s.add, a && s.add(function () {
                        i = a
                    }, t[3 - e][2].disable, t[3 - e][3].disable, t[0][2].lock, t[0][3].lock), s.add(n[3].fire), o[n[0]] = function () {
                        return o[n[0] + "With"](this === o ? void 0 : this, arguments), this
                    }, o[n[0] + "With"] = s.fireWith
                }), r.promise(o), e && e.call(o, o), o
            }, when: function (e) {
                var t = arguments.length, n = t, i = Array(n), r = u.call(arguments), o = C.Deferred(), s = function (e) {
                    return function (n) {
                        i[e] = this, r[e] = arguments.length > 1 ? u.call(arguments) : n, --t || o.resolveWith(i, r)
                    }
                };
                if (t <= 1 && ($(e, o.done(s(n)).resolve, o.reject, !t), "pending" === o.state() || v(r[n] && r[n].then)))return o.then();
                for (; n--;)$(r[n], s(n), o.reject);
                return o.promise()
            }
        });
        var z = /^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;
        C.Deferred.exceptionHook = function (e, t) {
            n.console && n.console.warn && e && z.test(e.name) && n.console.warn("jQuery.Deferred exception: " + e.message, e.stack, t)
        }, C.readyException = function (e) {
            n.setTimeout(function () {
                throw e
            })
        };
        var W = C.Deferred();

        function _() {
            s.removeEventListener("DOMContentLoaded", _), n.removeEventListener("load", _), C.ready()
        }

        C.fn.ready = function (e) {
            return W.then(e).catch(function (e) {
                C.readyException(e)
            }), this
        }, C.extend({
            isReady: !1, readyWait: 1, ready: function (e) {
                (!0 === e ? --C.readyWait : C.isReady) || (C.isReady = !0, !0 !== e && --C.readyWait > 0 || W.resolveWith(s, [C]))
            }
        }), C.ready.then = W.then, "complete" === s.readyState || "loading" !== s.readyState && !s.documentElement.doScroll ? n.setTimeout(C.ready) : (s.addEventListener("DOMContentLoaded", _), n.addEventListener("load", _));
        var V = function (e, t, n, i, r, o, s) {
            var a = 0, u = e.length, l = null == n;
            if ("object" === T(n))for (a in r = !0, n)V(e, t, a, n[a], !0, o, s); else if (void 0 !== i && (r = !0, v(i) || (s = !0), l && (s ? (t.call(e, i), t = null) : (l = t, t = function (e, t, n) {
                    return l.call(C(e), n)
                })), t))for (; a < u; a++)t(e[a], n, s ? i : i.call(e[a], a, t(e[a], n)));
            return r ? e : l ? t.call(e) : u ? t(e[0], n) : o
        }, U = /^-ms-/, G = /-([a-z])/g;

        function X(e, t) {
            return t.toUpperCase()
        }

        function Y(e) {
            return e.replace(U, "ms-").replace(G, X)
        }

        var Q = function (e) {
            return 1 === e.nodeType || 9 === e.nodeType || !+e.nodeType
        };

        function J() {
            this.expando = C.expando + J.uid++
        }

        J.uid = 1, J.prototype = {
            cache: function (e) {
                var t = e[this.expando];
                return t || (t = {}, Q(e) && (e.nodeType ? e[this.expando] = t : Object.defineProperty(e, this.expando, {
                    value: t,
                    configurable: !0
                }))), t
            }, set: function (e, t, n) {
                var i, r = this.cache(e);
                if ("string" == typeof t)r[Y(t)] = n; else for (i in t)r[Y(i)] = t[i];
                return r
            }, get: function (e, t) {
                return void 0 === t ? this.cache(e) : e[this.expando] && e[this.expando][Y(t)]
            }, access: function (e, t, n) {
                return void 0 === t || t && "string" == typeof t && void 0 === n ? this.get(e, t) : (this.set(e, t, n), void 0 !== n ? n : t)
            }, remove: function (e, t) {
                var n, i = e[this.expando];
                if (void 0 !== i) {
                    if (void 0 !== t) {
                        n = (t = Array.isArray(t) ? t.map(Y) : (t = Y(t)) in i ? [t] : t.match(M) || []).length;
                        for (; n--;)delete i[t[n]]
                    }
                    (void 0 === t || C.isEmptyObject(i)) && (e.nodeType ? e[this.expando] = void 0 : delete e[this.expando])
                }
            }, hasData: function (e) {
                var t = e[this.expando];
                return void 0 !== t && !C.isEmptyObject(t)
            }
        };
        var K = new J, Z = new J, ee = /^(?:\{[\w\W]*\}|\[[\w\W]*\])$/, te = /[A-Z]/g;

        function ne(e, t, n) {
            var i;
            if (void 0 === n && 1 === e.nodeType)if (i = "data-" + t.replace(te, "-$&").toLowerCase(), "string" == typeof(n = e.getAttribute(i))) {
                try {
                    n = function (e) {
                        return "true" === e || "false" !== e && ("null" === e ? null : e === +e + "" ? +e : ee.test(e) ? JSON.parse(e) : e)
                    }(n)
                } catch (e) {
                }
                Z.set(e, t, n)
            } else n = void 0;
            return n
        }

        C.extend({
            hasData: function (e) {
                return Z.hasData(e) || K.hasData(e)
            }, data: function (e, t, n) {
                return Z.access(e, t, n)
            }, removeData: function (e, t) {
                Z.remove(e, t)
            }, _data: function (e, t, n) {
                return K.access(e, t, n)
            }, _removeData: function (e, t) {
                K.remove(e, t)
            }
        }), C.fn.extend({
            data: function (e, t) {
                var n, i, r, o = this[0], s = o && o.attributes;
                if (void 0 === e) {
                    if (this.length && (r = Z.get(o), 1 === o.nodeType && !K.get(o, "hasDataAttrs"))) {
                        for (n = s.length; n--;)s[n] && 0 === (i = s[n].name).indexOf("data-") && (i = Y(i.slice(5)), ne(o, i, r[i]));
                        K.set(o, "hasDataAttrs", !0)
                    }
                    return r
                }
                return "object" == typeof e ? this.each(function () {
                    Z.set(this, e)
                }) : V(this, function (t) {
                    var n;
                    if (o && void 0 === t)return void 0 !== (n = Z.get(o, e)) ? n : void 0 !== (n = ne(o, e)) ? n : void 0;
                    this.each(function () {
                        Z.set(this, e, t)
                    })
                }, null, t, arguments.length > 1, null, !0)
            }, removeData: function (e) {
                return this.each(function () {
                    Z.remove(this, e)
                })
            }
        }), C.extend({
            queue: function (e, t, n) {
                var i;
                if (e)return t = (t || "fx") + "queue", i = K.get(e, t), n && (!i || Array.isArray(n) ? i = K.access(e, t, C.makeArray(n)) : i.push(n)), i || []
            }, dequeue: function (e, t) {
                t = t || "fx";
                var n = C.queue(e, t), i = n.length, r = n.shift(), o = C._queueHooks(e, t);
                "inprogress" === r && (r = n.shift(), i--), r && ("fx" === t && n.unshift("inprogress"), delete o.stop, r.call(e, function () {
                    C.dequeue(e, t)
                }, o)), !i && o && o.empty.fire()
            }, _queueHooks: function (e, t) {
                var n = t + "queueHooks";
                return K.get(e, n) || K.access(e, n, {
                        empty: C.Callbacks("once memory").add(function () {
                            K.remove(e, [t + "queue", n])
                        })
                    })
            }
        }), C.fn.extend({
            queue: function (e, t) {
                var n = 2;
                return "string" != typeof e && (t = e, e = "fx", n--), arguments.length < n ? C.queue(this[0], e) : void 0 === t ? this : this.each(function () {
                    var n = C.queue(this, e, t);
                    C._queueHooks(this, e), "fx" === e && "inprogress" !== n[0] && C.dequeue(this, e)
                })
            }, dequeue: function (e) {
                return this.each(function () {
                    C.dequeue(this, e)
                })
            }, clearQueue: function (e) {
                return this.queue(e || "fx", [])
            }, promise: function (e, t) {
                var n, i = 1, r = C.Deferred(), o = this, s = this.length, a = function () {
                    --i || r.resolveWith(o, [o])
                };
                for ("string" != typeof e && (t = e, e = void 0), e = e || "fx"; s--;)(n = K.get(o[s], e + "queueHooks")) && n.empty && (i++, n.empty.add(a));
                return a(), r.promise(t)
            }
        });
        var ie = /[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source, re = new RegExp("^(?:([+-])=|)(" + ie + ")([a-z%]*)$", "i"), oe = ["Top", "Right", "Bottom", "Left"], se = function (e, t) {
            return "none" === (e = t || e).style.display || "" === e.style.display && C.contains(e.ownerDocument, e) && "none" === C.css(e, "display")
        }, ae = function (e, t, n, i) {
            var r, o, s = {};
            for (o in t)s[o] = e.style[o], e.style[o] = t[o];
            for (o in r = n.apply(e, i || []), t)e.style[o] = s[o];
            return r
        };

        function ue(e, t, n, i) {
            var r, o, s = 20, a = i ? function () {
                return i.cur()
            } : function () {
                return C.css(e, t, "")
            }, u = a(), l = n && n[3] || (C.cssNumber[t] ? "" : "px"), c = (C.cssNumber[t] || "px" !== l && +u) && re.exec(C.css(e, t));
            if (c && c[3] !== l) {
                for (u /= 2, l = l || c[3], c = +u || 1; s--;)C.style(e, t, c + l), (1 - o) * (1 - (o = a() / u || .5)) <= 0 && (s = 0), c /= o;
                c *= 2, C.style(e, t, c + l), n = n || []
            }
            return n && (c = +c || +u || 0, r = n[1] ? c + (n[1] + 1) * n[2] : +n[2], i && (i.unit = l, i.start = c, i.end = r)), r
        }

        var le = {};

        function ce(e) {
            var t, n = e.ownerDocument, i = e.nodeName, r = le[i];
            return r || (t = n.body.appendChild(n.createElement(i)), r = C.css(t, "display"), t.parentNode.removeChild(t), "none" === r && (r = "block"), le[i] = r, r)
        }

        function fe(e, t) {
            for (var n, i, r = [], o = 0, s = e.length; o < s; o++)(i = e[o]).style && (n = i.style.display, t ? ("none" === n && (r[o] = K.get(i, "display") || null, r[o] || (i.style.display = "")), "" === i.style.display && se(i) && (r[o] = ce(i))) : "none" !== n && (r[o] = "none", K.set(i, "display", n)));
            for (o = 0; o < s; o++)null != r[o] && (e[o].style.display = r[o]);
            return e
        }

        C.fn.extend({
            show: function () {
                return fe(this, !0)
            }, hide: function () {
                return fe(this)
            }, toggle: function (e) {
                return "boolean" == typeof e ? e ? this.show() : this.hide() : this.each(function () {
                    se(this) ? C(this).show() : C(this).hide()
                })
            }
        });
        var he = /^(?:checkbox|radio)$/i, pe = /<([a-z][^\/\0>\x20\t\r\n\f]+)/i, de = /^$|^module$|\/(?:java|ecma)script/i, ge = {
            option: [1, "<select multiple='multiple'>", "</select>"],
            thead: [1, "<table>", "</table>"],
            col: [2, "<table><colgroup>", "</colgroup></table>"],
            tr: [2, "<table><tbody>", "</tbody></table>"],
            td: [3, "<table><tbody><tr>", "</tr></tbody></table>"],
            _default: [0, "", ""]
        };

        function ye(e, t) {
            var n;
            return n = void 0 !== e.getElementsByTagName ? e.getElementsByTagName(t || "*") : void 0 !== e.querySelectorAll ? e.querySelectorAll(t || "*") : [], void 0 === t || t && N(e, t) ? C.merge([e], n) : n
        }

        function me(e, t) {
            for (var n = 0, i = e.length; n < i; n++)K.set(e[n], "globalEval", !t || K.get(t[n], "globalEval"))
        }

        ge.optgroup = ge.option, ge.tbody = ge.tfoot = ge.colgroup = ge.caption = ge.thead, ge.th = ge.td;
        var ve, xe, be = /<|&#?\w+;/;

        function we(e, t, n, i, r) {
            for (var o, s, a, u, l, c, f = t.createDocumentFragment(), h = [], p = 0, d = e.length; p < d; p++)if ((o = e[p]) || 0 === o)if ("object" === T(o))C.merge(h, o.nodeType ? [o] : o); else if (be.test(o)) {
                for (s = s || f.appendChild(t.createElement("div")), a = (pe.exec(o) || ["", ""])[1].toLowerCase(), u = ge[a] || ge._default, s.innerHTML = u[1] + C.htmlPrefilter(o) + u[2], c = u[0]; c--;)s = s.lastChild;
                C.merge(h, s.childNodes), (s = f.firstChild).textContent = ""
            } else h.push(t.createTextNode(o));
            for (f.textContent = "", p = 0; o = h[p++];)if (i && C.inArray(o, i) > -1)r && r.push(o); else if (l = C.contains(o.ownerDocument, o), s = ye(f.appendChild(o), "script"), l && me(s), n)for (c = 0; o = s[c++];)de.test(o.type || "") && n.push(o);
            return f
        }

        ve = s.createDocumentFragment().appendChild(s.createElement("div")), (xe = s.createElement("input")).setAttribute("type", "radio"), xe.setAttribute("checked", "checked"), xe.setAttribute("name", "t"), ve.appendChild(xe), m.checkClone = ve.cloneNode(!0).cloneNode(!0).lastChild.checked, ve.innerHTML = "<textarea>x</textarea>", m.noCloneChecked = !!ve.cloneNode(!0).lastChild.defaultValue;
        var Te = s.documentElement, Ce = /^key/, Se = /^(?:mouse|pointer|contextmenu|drag|drop)|click/, je = /^([^.]*)(?:\.(.+)|)/;

        function Ee() {
            return !0
        }

        function Ae() {
            return !1
        }

        function ke() {
            try {
                return s.activeElement
            } catch (e) {
            }
        }

        function Re(e, t, n, i, r, o) {
            var s, a;
            if ("object" == typeof t) {
                for (a in"string" != typeof n && (i = i || n, n = void 0), t)Re(e, a, n, i, t[a], o);
                return e
            }
            if (null == i && null == r ? (r = n, i = n = void 0) : null == r && ("string" == typeof n ? (r = i, i = void 0) : (r = i, i = n, n = void 0)), !1 === r)r = Ae; else if (!r)return e;
            return 1 === o && (s = r, (r = function (e) {
                return C().off(e), s.apply(this, arguments)
            }).guid = s.guid || (s.guid = C.guid++)), e.each(function () {
                C.event.add(this, t, r, i, n)
            })
        }

        C.event = {
            global: {}, add: function (e, t, n, i, r) {
                var o, s, a, u, l, c, f, h, p, d, g, y = K.get(e);
                if (y)for (n.handler && (n = (o = n).handler, r = o.selector), r && C.find.matchesSelector(Te, r), n.guid || (n.guid = C.guid++), (u = y.events) || (u = y.events = {}), (s = y.handle) || (s = y.handle = function (t) {
                    return void 0 !== C && C.event.triggered !== t.type ? C.event.dispatch.apply(e, arguments) : void 0
                }), l = (t = (t || "").match(M) || [""]).length; l--;)p = g = (a = je.exec(t[l]) || [])[1], d = (a[2] || "").split(".").sort(), p && (f = C.event.special[p] || {}, p = (r ? f.delegateType : f.bindType) || p, f = C.event.special[p] || {}, c = C.extend({
                    type: p,
                    origType: g,
                    data: i,
                    handler: n,
                    guid: n.guid,
                    selector: r,
                    needsContext: r && C.expr.match.needsContext.test(r),
                    namespace: d.join(".")
                }, o), (h = u[p]) || ((h = u[p] = []).delegateCount = 0, f.setup && !1 !== f.setup.call(e, i, d, s) || e.addEventListener && e.addEventListener(p, s)), f.add && (f.add.call(e, c), c.handler.guid || (c.handler.guid = n.guid)), r ? h.splice(h.delegateCount++, 0, c) : h.push(c), C.event.global[p] = !0)
            }, remove: function (e, t, n, i, r) {
                var o, s, a, u, l, c, f, h, p, d, g, y = K.hasData(e) && K.get(e);
                if (y && (u = y.events)) {
                    for (l = (t = (t || "").match(M) || [""]).length; l--;)if (p = g = (a = je.exec(t[l]) || [])[1], d = (a[2] || "").split(".").sort(), p) {
                        for (f = C.event.special[p] || {}, h = u[p = (i ? f.delegateType : f.bindType) || p] || [], a = a[2] && new RegExp("(^|\\.)" + d.join("\\.(?:.*\\.|)") + "(\\.|$)"), s = o = h.length; o--;)c = h[o], !r && g !== c.origType || n && n.guid !== c.guid || a && !a.test(c.namespace) || i && i !== c.selector && ("**" !== i || !c.selector) || (h.splice(o, 1), c.selector && h.delegateCount--, f.remove && f.remove.call(e, c));
                        s && !h.length && (f.teardown && !1 !== f.teardown.call(e, d, y.handle) || C.removeEvent(e, p, y.handle), delete u[p])
                    } else for (p in u)C.event.remove(e, p + t[l], n, i, !0);
                    C.isEmptyObject(u) && K.remove(e, "handle events")
                }
            }, dispatch: function (e) {
                var t, n, i, r, o, s, a = C.event.fix(e), u = new Array(arguments.length), l = (K.get(this, "events") || {})[a.type] || [], c = C.event.special[a.type] || {};
                for (u[0] = a, t = 1; t < arguments.length; t++)u[t] = arguments[t];
                if (a.delegateTarget = this, !c.preDispatch || !1 !== c.preDispatch.call(this, a)) {
                    for (s = C.event.handlers.call(this, a, l), t = 0; (r = s[t++]) && !a.isPropagationStopped();)for (a.currentTarget = r.elem, n = 0; (o = r.handlers[n++]) && !a.isImmediatePropagationStopped();)a.rnamespace && !a.rnamespace.test(o.namespace) || (a.handleObj = o, a.data = o.data, void 0 !== (i = ((C.event.special[o.origType] || {}).handle || o.handler).apply(r.elem, u)) && !1 === (a.result = i) && (a.preventDefault(), a.stopPropagation()));
                    return c.postDispatch && c.postDispatch.call(this, a), a.result
                }
            }, handlers: function (e, t) {
                var n, i, r, o, s, a = [], u = t.delegateCount, l = e.target;
                if (u && l.nodeType && !("click" === e.type && e.button >= 1))for (; l !== this; l = l.parentNode || this)if (1 === l.nodeType && ("click" !== e.type || !0 !== l.disabled)) {
                    for (o = [], s = {}, n = 0; n < u; n++)void 0 === s[r = (i = t[n]).selector + " "] && (s[r] = i.needsContext ? C(r, this).index(l) > -1 : C.find(r, this, null, [l]).length), s[r] && o.push(i);
                    o.length && a.push({elem: l, handlers: o})
                }
                return l = this, u < t.length && a.push({elem: l, handlers: t.slice(u)}), a
            }, addProp: function (e, t) {
                Object.defineProperty(C.Event.prototype, e, {
                    enumerable: !0, configurable: !0, get: v(t) ? function () {
                        if (this.originalEvent)return t(this.originalEvent)
                    } : function () {
                        if (this.originalEvent)return this.originalEvent[e]
                    }, set: function (t) {
                        Object.defineProperty(this, e, {enumerable: !0, configurable: !0, writable: !0, value: t})
                    }
                })
            }, fix: function (e) {
                return e[C.expando] ? e : new C.Event(e)
            }, special: {
                load: {noBubble: !0}, focus: {
                    trigger: function () {
                        if (this !== ke() && this.focus)return this.focus(), !1
                    }, delegateType: "focusin"
                }, blur: {
                    trigger: function () {
                        if (this === ke() && this.blur)return this.blur(), !1
                    }, delegateType: "focusout"
                }, click: {
                    trigger: function () {
                        if ("checkbox" === this.type && this.click && N(this, "input"))return this.click(), !1
                    }, _default: function (e) {
                        return N(e.target, "a")
                    }
                }, beforeunload: {
                    postDispatch: function (e) {
                        void 0 !== e.result && e.originalEvent && (e.originalEvent.returnValue = e.result)
                    }
                }
            }
        }, C.removeEvent = function (e, t, n) {
            e.removeEventListener && e.removeEventListener(t, n)
        }, C.Event = function (e, t) {
            if (!(this instanceof C.Event))return new C.Event(e, t);
            e && e.type ? (this.originalEvent = e, this.type = e.type, this.isDefaultPrevented = e.defaultPrevented || void 0 === e.defaultPrevented && !1 === e.returnValue ? Ee : Ae, this.target = e.target && 3 === e.target.nodeType ? e.target.parentNode : e.target, this.currentTarget = e.currentTarget, this.relatedTarget = e.relatedTarget) : this.type = e, t && C.extend(this, t), this.timeStamp = e && e.timeStamp || Date.now(), this[C.expando] = !0
        }, C.Event.prototype = {
            constructor: C.Event,
            isDefaultPrevented: Ae,
            isPropagationStopped: Ae,
            isImmediatePropagationStopped: Ae,
            isSimulated: !1,
            preventDefault: function () {
                var e = this.originalEvent;
                this.isDefaultPrevented = Ee, e && !this.isSimulated && e.preventDefault()
            },
            stopPropagation: function () {
                var e = this.originalEvent;
                this.isPropagationStopped = Ee, e && !this.isSimulated && e.stopPropagation()
            },
            stopImmediatePropagation: function () {
                var e = this.originalEvent;
                this.isImmediatePropagationStopped = Ee, e && !this.isSimulated && e.stopImmediatePropagation(), this.stopPropagation()
            }
        }, C.each({
            altKey: !0,
            bubbles: !0,
            cancelable: !0,
            changedTouches: !0,
            ctrlKey: !0,
            detail: !0,
            eventPhase: !0,
            metaKey: !0,
            pageX: !0,
            pageY: !0,
            shiftKey: !0,
            view: !0,
            char: !0,
            charCode: !0,
            key: !0,
            keyCode: !0,
            button: !0,
            buttons: !0,
            clientX: !0,
            clientY: !0,
            offsetX: !0,
            offsetY: !0,
            pointerId: !0,
            pointerType: !0,
            screenX: !0,
            screenY: !0,
            targetTouches: !0,
            toElement: !0,
            touches: !0,
            which: function (e) {
                var t = e.button;
                return null == e.which && Ce.test(e.type) ? null != e.charCode ? e.charCode : e.keyCode : !e.which && void 0 !== t && Se.test(e.type) ? 1 & t ? 1 : 2 & t ? 3 : 4 & t ? 2 : 0 : e.which
            }
        }, C.event.addProp), C.each({
            mouseenter: "mouseover",
            mouseleave: "mouseout",
            pointerenter: "pointerover",
            pointerleave: "pointerout"
        }, function (e, t) {
            C.event.special[e] = {
                delegateType: t, bindType: t, handle: function (e) {
                    var n, i = e.relatedTarget, r = e.handleObj;
                    return i && (i === this || C.contains(this, i)) || (e.type = r.origType, n = r.handler.apply(this, arguments), e.type = t), n
                }
            }
        }), C.fn.extend({
            on: function (e, t, n, i) {
                return Re(this, e, t, n, i)
            }, one: function (e, t, n, i) {
                return Re(this, e, t, n, i, 1)
            }, off: function (e, t, n) {
                var i, r;
                if (e && e.preventDefault && e.handleObj)return i = e.handleObj, C(e.delegateTarget).off(i.namespace ? i.origType + "." + i.namespace : i.origType, i.selector, i.handler), this;
                if ("object" == typeof e) {
                    for (r in e)this.off(r, t, e[r]);
                    return this
                }
                return !1 !== t && "function" != typeof t || (n = t, t = void 0), !1 === n && (n = Ae), this.each(function () {
                    C.event.remove(this, e, n, t)
                })
            }
        });
        var Ne = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([a-z][^\/\0>\x20\t\r\n\f]*)[^>]*)\/>/gi, De = /<script|<style|<link/i, He = /checked\s*(?:[^=]|=\s*.checked.)/i, Oe = /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;

        function Le(e, t) {
            return N(e, "table") && N(11 !== t.nodeType ? t : t.firstChild, "tr") && C(e).children("tbody")[0] || e
        }

        function qe(e) {
            return e.type = (null !== e.getAttribute("type")) + "/" + e.type, e
        }

        function Ie(e) {
            return "true/" === (e.type || "").slice(0, 5) ? e.type = e.type.slice(5) : e.removeAttribute("type"), e
        }

        function Fe(e, t) {
            var n, i, r, o, s, a, u, l;
            if (1 === t.nodeType) {
                if (K.hasData(e) && (o = K.access(e), s = K.set(t, o), l = o.events))for (r in delete s.handle, s.events = {}, l)for (n = 0, i = l[r].length; n < i; n++)C.event.add(t, r, l[r][n]);
                Z.hasData(e) && (a = Z.access(e), u = C.extend({}, a), Z.set(t, u))
            }
        }

        function Me(e, t, n, i) {
            t = l.apply([], t);
            var r, o, s, a, u, c, f = 0, h = e.length, p = h - 1, d = t[0], g = v(d);
            if (g || h > 1 && "string" == typeof d && !m.checkClone && He.test(d))return e.each(function (r) {
                var o = e.eq(r);
                g && (t[0] = d.call(this, r, o.html())), Me(o, t, n, i)
            });
            if (h && (o = (r = we(t, e[0].ownerDocument, !1, e, i)).firstChild, 1 === r.childNodes.length && (r = o), o || i)) {
                for (a = (s = C.map(ye(r, "script"), qe)).length; f < h; f++)u = r, f !== p && (u = C.clone(u, !0, !0), a && C.merge(s, ye(u, "script"))), n.call(e[f], u, f);
                if (a)for (c = s[s.length - 1].ownerDocument, C.map(s, Ie), f = 0; f < a; f++)u = s[f], de.test(u.type || "") && !K.access(u, "globalEval") && C.contains(c, u) && (u.src && "module" !== (u.type || "").toLowerCase() ? C._evalUrl && C._evalUrl(u.src) : w(u.textContent.replace(Oe, ""), c, u))
            }
            return e
        }

        function Pe(e, t, n) {
            for (var i, r = t ? C.filter(t, e) : e, o = 0; null != (i = r[o]); o++)n || 1 !== i.nodeType || C.cleanData(ye(i)), i.parentNode && (n && C.contains(i.ownerDocument, i) && me(ye(i, "script")), i.parentNode.removeChild(i));
            return e
        }

        C.extend({
            htmlPrefilter: function (e) {
                return e.replace(Ne, "<$1></$2>")
            }, clone: function (e, t, n) {
                var i, r, o, s, a, u, l, c = e.cloneNode(!0), f = C.contains(e.ownerDocument, e);
                if (!(m.noCloneChecked || 1 !== e.nodeType && 11 !== e.nodeType || C.isXMLDoc(e)))for (s = ye(c), i = 0, r = (o = ye(e)).length; i < r; i++)a = o[i], u = s[i], void 0, "input" === (l = u.nodeName.toLowerCase()) && he.test(a.type) ? u.checked = a.checked : "input" !== l && "textarea" !== l || (u.defaultValue = a.defaultValue);
                if (t)if (n)for (o = o || ye(e), s = s || ye(c), i = 0, r = o.length; i < r; i++)Fe(o[i], s[i]); else Fe(e, c);
                return (s = ye(c, "script")).length > 0 && me(s, !f && ye(e, "script")), c
            }, cleanData: function (e) {
                for (var t, n, i, r = C.event.special, o = 0; void 0 !== (n = e[o]); o++)if (Q(n)) {
                    if (t = n[K.expando]) {
                        if (t.events)for (i in t.events)r[i] ? C.event.remove(n, i) : C.removeEvent(n, i, t.handle);
                        n[K.expando] = void 0
                    }
                    n[Z.expando] && (n[Z.expando] = void 0)
                }
            }
        }), C.fn.extend({
            detach: function (e) {
                return Pe(this, e, !0)
            }, remove: function (e) {
                return Pe(this, e)
            }, text: function (e) {
                return V(this, function (e) {
                    return void 0 === e ? C.text(this) : this.empty().each(function () {
                        1 !== this.nodeType && 11 !== this.nodeType && 9 !== this.nodeType || (this.textContent = e)
                    })
                }, null, e, arguments.length)
            }, append: function () {
                return Me(this, arguments, function (e) {
                    1 !== this.nodeType && 11 !== this.nodeType && 9 !== this.nodeType || Le(this, e).appendChild(e)
                })
            }, prepend: function () {
                return Me(this, arguments, function (e) {
                    if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
                        var t = Le(this, e);
                        t.insertBefore(e, t.firstChild)
                    }
                })
            }, before: function () {
                return Me(this, arguments, function (e) {
                    this.parentNode && this.parentNode.insertBefore(e, this)
                })
            }, after: function () {
                return Me(this, arguments, function (e) {
                    this.parentNode && this.parentNode.insertBefore(e, this.nextSibling)
                })
            }, empty: function () {
                for (var e, t = 0; null != (e = this[t]); t++)1 === e.nodeType && (C.cleanData(ye(e, !1)), e.textContent = "");
                return this
            }, clone: function (e, t) {
                return e = null != e && e, t = null == t ? e : t, this.map(function () {
                    return C.clone(this, e, t)
                })
            }, html: function (e) {
                return V(this, function (e) {
                    var t = this[0] || {}, n = 0, i = this.length;
                    if (void 0 === e && 1 === t.nodeType)return t.innerHTML;
                    if ("string" == typeof e && !De.test(e) && !ge[(pe.exec(e) || ["", ""])[1].toLowerCase()]) {
                        e = C.htmlPrefilter(e);
                        try {
                            for (; n < i; n++)1 === (t = this[n] || {}).nodeType && (C.cleanData(ye(t, !1)), t.innerHTML = e);
                            t = 0
                        } catch (e) {
                        }
                    }
                    t && this.empty().append(e)
                }, null, e, arguments.length)
            }, replaceWith: function () {
                var e = [];
                return Me(this, arguments, function (t) {
                    var n = this.parentNode;
                    C.inArray(this, e) < 0 && (C.cleanData(ye(this)), n && n.replaceChild(t, this))
                }, e)
            }
        }), C.each({
            appendTo: "append",
            prependTo: "prepend",
            insertBefore: "before",
            insertAfter: "after",
            replaceAll: "replaceWith"
        }, function (e, t) {
            C.fn[e] = function (e) {
                for (var n, i = [], r = C(e), o = r.length - 1, s = 0; s <= o; s++)n = s === o ? this : this.clone(!0), C(r[s])[t](n), c.apply(i, n.get());
                return this.pushStack(i)
            }
        });
        var Be = new RegExp("^(" + ie + ")(?!px)[a-z%]+$", "i"), $e = function (e) {
            var t = e.ownerDocument.defaultView;
            return t && t.opener || (t = n), t.getComputedStyle(e)
        }, ze = new RegExp(oe.join("|"), "i");

        function We(e, t, n) {
            var i, r, o, s, a = e.style;
            return (n = n || $e(e)) && ("" !== (s = n.getPropertyValue(t) || n[t]) || C.contains(e.ownerDocument, e) || (s = C.style(e, t)), !m.pixelBoxStyles() && Be.test(s) && ze.test(t) && (i = a.width, r = a.minWidth, o = a.maxWidth, a.minWidth = a.maxWidth = a.width = s, s = n.width, a.width = i, a.minWidth = r, a.maxWidth = o)), void 0 !== s ? s + "" : s
        }

        function _e(e, t) {
            return {
                get: function () {
                    if (!e())return (this.get = t).apply(this, arguments);
                    delete this.get
                }
            }
        }

        !function () {
            function e() {
                if (c) {
                    l.style.cssText = "position:absolute;left:-11111px;width:60px;margin-top:1px;padding:0;border:0", c.style.cssText = "position:relative;display:block;box-sizing:border-box;overflow:scroll;margin:auto;border:1px;padding:1px;width:60%;top:1%", Te.appendChild(l).appendChild(c);
                    var e = n.getComputedStyle(c);
                    i = "1%" !== e.top, u = 12 === t(e.marginLeft), c.style.right = "60%", a = 36 === t(e.right), r = 36 === t(e.width), c.style.position = "absolute", o = 36 === c.offsetWidth || "absolute", Te.removeChild(l), c = null
                }
            }

            function t(e) {
                return Math.round(parseFloat(e))
            }

            var i, r, o, a, u, l = s.createElement("div"), c = s.createElement("div");
            c.style && (c.style.backgroundClip = "content-box", c.cloneNode(!0).style.backgroundClip = "", m.clearCloneStyle = "content-box" === c.style.backgroundClip, C.extend(m, {
                boxSizingReliable: function () {
                    return e(), r
                }, pixelBoxStyles: function () {
                    return e(), a
                }, pixelPosition: function () {
                    return e(), i
                }, reliableMarginLeft: function () {
                    return e(), u
                }, scrollboxSize: function () {
                    return e(), o
                }
            }))
        }();
        var Ve = /^(none|table(?!-c[ea]).+)/, Ue = /^--/, Ge = {
            position: "absolute",
            visibility: "hidden",
            display: "block"
        }, Xe = {
            letterSpacing: "0",
            fontWeight: "400"
        }, Ye = ["Webkit", "Moz", "ms"], Qe = s.createElement("div").style;

        function Je(e) {
            var t = C.cssProps[e];
            return t || (t = C.cssProps[e] = function (e) {
                    if (e in Qe)return e;
                    for (var t = e[0].toUpperCase() + e.slice(1), n = Ye.length; n--;)if ((e = Ye[n] + t) in Qe)return e
                }(e) || e), t
        }

        function Ke(e, t, n) {
            var i = re.exec(t);
            return i ? Math.max(0, i[2] - (n || 0)) + (i[3] || "px") : t
        }

        function Ze(e, t, n, i, r, o) {
            var s = "width" === t ? 1 : 0, a = 0, u = 0;
            if (n === (i ? "border" : "content"))return 0;
            for (; s < 4; s += 2)"margin" === n && (u += C.css(e, n + oe[s], !0, r)), i ? ("content" === n && (u -= C.css(e, "padding" + oe[s], !0, r)), "margin" !== n && (u -= C.css(e, "border" + oe[s] + "Width", !0, r))) : (u += C.css(e, "padding" + oe[s], !0, r), "padding" !== n ? u += C.css(e, "border" + oe[s] + "Width", !0, r) : a += C.css(e, "border" + oe[s] + "Width", !0, r));
            return !i && o >= 0 && (u += Math.max(0, Math.ceil(e["offset" + t[0].toUpperCase() + t.slice(1)] - o - u - a - .5))), u
        }

        function et(e, t, n) {
            var i = $e(e), r = We(e, t, i), o = "border-box" === C.css(e, "boxSizing", !1, i), s = o;
            if (Be.test(r)) {
                if (!n)return r;
                r = "auto"
            }
            return s = s && (m.boxSizingReliable() || r === e.style[t]), ("auto" === r || !parseFloat(r) && "inline" === C.css(e, "display", !1, i)) && (r = e["offset" + t[0].toUpperCase() + t.slice(1)], s = !0), (r = parseFloat(r) || 0) + Ze(e, t, n || (o ? "border" : "content"), s, i, r) + "px"
        }

        function tt(e, t, n, i, r) {
            return new tt.prototype.init(e, t, n, i, r)
        }

        C.extend({
            cssHooks: {
                opacity: {
                    get: function (e, t) {
                        if (t) {
                            var n = We(e, "opacity");
                            return "" === n ? "1" : n
                        }
                    }
                }
            },
            cssNumber: {
                animationIterationCount: !0,
                columnCount: !0,
                fillOpacity: !0,
                flexGrow: !0,
                flexShrink: !0,
                fontWeight: !0,
                lineHeight: !0,
                opacity: !0,
                order: !0,
                orphans: !0,
                widows: !0,
                zIndex: !0,
                zoom: !0
            },
            cssProps: {},
            style: function (e, t, n, i) {
                if (e && 3 !== e.nodeType && 8 !== e.nodeType && e.style) {
                    var r, o, s, a = Y(t), u = Ue.test(t), l = e.style;
                    if (u || (t = Je(a)), s = C.cssHooks[t] || C.cssHooks[a], void 0 === n)return s && "get" in s && void 0 !== (r = s.get(e, !1, i)) ? r : l[t];
                    "string" === (o = typeof n) && (r = re.exec(n)) && r[1] && (n = ue(e, t, r), o = "number"), null != n && n == n && ("number" === o && (n += r && r[3] || (C.cssNumber[a] ? "" : "px")), m.clearCloneStyle || "" !== n || 0 !== t.indexOf("background") || (l[t] = "inherit"), s && "set" in s && void 0 === (n = s.set(e, n, i)) || (u ? l.setProperty(t, n) : l[t] = n))
                }
            },
            css: function (e, t, n, i) {
                var r, o, s, a = Y(t);
                return Ue.test(t) || (t = Je(a)), (s = C.cssHooks[t] || C.cssHooks[a]) && "get" in s && (r = s.get(e, !0, n)), void 0 === r && (r = We(e, t, i)), "normal" === r && t in Xe && (r = Xe[t]), "" === n || n ? (o = parseFloat(r), !0 === n || isFinite(o) ? o || 0 : r) : r
            }
        }), C.each(["height", "width"], function (e, t) {
            C.cssHooks[t] = {
                get: function (e, n, i) {
                    if (n)return !Ve.test(C.css(e, "display")) || e.getClientRects().length && e.getBoundingClientRect().width ? et(e, t, i) : ae(e, Ge, function () {
                        return et(e, t, i)
                    })
                }, set: function (e, n, i) {
                    var r, o = $e(e), s = "border-box" === C.css(e, "boxSizing", !1, o), a = i && Ze(e, t, i, s, o);
                    return s && m.scrollboxSize() === o.position && (a -= Math.ceil(e["offset" + t[0].toUpperCase() + t.slice(1)] - parseFloat(o[t]) - Ze(e, t, "border", !1, o) - .5)), a && (r = re.exec(n)) && "px" !== (r[3] || "px") && (e.style[t] = n, n = C.css(e, t)), Ke(0, n, a)
                }
            }
        }), C.cssHooks.marginLeft = _e(m.reliableMarginLeft, function (e, t) {
            if (t)return (parseFloat(We(e, "marginLeft")) || e.getBoundingClientRect().left - ae(e, {marginLeft: 0}, function () {
                    return e.getBoundingClientRect().left
                })) + "px"
        }), C.each({margin: "", padding: "", border: "Width"}, function (e, t) {
            C.cssHooks[e + t] = {
                expand: function (n) {
                    for (var i = 0, r = {}, o = "string" == typeof n ? n.split(" ") : [n]; i < 4; i++)r[e + oe[i] + t] = o[i] || o[i - 2] || o[0];
                    return r
                }
            }, "margin" !== e && (C.cssHooks[e + t].set = Ke)
        }), C.fn.extend({
            css: function (e, t) {
                return V(this, function (e, t, n) {
                    var i, r, o = {}, s = 0;
                    if (Array.isArray(t)) {
                        for (i = $e(e), r = t.length; s < r; s++)o[t[s]] = C.css(e, t[s], !1, i);
                        return o
                    }
                    return void 0 !== n ? C.style(e, t, n) : C.css(e, t)
                }, e, t, arguments.length > 1)
            }
        }), C.Tween = tt, tt.prototype = {
            constructor: tt, init: function (e, t, n, i, r, o) {
                this.elem = e, this.prop = n, this.easing = r || C.easing._default, this.options = t, this.start = this.now = this.cur(), this.end = i, this.unit = o || (C.cssNumber[n] ? "" : "px")
            }, cur: function () {
                var e = tt.propHooks[this.prop];
                return e && e.get ? e.get(this) : tt.propHooks._default.get(this)
            }, run: function (e) {
                var t, n = tt.propHooks[this.prop];
                return this.options.duration ? this.pos = t = C.easing[this.easing](e, this.options.duration * e, 0, 1, this.options.duration) : this.pos = t = e, this.now = (this.end - this.start) * t + this.start, this.options.step && this.options.step.call(this.elem, this.now, this), n && n.set ? n.set(this) : tt.propHooks._default.set(this), this
            }
        }, tt.prototype.init.prototype = tt.prototype, tt.propHooks = {
            _default: {
                get: function (e) {
                    var t;
                    return 1 !== e.elem.nodeType || null != e.elem[e.prop] && null == e.elem.style[e.prop] ? e.elem[e.prop] : (t = C.css(e.elem, e.prop, "")) && "auto" !== t ? t : 0
                }, set: function (e) {
                    C.fx.step[e.prop] ? C.fx.step[e.prop](e) : 1 !== e.elem.nodeType || null == e.elem.style[C.cssProps[e.prop]] && !C.cssHooks[e.prop] ? e.elem[e.prop] = e.now : C.style(e.elem, e.prop, e.now + e.unit)
                }
            }
        }, tt.propHooks.scrollTop = tt.propHooks.scrollLeft = {
            set: function (e) {
                e.elem.nodeType && e.elem.parentNode && (e.elem[e.prop] = e.now)
            }
        }, C.easing = {
            linear: function (e) {
                return e
            }, swing: function (e) {
                return .5 - Math.cos(e * Math.PI) / 2
            }, _default: "swing"
        }, C.fx = tt.prototype.init, C.fx.step = {};
        var nt, it, rt = /^(?:toggle|show|hide)$/, ot = /queueHooks$/;

        function st() {
            it && (!1 === s.hidden && n.requestAnimationFrame ? n.requestAnimationFrame(st) : n.setTimeout(st, C.fx.interval), C.fx.tick())
        }

        function at() {
            return n.setTimeout(function () {
                nt = void 0
            }), nt = Date.now()
        }

        function ut(e, t) {
            var n, i = 0, r = {height: e};
            for (t = t ? 1 : 0; i < 4; i += 2 - t)r["margin" + (n = oe[i])] = r["padding" + n] = e;
            return t && (r.opacity = r.width = e), r
        }

        function lt(e, t, n) {
            for (var i, r = (ct.tweeners[t] || []).concat(ct.tweeners["*"]), o = 0, s = r.length; o < s; o++)if (i = r[o].call(n, t, e))return i
        }

        function ct(e, t, n) {
            var i, r, o = 0, s = ct.prefilters.length, a = C.Deferred().always(function () {
                delete u.elem
            }), u = function () {
                if (r)return !1;
                for (var t = nt || at(), n = Math.max(0, l.startTime + l.duration - t), i = 1 - (n / l.duration || 0), o = 0, s = l.tweens.length; o < s; o++)l.tweens[o].run(i);
                return a.notifyWith(e, [l, i, n]), i < 1 && s ? n : (s || a.notifyWith(e, [l, 1, 0]), a.resolveWith(e, [l]), !1)
            }, l = a.promise({
                elem: e,
                props: C.extend({}, t),
                opts: C.extend(!0, {specialEasing: {}, easing: C.easing._default}, n),
                originalProperties: t,
                originalOptions: n,
                startTime: nt || at(),
                duration: n.duration,
                tweens: [],
                createTween: function (t, n) {
                    var i = C.Tween(e, l.opts, t, n, l.opts.specialEasing[t] || l.opts.easing);
                    return l.tweens.push(i), i
                },
                stop: function (t) {
                    var n = 0, i = t ? l.tweens.length : 0;
                    if (r)return this;
                    for (r = !0; n < i; n++)l.tweens[n].run(1);
                    return t ? (a.notifyWith(e, [l, 1, 0]), a.resolveWith(e, [l, t])) : a.rejectWith(e, [l, t]), this
                }
            }), c = l.props;
            for (!function (e, t) {
                var n, i, r, o, s;
                for (n in e)if (r = t[i = Y(n)], o = e[n], Array.isArray(o) && (r = o[1], o = e[n] = o[0]), n !== i && (e[i] = o, delete e[n]), (s = C.cssHooks[i]) && "expand" in s)for (n in o = s.expand(o), delete e[i], o)n in e || (e[n] = o[n], t[n] = r); else t[i] = r
            }(c, l.opts.specialEasing); o < s; o++)if (i = ct.prefilters[o].call(l, e, c, l.opts))return v(i.stop) && (C._queueHooks(l.elem, l.opts.queue).stop = i.stop.bind(i)), i;
            return C.map(c, lt, l), v(l.opts.start) && l.opts.start.call(e, l), l.progress(l.opts.progress).done(l.opts.done, l.opts.complete).fail(l.opts.fail).always(l.opts.always), C.fx.timer(C.extend(u, {
                elem: e,
                anim: l,
                queue: l.opts.queue
            })), l
        }

        C.Animation = C.extend(ct, {
            tweeners: {
                "*": [function (e, t) {
                    var n = this.createTween(e, t);
                    return ue(n.elem, e, re.exec(t), n), n
                }]
            }, tweener: function (e, t) {
                v(e) ? (t = e, e = ["*"]) : e = e.match(M);
                for (var n, i = 0, r = e.length; i < r; i++)n = e[i], ct.tweeners[n] = ct.tweeners[n] || [], ct.tweeners[n].unshift(t)
            }, prefilters: [function (e, t, n) {
                var i, r, o, s, a, u, l, c, f = "width" in t || "height" in t, h = this, p = {}, d = e.style, g = e.nodeType && se(e), y = K.get(e, "fxshow");
                for (i in n.queue || (null == (s = C._queueHooks(e, "fx")).unqueued && (s.unqueued = 0, a = s.empty.fire, s.empty.fire = function () {
                    s.unqueued || a()
                }), s.unqueued++, h.always(function () {
                    h.always(function () {
                        s.unqueued--, C.queue(e, "fx").length || s.empty.fire()
                    })
                })), t)if (r = t[i], rt.test(r)) {
                    if (delete t[i], o = o || "toggle" === r, r === (g ? "hide" : "show")) {
                        if ("show" !== r || !y || void 0 === y[i])continue;
                        g = !0
                    }
                    p[i] = y && y[i] || C.style(e, i)
                }
                if ((u = !C.isEmptyObject(t)) || !C.isEmptyObject(p))for (i in f && 1 === e.nodeType && (n.overflow = [d.overflow, d.overflowX, d.overflowY], null == (l = y && y.display) && (l = K.get(e, "display")), "none" === (c = C.css(e, "display")) && (l ? c = l : (fe([e], !0), l = e.style.display || l, c = C.css(e, "display"), fe([e]))), ("inline" === c || "inline-block" === c && null != l) && "none" === C.css(e, "float") && (u || (h.done(function () {
                    d.display = l
                }), null == l && (c = d.display, l = "none" === c ? "" : c)), d.display = "inline-block")), n.overflow && (d.overflow = "hidden", h.always(function () {
                    d.overflow = n.overflow[0], d.overflowX = n.overflow[1], d.overflowY = n.overflow[2]
                })), u = !1, p)u || (y ? "hidden" in y && (g = y.hidden) : y = K.access(e, "fxshow", {display: l}), o && (y.hidden = !g), g && fe([e], !0), h.done(function () {
                    for (i in g || fe([e]), K.remove(e, "fxshow"), p)C.style(e, i, p[i])
                })), u = lt(g ? y[i] : 0, i, h), i in y || (y[i] = u.start, g && (u.end = u.start, u.start = 0))
            }], prefilter: function (e, t) {
                t ? ct.prefilters.unshift(e) : ct.prefilters.push(e)
            }
        }), C.speed = function (e, t, n) {
            var i = e && "object" == typeof e ? C.extend({}, e) : {
                complete: n || !n && t || v(e) && e,
                duration: e,
                easing: n && t || t && !v(t) && t
            };
            return C.fx.off ? i.duration = 0 : "number" != typeof i.duration && (i.duration in C.fx.speeds ? i.duration = C.fx.speeds[i.duration] : i.duration = C.fx.speeds._default), null != i.queue && !0 !== i.queue || (i.queue = "fx"), i.old = i.complete, i.complete = function () {
                v(i.old) && i.old.call(this), i.queue && C.dequeue(this, i.queue)
            }, i
        }, C.fn.extend({
            fadeTo: function (e, t, n, i) {
                return this.filter(se).css("opacity", 0).show().end().animate({opacity: t}, e, n, i)
            }, animate: function (e, t, n, i) {
                var r = C.isEmptyObject(e), o = C.speed(t, n, i), s = function () {
                    var t = ct(this, C.extend({}, e), o);
                    (r || K.get(this, "finish")) && t.stop(!0)
                };
                return s.finish = s, r || !1 === o.queue ? this.each(s) : this.queue(o.queue, s)
            }, stop: function (e, t, n) {
                var i = function (e) {
                    var t = e.stop;
                    delete e.stop, t(n)
                };
                return "string" != typeof e && (n = t, t = e, e = void 0), t && !1 !== e && this.queue(e || "fx", []), this.each(function () {
                    var t = !0, r = null != e && e + "queueHooks", o = C.timers, s = K.get(this);
                    if (r)s[r] && s[r].stop && i(s[r]); else for (r in s)s[r] && s[r].stop && ot.test(r) && i(s[r]);
                    for (r = o.length; r--;)o[r].elem !== this || null != e && o[r].queue !== e || (o[r].anim.stop(n), t = !1, o.splice(r, 1));
                    !t && n || C.dequeue(this, e)
                })
            }, finish: function (e) {
                return !1 !== e && (e = e || "fx"), this.each(function () {
                    var t, n = K.get(this), i = n[e + "queue"], r = n[e + "queueHooks"], o = C.timers, s = i ? i.length : 0;
                    for (n.finish = !0, C.queue(this, e, []), r && r.stop && r.stop.call(this, !0), t = o.length; t--;)o[t].elem === this && o[t].queue === e && (o[t].anim.stop(!0), o.splice(t, 1));
                    for (t = 0; t < s; t++)i[t] && i[t].finish && i[t].finish.call(this);
                    delete n.finish
                })
            }
        }), C.each(["toggle", "show", "hide"], function (e, t) {
            var n = C.fn[t];
            C.fn[t] = function (e, i, r) {
                return null == e || "boolean" == typeof e ? n.apply(this, arguments) : this.animate(ut(t, !0), e, i, r)
            }
        }), C.each({
            slideDown: ut("show"),
            slideUp: ut("hide"),
            slideToggle: ut("toggle"),
            fadeIn: {opacity: "show"},
            fadeOut: {opacity: "hide"},
            fadeToggle: {opacity: "toggle"}
        }, function (e, t) {
            C.fn[e] = function (e, n, i) {
                return this.animate(t, e, n, i)
            }
        }), C.timers = [], C.fx.tick = function () {
            var e, t = 0, n = C.timers;
            for (nt = Date.now(); t < n.length; t++)(e = n[t])() || n[t] !== e || n.splice(t--, 1);
            n.length || C.fx.stop(), nt = void 0
        }, C.fx.timer = function (e) {
            C.timers.push(e), C.fx.start()
        }, C.fx.interval = 13, C.fx.start = function () {
            it || (it = !0, st())
        }, C.fx.stop = function () {
            it = null
        }, C.fx.speeds = {slow: 600, fast: 200, _default: 400}, C.fn.delay = function (e, t) {
            return e = C.fx && C.fx.speeds[e] || e, t = t || "fx", this.queue(t, function (t, i) {
                var r = n.setTimeout(t, e);
                i.stop = function () {
                    n.clearTimeout(r)
                }
            })
        }, function () {
            var e = s.createElement("input"), t = s.createElement("select").appendChild(s.createElement("option"));
            e.type = "checkbox", m.checkOn = "" !== e.value, m.optSelected = t.selected, (e = s.createElement("input")).value = "t", e.type = "radio", m.radioValue = "t" === e.value
        }();
        var ft, ht = C.expr.attrHandle;
        C.fn.extend({
            attr: function (e, t) {
                return V(this, C.attr, e, t, arguments.length > 1)
            }, removeAttr: function (e) {
                return this.each(function () {
                    C.removeAttr(this, e)
                })
            }
        }), C.extend({
            attr: function (e, t, n) {
                var i, r, o = e.nodeType;
                if (3 !== o && 8 !== o && 2 !== o)return void 0 === e.getAttribute ? C.prop(e, t, n) : (1 === o && C.isXMLDoc(e) || (r = C.attrHooks[t.toLowerCase()] || (C.expr.match.bool.test(t) ? ft : void 0)), void 0 !== n ? null === n ? void C.removeAttr(e, t) : r && "set" in r && void 0 !== (i = r.set(e, n, t)) ? i : (e.setAttribute(t, n + ""), n) : r && "get" in r && null !== (i = r.get(e, t)) ? i : null == (i = C.find.attr(e, t)) ? void 0 : i)
            }, attrHooks: {
                type: {
                    set: function (e, t) {
                        if (!m.radioValue && "radio" === t && N(e, "input")) {
                            var n = e.value;
                            return e.setAttribute("type", t), n && (e.value = n), t
                        }
                    }
                }
            }, removeAttr: function (e, t) {
                var n, i = 0, r = t && t.match(M);
                if (r && 1 === e.nodeType)for (; n = r[i++];)e.removeAttribute(n)
            }
        }), ft = {
            set: function (e, t, n) {
                return !1 === t ? C.removeAttr(e, n) : e.setAttribute(n, n), n
            }
        }, C.each(C.expr.match.bool.source.match(/\w+/g), function (e, t) {
            var n = ht[t] || C.find.attr;
            ht[t] = function (e, t, i) {
                var r, o, s = t.toLowerCase();
                return i || (o = ht[s], ht[s] = r, r = null != n(e, t, i) ? s : null, ht[s] = o), r
            }
        });
        var pt = /^(?:input|select|textarea|button)$/i, dt = /^(?:a|area)$/i;

        function gt(e) {
            return (e.match(M) || []).join(" ")
        }

        function yt(e) {
            return e.getAttribute && e.getAttribute("class") || ""
        }

        function mt(e) {
            return Array.isArray(e) ? e : "string" == typeof e && e.match(M) || []
        }

        C.fn.extend({
            prop: function (e, t) {
                return V(this, C.prop, e, t, arguments.length > 1)
            }, removeProp: function (e) {
                return this.each(function () {
                    delete this[C.propFix[e] || e]
                })
            }
        }), C.extend({
            prop: function (e, t, n) {
                var i, r, o = e.nodeType;
                if (3 !== o && 8 !== o && 2 !== o)return 1 === o && C.isXMLDoc(e) || (t = C.propFix[t] || t, r = C.propHooks[t]), void 0 !== n ? r && "set" in r && void 0 !== (i = r.set(e, n, t)) ? i : e[t] = n : r && "get" in r && null !== (i = r.get(e, t)) ? i : e[t]
            }, propHooks: {
                tabIndex: {
                    get: function (e) {
                        var t = C.find.attr(e, "tabindex");
                        return t ? parseInt(t, 10) : pt.test(e.nodeName) || dt.test(e.nodeName) && e.href ? 0 : -1
                    }
                }
            }, propFix: {for: "htmlFor", class: "className"}
        }), m.optSelected || (C.propHooks.selected = {
            get: function (e) {
                var t = e.parentNode;
                return t && t.parentNode && t.parentNode.selectedIndex, null
            }, set: function (e) {
                var t = e.parentNode;
                t && (t.selectedIndex, t.parentNode && t.parentNode.selectedIndex)
            }
        }), C.each(["tabIndex", "readOnly", "maxLength", "cellSpacing", "cellPadding", "rowSpan", "colSpan", "useMap", "frameBorder", "contentEditable"], function () {
            C.propFix[this.toLowerCase()] = this
        }), C.fn.extend({
            addClass: function (e) {
                var t, n, i, r, o, s, a, u = 0;
                if (v(e))return this.each(function (t) {
                    C(this).addClass(e.call(this, t, yt(this)))
                });
                if ((t = mt(e)).length)for (; n = this[u++];)if (r = yt(n), i = 1 === n.nodeType && " " + gt(r) + " ") {
                    for (s = 0; o = t[s++];)i.indexOf(" " + o + " ") < 0 && (i += o + " ");
                    r !== (a = gt(i)) && n.setAttribute("class", a)
                }
                return this
            }, removeClass: function (e) {
                var t, n, i, r, o, s, a, u = 0;
                if (v(e))return this.each(function (t) {
                    C(this).removeClass(e.call(this, t, yt(this)))
                });
                if (!arguments.length)return this.attr("class", "");
                if ((t = mt(e)).length)for (; n = this[u++];)if (r = yt(n), i = 1 === n.nodeType && " " + gt(r) + " ") {
                    for (s = 0; o = t[s++];)for (; i.indexOf(" " + o + " ") > -1;)i = i.replace(" " + o + " ", " ");
                    r !== (a = gt(i)) && n.setAttribute("class", a)
                }
                return this
            }, toggleClass: function (e, t) {
                var n = typeof e, i = "string" === n || Array.isArray(e);
                return "boolean" == typeof t && i ? t ? this.addClass(e) : this.removeClass(e) : v(e) ? this.each(function (n) {
                    C(this).toggleClass(e.call(this, n, yt(this), t), t)
                }) : this.each(function () {
                    var t, r, o, s;
                    if (i)for (r = 0, o = C(this), s = mt(e); t = s[r++];)o.hasClass(t) ? o.removeClass(t) : o.addClass(t); else void 0 !== e && "boolean" !== n || ((t = yt(this)) && K.set(this, "__className__", t), this.setAttribute && this.setAttribute("class", t || !1 === e ? "" : K.get(this, "__className__") || ""))
                })
            }, hasClass: function (e) {
                var t, n, i = 0;
                for (t = " " + e + " "; n = this[i++];)if (1 === n.nodeType && (" " + gt(yt(n)) + " ").indexOf(t) > -1)return !0;
                return !1
            }
        });
        var vt = /\r/g;
        C.fn.extend({
            val: function (e) {
                var t, n, i, r = this[0];
                return arguments.length ? (i = v(e), this.each(function (n) {
                    var r;
                    1 === this.nodeType && (null == (r = i ? e.call(this, n, C(this).val()) : e) ? r = "" : "number" == typeof r ? r += "" : Array.isArray(r) && (r = C.map(r, function (e) {
                        return null == e ? "" : e + ""
                    })), (t = C.valHooks[this.type] || C.valHooks[this.nodeName.toLowerCase()]) && "set" in t && void 0 !== t.set(this, r, "value") || (this.value = r))
                })) : r ? (t = C.valHooks[r.type] || C.valHooks[r.nodeName.toLowerCase()]) && "get" in t && void 0 !== (n = t.get(r, "value")) ? n : "string" == typeof(n = r.value) ? n.replace(vt, "") : null == n ? "" : n : void 0
            }
        }), C.extend({
            valHooks: {
                option: {
                    get: function (e) {
                        var t = C.find.attr(e, "value");
                        return null != t ? t : gt(C.text(e))
                    }
                }, select: {
                    get: function (e) {
                        var t, n, i, r = e.options, o = e.selectedIndex, s = "select-one" === e.type, a = s ? null : [], u = s ? o + 1 : r.length;
                        for (i = o < 0 ? u : s ? o : 0; i < u; i++)if (((n = r[i]).selected || i === o) && !n.disabled && (!n.parentNode.disabled || !N(n.parentNode, "optgroup"))) {
                            if (t = C(n).val(), s)return t;
                            a.push(t)
                        }
                        return a
                    }, set: function (e, t) {
                        for (var n, i, r = e.options, o = C.makeArray(t), s = r.length; s--;)((i = r[s]).selected = C.inArray(C.valHooks.option.get(i), o) > -1) && (n = !0);
                        return n || (e.selectedIndex = -1), o
                    }
                }
            }
        }), C.each(["radio", "checkbox"], function () {
            C.valHooks[this] = {
                set: function (e, t) {
                    if (Array.isArray(t))return e.checked = C.inArray(C(e).val(), t) > -1
                }
            }, m.checkOn || (C.valHooks[this].get = function (e) {
                return null === e.getAttribute("value") ? "on" : e.value
            })
        }), m.focusin = "onfocusin" in n;
        var xt = /^(?:focusinfocus|focusoutblur)$/, bt = function (e) {
            e.stopPropagation()
        };
        C.extend(C.event, {
            trigger: function (e, t, i, r) {
                var o, a, u, l, c, f, h, p, g = [i || s], y = d.call(e, "type") ? e.type : e, m = d.call(e, "namespace") ? e.namespace.split(".") : [];
                if (a = p = u = i = i || s, 3 !== i.nodeType && 8 !== i.nodeType && !xt.test(y + C.event.triggered) && (y.indexOf(".") > -1 && (y = (m = y.split(".")).shift(), m.sort()), c = y.indexOf(":") < 0 && "on" + y, (e = e[C.expando] ? e : new C.Event(y, "object" == typeof e && e)).isTrigger = r ? 2 : 3, e.namespace = m.join("."), e.rnamespace = e.namespace ? new RegExp("(^|\\.)" + m.join("\\.(?:.*\\.|)") + "(\\.|$)") : null, e.result = void 0, e.target || (e.target = i), t = null == t ? [e] : C.makeArray(t, [e]), h = C.event.special[y] || {}, r || !h.trigger || !1 !== h.trigger.apply(i, t))) {
                    if (!r && !h.noBubble && !x(i)) {
                        for (l = h.delegateType || y, xt.test(l + y) || (a = a.parentNode); a; a = a.parentNode)g.push(a), u = a;
                        u === (i.ownerDocument || s) && g.push(u.defaultView || u.parentWindow || n)
                    }
                    for (o = 0; (a = g[o++]) && !e.isPropagationStopped();)p = a, e.type = o > 1 ? l : h.bindType || y, (f = (K.get(a, "events") || {})[e.type] && K.get(a, "handle")) && f.apply(a, t), (f = c && a[c]) && f.apply && Q(a) && (e.result = f.apply(a, t), !1 === e.result && e.preventDefault());
                    return e.type = y, r || e.isDefaultPrevented() || h._default && !1 !== h._default.apply(g.pop(), t) || !Q(i) || c && v(i[y]) && !x(i) && ((u = i[c]) && (i[c] = null), C.event.triggered = y, e.isPropagationStopped() && p.addEventListener(y, bt), i[y](), e.isPropagationStopped() && p.removeEventListener(y, bt), C.event.triggered = void 0, u && (i[c] = u)), e.result
                }
            }, simulate: function (e, t, n) {
                var i = C.extend(new C.Event, n, {type: e, isSimulated: !0});
                C.event.trigger(i, null, t)
            }
        }), C.fn.extend({
            trigger: function (e, t) {
                return this.each(function () {
                    C.event.trigger(e, t, this)
                })
            }, triggerHandler: function (e, t) {
                var n = this[0];
                if (n)return C.event.trigger(e, t, n, !0)
            }
        }), m.focusin || C.each({focus: "focusin", blur: "focusout"}, function (e, t) {
            var n = function (e) {
                C.event.simulate(t, e.target, C.event.fix(e))
            };
            C.event.special[t] = {
                setup: function () {
                    var i = this.ownerDocument || this, r = K.access(i, t);
                    r || i.addEventListener(e, n, !0), K.access(i, t, (r || 0) + 1)
                }, teardown: function () {
                    var i = this.ownerDocument || this, r = K.access(i, t) - 1;
                    r ? K.access(i, t, r) : (i.removeEventListener(e, n, !0), K.remove(i, t))
                }
            }
        });
        var wt = n.location, Tt = Date.now(), Ct = /\?/;
        C.parseXML = function (e) {
            var t;
            if (!e || "string" != typeof e)return null;
            try {
                t = (new n.DOMParser).parseFromString(e, "text/xml")
            } catch (e) {
                t = void 0
            }
            return t && !t.getElementsByTagName("parsererror").length || C.error("Invalid XML: " + e), t
        };
        var St = /\[\]$/, jt = /\r?\n/g, Et = /^(?:submit|button|image|reset|file)$/i, At = /^(?:input|select|textarea|keygen)/i;

        function kt(e, t, n, i) {
            var r;
            if (Array.isArray(t))C.each(t, function (t, r) {
                n || St.test(e) ? i(e, r) : kt(e + "[" + ("object" == typeof r && null != r ? t : "") + "]", r, n, i)
            }); else if (n || "object" !== T(t))i(e, t); else for (r in t)kt(e + "[" + r + "]", t[r], n, i)
        }

        C.param = function (e, t) {
            var n, i = [], r = function (e, t) {
                var n = v(t) ? t() : t;
                i[i.length] = encodeURIComponent(e) + "=" + encodeURIComponent(null == n ? "" : n)
            };
            if (Array.isArray(e) || e.jquery && !C.isPlainObject(e))C.each(e, function () {
                r(this.name, this.value)
            }); else for (n in e)kt(n, e[n], t, r);
            return i.join("&")
        }, C.fn.extend({
            serialize: function () {
                return C.param(this.serializeArray())
            }, serializeArray: function () {
                return this.map(function () {
                    var e = C.prop(this, "elements");
                    return e ? C.makeArray(e) : this
                }).filter(function () {
                    var e = this.type;
                    return this.name && !C(this).is(":disabled") && At.test(this.nodeName) && !Et.test(e) && (this.checked || !he.test(e))
                }).map(function (e, t) {
                    var n = C(this).val();
                    return null == n ? null : Array.isArray(n) ? C.map(n, function (e) {
                        return {name: t.name, value: e.replace(jt, "\r\n")}
                    }) : {name: t.name, value: n.replace(jt, "\r\n")}
                }).get()
            }
        });
        var Rt = /%20/g, Nt = /#.*$/, Dt = /([?&])_=[^&]*/, Ht = /^(.*?):[ \t]*([^\r\n]*)$/gm, Ot = /^(?:GET|HEAD)$/, Lt = /^\/\//, qt = {}, It = {}, Ft = "*/".concat("*"), Mt = s.createElement("a");

        function Pt(e) {
            return function (t, n) {
                "string" != typeof t && (n = t, t = "*");
                var i, r = 0, o = t.toLowerCase().match(M) || [];
                if (v(n))for (; i = o[r++];)"+" === i[0] ? (i = i.slice(1) || "*", (e[i] = e[i] || []).unshift(n)) : (e[i] = e[i] || []).push(n)
            }
        }

        function Bt(e, t, n, i) {
            var r = {}, o = e === It;

            function s(a) {
                var u;
                return r[a] = !0, C.each(e[a] || [], function (e, a) {
                    var l = a(t, n, i);
                    return "string" != typeof l || o || r[l] ? o ? !(u = l) : void 0 : (t.dataTypes.unshift(l), s(l), !1)
                }), u
            }

            return s(t.dataTypes[0]) || !r["*"] && s("*")
        }

        function $t(e, t) {
            var n, i, r = C.ajaxSettings.flatOptions || {};
            for (n in t)void 0 !== t[n] && ((r[n] ? e : i || (i = {}))[n] = t[n]);
            return i && C.extend(!0, e, i), e
        }

        Mt.href = wt.href, C.extend({
            active: 0,
            lastModified: {},
            etag: {},
            ajaxSettings: {
                url: wt.href,
                type: "GET",
                isLocal: /^(?:about|app|app-storage|.+-extension|file|res|widget):$/.test(wt.protocol),
                global: !0,
                processData: !0,
                async: !0,
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                accepts: {
                    "*": Ft,
                    text: "text/plain",
                    html: "text/html",
                    xml: "application/xml, text/xml",
                    json: "application/json, text/javascript"
                },
                contents: {xml: /\bxml\b/, html: /\bhtml/, json: /\bjson\b/},
                responseFields: {xml: "responseXML", text: "responseText", json: "responseJSON"},
                converters: {"* text": String, "text html": !0, "text json": JSON.parse, "text xml": C.parseXML},
                flatOptions: {url: !0, context: !0}
            },
            ajaxSetup: function (e, t) {
                return t ? $t($t(e, C.ajaxSettings), t) : $t(C.ajaxSettings, e)
            },
            ajaxPrefilter: Pt(qt),
            ajaxTransport: Pt(It),
            ajax: function (e, t) {
                "object" == typeof e && (t = e, e = void 0), t = t || {};
                var i, r, o, a, u, l, c, f, h, p, d = C.ajaxSetup({}, t), g = d.context || d, y = d.context && (g.nodeType || g.jquery) ? C(g) : C.event, m = C.Deferred(), v = C.Callbacks("once memory"), x = d.statusCode || {}, b = {}, w = {}, T = "canceled", S = {
                    readyState: 0,
                    getResponseHeader: function (e) {
                        var t;
                        if (c) {
                            if (!a)for (a = {}; t = Ht.exec(o);)a[t[1].toLowerCase()] = t[2];
                            t = a[e.toLowerCase()]
                        }
                        return null == t ? null : t
                    },
                    getAllResponseHeaders: function () {
                        return c ? o : null
                    },
                    setRequestHeader: function (e, t) {
                        return null == c && (e = w[e.toLowerCase()] = w[e.toLowerCase()] || e, b[e] = t), this
                    },
                    overrideMimeType: function (e) {
                        return null == c && (d.mimeType = e), this
                    },
                    statusCode: function (e) {
                        var t;
                        if (e)if (c)S.always(e[S.status]); else for (t in e)x[t] = [x[t], e[t]];
                        return this
                    },
                    abort: function (e) {
                        var t = e || T;
                        return i && i.abort(t), j(0, t), this
                    }
                };
                if (m.promise(S), d.url = ((e || d.url || wt.href) + "").replace(Lt, wt.protocol + "//"), d.type = t.method || t.type || d.method || d.type, d.dataTypes = (d.dataType || "*").toLowerCase().match(M) || [""], null == d.crossDomain) {
                    l = s.createElement("a");
                    try {
                        l.href = d.url, l.href = l.href, d.crossDomain = Mt.protocol + "//" + Mt.host != l.protocol + "//" + l.host
                    } catch (e) {
                        d.crossDomain = !0
                    }
                }
                if (d.data && d.processData && "string" != typeof d.data && (d.data = C.param(d.data, d.traditional)), Bt(qt, d, t, S), c)return S;
                for (h in(f = C.event && d.global) && 0 == C.active++ && C.event.trigger("ajaxStart"), d.type = d.type.toUpperCase(), d.hasContent = !Ot.test(d.type), r = d.url.replace(Nt, ""), d.hasContent ? d.data && d.processData && 0 === (d.contentType || "").indexOf("application/x-www-form-urlencoded") && (d.data = d.data.replace(Rt, "+")) : (p = d.url.slice(r.length), d.data && (d.processData || "string" == typeof d.data) && (r += (Ct.test(r) ? "&" : "?") + d.data, delete d.data), !1 === d.cache && (r = r.replace(Dt, "$1"), p = (Ct.test(r) ? "&" : "?") + "_=" + Tt++ + p), d.url = r + p), d.ifModified && (C.lastModified[r] && S.setRequestHeader("If-Modified-Since", C.lastModified[r]), C.etag[r] && S.setRequestHeader("If-None-Match", C.etag[r])), (d.data && d.hasContent && !1 !== d.contentType || t.contentType) && S.setRequestHeader("Content-Type", d.contentType), S.setRequestHeader("Accept", d.dataTypes[0] && d.accepts[d.dataTypes[0]] ? d.accepts[d.dataTypes[0]] + ("*" !== d.dataTypes[0] ? ", " + Ft + "; q=0.01" : "") : d.accepts["*"]), d.headers)S.setRequestHeader(h, d.headers[h]);
                if (d.beforeSend && (!1 === d.beforeSend.call(g, S, d) || c))return S.abort();
                if (T = "abort", v.add(d.complete), S.done(d.success), S.fail(d.error), i = Bt(It, d, t, S)) {
                    if (S.readyState = 1, f && y.trigger("ajaxSend", [S, d]), c)return S;
                    d.async && d.timeout > 0 && (u = n.setTimeout(function () {
                        S.abort("timeout")
                    }, d.timeout));
                    try {
                        c = !1, i.send(b, j)
                    } catch (e) {
                        if (c)throw e;
                        j(-1, e)
                    }
                } else j(-1, "No Transport");
                function j(e, t, s, a) {
                    var l, h, p, b, w, T = t;
                    c || (c = !0, u && n.clearTimeout(u), i = void 0, o = a || "", S.readyState = e > 0 ? 4 : 0, l = e >= 200 && e < 300 || 304 === e, s && (b = function (e, t, n) {
                        for (var i, r, o, s, a = e.contents, u = e.dataTypes; "*" === u[0];)u.shift(), void 0 === i && (i = e.mimeType || t.getResponseHeader("Content-Type"));
                        if (i)for (r in a)if (a[r] && a[r].test(i)) {
                            u.unshift(r);
                            break
                        }
                        if (u[0] in n)o = u[0]; else {
                            for (r in n) {
                                if (!u[0] || e.converters[r + " " + u[0]]) {
                                    o = r;
                                    break
                                }
                                s || (s = r)
                            }
                            o = o || s
                        }
                        if (o)return o !== u[0] && u.unshift(o), n[o]
                    }(d, S, s)), b = function (e, t, n, i) {
                        var r, o, s, a, u, l = {}, c = e.dataTypes.slice();
                        if (c[1])for (s in e.converters)l[s.toLowerCase()] = e.converters[s];
                        for (o = c.shift(); o;)if (e.responseFields[o] && (n[e.responseFields[o]] = t), !u && i && e.dataFilter && (t = e.dataFilter(t, e.dataType)), u = o, o = c.shift())if ("*" === o)o = u; else if ("*" !== u && u !== o) {
                            if (!(s = l[u + " " + o] || l["* " + o]))for (r in l)if ((a = r.split(" "))[1] === o && (s = l[u + " " + a[0]] || l["* " + a[0]])) {
                                !0 === s ? s = l[r] : !0 !== l[r] && (o = a[0], c.unshift(a[1]));
                                break
                            }
                            if (!0 !== s)if (s && e.throws)t = s(t); else try {
                                t = s(t)
                            } catch (e) {
                                return {state: "parsererror", error: s ? e : "No conversion from " + u + " to " + o}
                            }
                        }
                        return {state: "success", data: t}
                    }(d, b, S, l), l ? (d.ifModified && ((w = S.getResponseHeader("Last-Modified")) && (C.lastModified[r] = w), (w = S.getResponseHeader("etag")) && (C.etag[r] = w)), 204 === e || "HEAD" === d.type ? T = "nocontent" : 304 === e ? T = "notmodified" : (T = b.state, h = b.data, l = !(p = b.error))) : (p = T, !e && T || (T = "error", e < 0 && (e = 0))), S.status = e, S.statusText = (t || T) + "", l ? m.resolveWith(g, [h, T, S]) : m.rejectWith(g, [S, T, p]), S.statusCode(x), x = void 0, f && y.trigger(l ? "ajaxSuccess" : "ajaxError", [S, d, l ? h : p]), v.fireWith(g, [S, T]), f && (y.trigger("ajaxComplete", [S, d]), --C.active || C.event.trigger("ajaxStop")))
                }

                return S
            },
            getJSON: function (e, t, n) {
                return C.get(e, t, n, "json")
            },
            getScript: function (e, t) {
                return C.get(e, void 0, t, "script")
            }
        }), C.each(["get", "post"], function (e, t) {
            C[t] = function (e, n, i, r) {
                return v(n) && (r = r || i, i = n, n = void 0), C.ajax(C.extend({
                    url: e,
                    type: t,
                    dataType: r,
                    data: n,
                    success: i
                }, C.isPlainObject(e) && e))
            }
        }), C._evalUrl = function (e) {
            return C.ajax({url: e, type: "GET", dataType: "script", cache: !0, async: !1, global: !1, throws: !0})
        }, C.fn.extend({
            wrapAll: function (e) {
                var t;
                return this[0] && (v(e) && (e = e.call(this[0])), t = C(e, this[0].ownerDocument).eq(0).clone(!0), this[0].parentNode && t.insertBefore(this[0]), t.map(function () {
                    for (var e = this; e.firstElementChild;)e = e.firstElementChild;
                    return e
                }).append(this)), this
            }, wrapInner: function (e) {
                return v(e) ? this.each(function (t) {
                    C(this).wrapInner(e.call(this, t))
                }) : this.each(function () {
                    var t = C(this), n = t.contents();
                    n.length ? n.wrapAll(e) : t.append(e)
                })
            }, wrap: function (e) {
                var t = v(e);
                return this.each(function (n) {
                    C(this).wrapAll(t ? e.call(this, n) : e)
                })
            }, unwrap: function (e) {
                return this.parent(e).not("body").each(function () {
                    C(this).replaceWith(this.childNodes)
                }), this
            }
        }), C.expr.pseudos.hidden = function (e) {
            return !C.expr.pseudos.visible(e)
        }, C.expr.pseudos.visible = function (e) {
            return !!(e.offsetWidth || e.offsetHeight || e.getClientRects().length)
        }, C.ajaxSettings.xhr = function () {
            try {
                return new n.XMLHttpRequest
            } catch (e) {
            }
        };
        var zt = {0: 200, 1223: 204}, Wt = C.ajaxSettings.xhr();
        m.cors = !!Wt && "withCredentials" in Wt, m.ajax = Wt = !!Wt, C.ajaxTransport(function (e) {
            var t, i;
            if (m.cors || Wt && !e.crossDomain)return {
                send: function (r, o) {
                    var s, a = e.xhr();
                    if (a.open(e.type, e.url, e.async, e.username, e.password), e.xhrFields)for (s in e.xhrFields)a[s] = e.xhrFields[s];
                    for (s in e.mimeType && a.overrideMimeType && a.overrideMimeType(e.mimeType), e.crossDomain || r["X-Requested-With"] || (r["X-Requested-With"] = "XMLHttpRequest"), r)a.setRequestHeader(s, r[s]);
                    t = function (e) {
                        return function () {
                            t && (t = i = a.onload = a.onerror = a.onabort = a.ontimeout = a.onreadystatechange = null, "abort" === e ? a.abort() : "error" === e ? "number" != typeof a.status ? o(0, "error") : o(a.status, a.statusText) : o(zt[a.status] || a.status, a.statusText, "text" !== (a.responseType || "text") || "string" != typeof a.responseText ? {binary: a.response} : {text: a.responseText}, a.getAllResponseHeaders()))
                        }
                    }, a.onload = t(), i = a.onerror = a.ontimeout = t("error"), void 0 !== a.onabort ? a.onabort = i : a.onreadystatechange = function () {
                        4 === a.readyState && n.setTimeout(function () {
                            t && i()
                        })
                    }, t = t("abort");
                    try {
                        a.send(e.hasContent && e.data || null)
                    } catch (e) {
                        if (t)throw e
                    }
                }, abort: function () {
                    t && t()
                }
            }
        }), C.ajaxPrefilter(function (e) {
            e.crossDomain && (e.contents.script = !1)
        }), C.ajaxSetup({
            accepts: {script: "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},
            contents: {script: /\b(?:java|ecma)script\b/},
            converters: {
                "text script": function (e) {
                    return C.globalEval(e), e
                }
            }
        }), C.ajaxPrefilter("script", function (e) {
            void 0 === e.cache && (e.cache = !1), e.crossDomain && (e.type = "GET")
        }), C.ajaxTransport("script", function (e) {
            var t, n;
            if (e.crossDomain)return {
                send: function (i, r) {
                    t = C("<script>").prop({charset: e.scriptCharset, src: e.url}).on("load error", n = function (e) {
                        t.remove(), n = null, e && r("error" === e.type ? 404 : 200, e.type)
                    }), s.head.appendChild(t[0])
                }, abort: function () {
                    n && n()
                }
            }
        });
        var _t, Vt = [], Ut = /(=)\?(?=&|$)|\?\?/;
        C.ajaxSetup({
            jsonp: "callback", jsonpCallback: function () {
                var e = Vt.pop() || C.expando + "_" + Tt++;
                return this[e] = !0, e
            }
        }), C.ajaxPrefilter("json jsonp", function (e, t, i) {
            var r, o, s, a = !1 !== e.jsonp && (Ut.test(e.url) ? "url" : "string" == typeof e.data && 0 === (e.contentType || "").indexOf("application/x-www-form-urlencoded") && Ut.test(e.data) && "data");
            if (a || "jsonp" === e.dataTypes[0])return r = e.jsonpCallback = v(e.jsonpCallback) ? e.jsonpCallback() : e.jsonpCallback, a ? e[a] = e[a].replace(Ut, "$1" + r) : !1 !== e.jsonp && (e.url += (Ct.test(e.url) ? "&" : "?") + e.jsonp + "=" + r), e.converters["script json"] = function () {
                return s || C.error(r + " was not called"), s[0]
            }, e.dataTypes[0] = "json", o = n[r], n[r] = function () {
                s = arguments
            }, i.always(function () {
                void 0 === o ? C(n).removeProp(r) : n[r] = o, e[r] && (e.jsonpCallback = t.jsonpCallback, Vt.push(r)), s && v(o) && o(s[0]), s = o = void 0
            }), "script"
        }), m.createHTMLDocument = ((_t = s.implementation.createHTMLDocument("").body).innerHTML = "<form></form><form></form>", 2 === _t.childNodes.length), C.parseHTML = function (e, t, n) {
            return "string" != typeof e ? [] : ("boolean" == typeof t && (n = t, t = !1), t || (m.createHTMLDocument ? ((i = (t = s.implementation.createHTMLDocument("")).createElement("base")).href = s.location.href, t.head.appendChild(i)) : t = s), r = D.exec(e), o = !n && [], r ? [t.createElement(r[1])] : (r = we([e], t, o), o && o.length && C(o).remove(), C.merge([], r.childNodes)));
            var i, r, o
        }, C.fn.load = function (e, t, n) {
            var i, r, o, s = this, a = e.indexOf(" ");
            return a > -1 && (i = gt(e.slice(a)), e = e.slice(0, a)), v(t) ? (n = t, t = void 0) : t && "object" == typeof t && (r = "POST"), s.length > 0 && C.ajax({
                url: e,
                type: r || "GET",
                dataType: "html",
                data: t
            }).done(function (e) {
                o = arguments, s.html(i ? C("<div>").append(C.parseHTML(e)).find(i) : e)
            }).always(n && function (e, t) {
                    s.each(function () {
                        n.apply(this, o || [e.responseText, t, e])
                    })
                }), this
        }, C.each(["ajaxStart", "ajaxStop", "ajaxComplete", "ajaxError", "ajaxSuccess", "ajaxSend"], function (e, t) {
            C.fn[t] = function (e) {
                return this.on(t, e)
            }
        }), C.expr.pseudos.animated = function (e) {
            return C.grep(C.timers, function (t) {
                return e === t.elem
            }).length
        }, C.offset = {
            setOffset: function (e, t, n) {
                var i, r, o, s, a, u, l = C.css(e, "position"), c = C(e), f = {};
                "static" === l && (e.style.position = "relative"), a = c.offset(), o = C.css(e, "top"), u = C.css(e, "left"), ("absolute" === l || "fixed" === l) && (o + u).indexOf("auto") > -1 ? (s = (i = c.position()).top, r = i.left) : (s = parseFloat(o) || 0, r = parseFloat(u) || 0), v(t) && (t = t.call(e, n, C.extend({}, a))), null != t.top && (f.top = t.top - a.top + s), null != t.left && (f.left = t.left - a.left + r), "using" in t ? t.using.call(e, f) : c.css(f)
            }
        }, C.fn.extend({
            offset: function (e) {
                if (arguments.length)return void 0 === e ? this : this.each(function (t) {
                    C.offset.setOffset(this, e, t)
                });
                var t, n, i = this[0];
                return i ? i.getClientRects().length ? (t = i.getBoundingClientRect(), n = i.ownerDocument.defaultView, {
                    top: t.top + n.pageYOffset,
                    left: t.left + n.pageXOffset
                }) : {top: 0, left: 0} : void 0
            }, position: function () {
                if (this[0]) {
                    var e, t, n, i = this[0], r = {top: 0, left: 0};
                    if ("fixed" === C.css(i, "position"))t = i.getBoundingClientRect(); else {
                        for (t = this.offset(), n = i.ownerDocument, e = i.offsetParent || n.documentElement; e && (e === n.body || e === n.documentElement) && "static" === C.css(e, "position");)e = e.parentNode;
                        e && e !== i && 1 === e.nodeType && ((r = C(e).offset()).top += C.css(e, "borderTopWidth", !0), r.left += C.css(e, "borderLeftWidth", !0))
                    }
                    return {
                        top: t.top - r.top - C.css(i, "marginTop", !0),
                        left: t.left - r.left - C.css(i, "marginLeft", !0)
                    }
                }
            }, offsetParent: function () {
                return this.map(function () {
                    for (var e = this.offsetParent; e && "static" === C.css(e, "position");)e = e.offsetParent;
                    return e || Te
                })
            }
        }), C.each({scrollLeft: "pageXOffset", scrollTop: "pageYOffset"}, function (e, t) {
            var n = "pageYOffset" === t;
            C.fn[e] = function (i) {
                return V(this, function (e, i, r) {
                    var o;
                    if (x(e) ? o = e : 9 === e.nodeType && (o = e.defaultView), void 0 === r)return o ? o[t] : e[i];
                    o ? o.scrollTo(n ? o.pageXOffset : r, n ? r : o.pageYOffset) : e[i] = r
                }, e, i, arguments.length)
            }
        }), C.each(["top", "left"], function (e, t) {
            C.cssHooks[t] = _e(m.pixelPosition, function (e, n) {
                if (n)return n = We(e, t), Be.test(n) ? C(e).position()[t] + "px" : n
            })
        }), C.each({Height: "height", Width: "width"}, function (e, t) {
            C.each({padding: "inner" + e, content: t, "": "outer" + e}, function (n, i) {
                C.fn[i] = function (r, o) {
                    var s = arguments.length && (n || "boolean" != typeof r), a = n || (!0 === r || !0 === o ? "margin" : "border");
                    return V(this, function (t, n, r) {
                        var o;
                        return x(t) ? 0 === i.indexOf("outer") ? t["inner" + e] : t.document.documentElement["client" + e] : 9 === t.nodeType ? (o = t.documentElement, Math.max(t.body["scroll" + e], o["scroll" + e], t.body["offset" + e], o["offset" + e], o["client" + e])) : void 0 === r ? C.css(t, n, a) : C.style(t, n, r, a)
                    }, t, s ? r : void 0, s)
                }
            })
        }), C.each("blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu".split(" "), function (e, t) {
            C.fn[t] = function (e, n) {
                return arguments.length > 0 ? this.on(t, null, e, n) : this.trigger(t)
            }
        }), C.fn.extend({
            hover: function (e, t) {
                return this.mouseenter(e).mouseleave(t || e)
            }
        }), C.fn.extend({
            bind: function (e, t, n) {
                return this.on(e, null, t, n)
            }, unbind: function (e, t) {
                return this.off(e, null, t)
            }, delegate: function (e, t, n, i) {
                return this.on(t, e, n, i)
            }, undelegate: function (e, t, n) {
                return 1 === arguments.length ? this.off(e, "**") : this.off(t, e || "**", n)
            }
        }), C.proxy = function (e, t) {
            var n, i, r;
            if ("string" == typeof t && (n = e[t], t = e, e = n), v(e))return i = u.call(arguments, 2), (r = function () {
                return e.apply(t || this, i.concat(u.call(arguments)))
            }).guid = e.guid = e.guid || C.guid++, r
        }, C.holdReady = function (e) {
            e ? C.readyWait++ : C.ready(!0)
        }, C.isArray = Array.isArray, C.parseJSON = JSON.parse, C.nodeName = N, C.isFunction = v, C.isWindow = x, C.camelCase = Y, C.type = T, C.now = Date.now, C.isNumeric = function (e) {
            var t = C.type(e);
            return ("number" === t || "string" === t) && !isNaN(e - parseFloat(e))
        }, void 0 === (i = function () {
            return C
        }.apply(t, [])) || (e.exports = i);
        var Gt = n.jQuery, Xt = n.$;
        return C.noConflict = function (e) {
            return n.$ === C && (n.$ = Xt), e && n.jQuery === C && (n.jQuery = Gt), C
        }, r || (n.jQuery = n.$ = C), C
    })
}, function (e, t, n) {
    var i, r, o;
    r = [n(0)], void 0 === (o = "function" == typeof(i = function (e) {
        var t = function (t, n) {
            this.settings = n, this.checkSettings(), this.imgAnalyzerTimeout = null, this.entries = null, this.buildingRow = {
                entriesBuff: [],
                width: 0,
                height: 0,
                aspectRatio: 0
            }, this.lastFetchedEntry = null, this.lastAnalyzedIndex = -1, this.yield = {
                every: 2,
                flushed: 0
            }, this.border = n.border >= 0 ? n.border : n.margins, this.maxRowHeight = this.retrieveMaxRowHeight(), this.suffixRanges = this.retrieveSuffixRanges(), this.offY = this.border, this.rows = 0, this.spinner = {
                phase: 0,
                timeSlot: 150,
                $el: e('<div class="spinner"><span></span><span></span><span></span></div>'),
                intervalId: null
            }, this.scrollBarOn = !1, this.checkWidthIntervalId = null, this.galleryWidth = t.width(), this.$gallery = t
        };
        t.prototype.getSuffix = function (e, t) {
            var n, i;
            for (n = e > t ? e : t, i = 0; i < this.suffixRanges.length; i++)if (n <= this.suffixRanges[i])return this.settings.sizeRangeSuffixes[this.suffixRanges[i]];
            return this.settings.sizeRangeSuffixes[this.suffixRanges[i - 1]]
        }, t.prototype.removeSuffix = function (e, t) {
            return e.substring(0, e.length - t.length)
        }, t.prototype.endsWith = function (e, t) {
            return -1 !== e.indexOf(t, e.length - t.length)
        }, t.prototype.getUsedSuffix = function (e) {
            for (var t in this.settings.sizeRangeSuffixes)if (this.settings.sizeRangeSuffixes.hasOwnProperty(t)) {
                if (0 === this.settings.sizeRangeSuffixes[t].length)continue;
                if (this.endsWith(e, this.settings.sizeRangeSuffixes[t]))return this.settings.sizeRangeSuffixes[t]
            }
            return ""
        }, t.prototype.newSrc = function (e, t, n, i) {
            var r;
            if (this.settings.thumbnailPath)r = this.settings.thumbnailPath(e, t, n, i); else {
                var o = e.match(this.settings.extension), s = null !== o ? o[0] : "";
                r = e.replace(this.settings.extension, ""), r = this.removeSuffix(r, this.getUsedSuffix(r)), r += this.getSuffix(t, n) + s
            }
            return r
        }, t.prototype.showImg = function (e, t) {
            this.settings.cssAnimation ? (e.addClass("entry-visible"), t && t()) : (e.stop().fadeTo(this.settings.imagesAnimationDuration, 1, t), e.find(this.settings.imgSelector).stop().fadeTo(this.settings.imagesAnimationDuration, 1, t))
        }, t.prototype.extractImgSrcFromImage = function (e) {
            var t = void 0 !== e.data("safe-src") ? e.data("safe-src") : e.attr("src");
            return e.data("jg.originalSrc", t), t
        }, t.prototype.imgFromEntry = function (e) {
            var t = e.find(this.settings.imgSelector);
            return 0 === t.length ? null : t
        }, t.prototype.captionFromEntry = function (e) {
            var t = e.find("> .caption");
            return 0 === t.length ? null : t
        }, t.prototype.displayEntry = function (t, n, i, r, o, s) {
            t.width(r), t.height(s), t.css("top", i), t.css("left", n);
            var a = this.imgFromEntry(t);
            if (null !== a) {
                a.css("width", r), a.css("height", o), a.css("margin-left", -r / 2), a.css("margin-top", -o / 2);
                var u = a.attr("src"), l = this.newSrc(u, r, o, a[0]);
                a.one("error", function () {
                    a.attr("src", a.data("jg.originalSrc"))
                });
                var c = function () {
                    u !== l && a.attr("src", l)
                };
                "skipped" === t.data("jg.loaded") ? this.onImageEvent(u, e.proxy(function () {
                    this.showImg(t, c), t.data("jg.loaded", !0)
                }, this)) : this.showImg(t, c)
            } else this.showImg(t);
            this.displayEntryCaption(t)
        }, t.prototype.displayEntryCaption = function (t) {
            var n = this.imgFromEntry(t);
            if (null !== n && this.settings.captions) {
                var i = this.captionFromEntry(t);
                if (null === i) {
                    var r = n.attr("alt");
                    this.isValidCaption(r) || (r = t.attr("title")), this.isValidCaption(r) && (i = e('<div class="caption">' + r + "</div>"), t.append(i), t.data("jg.createdCaption", !0))
                }
                null !== i && (this.settings.cssAnimation || i.stop().fadeTo(0, this.settings.captionSettings.nonVisibleOpacity), this.addCaptionEventsHandlers(t))
            } else this.removeCaptionEventsHandlers(t)
        }, t.prototype.isValidCaption = function (e) {
            return void 0 !== e && e.length > 0
        }, t.prototype.onEntryMouseEnterForCaption = function (t) {
            var n = this.captionFromEntry(e(t.currentTarget));
            this.settings.cssAnimation ? n.addClass("caption-visible").removeClass("caption-hidden") : n.stop().fadeTo(this.settings.captionSettings.animationDuration, this.settings.captionSettings.visibleOpacity)
        }, t.prototype.onEntryMouseLeaveForCaption = function (t) {
            var n = this.captionFromEntry(e(t.currentTarget));
            this.settings.cssAnimation ? n.removeClass("caption-visible").removeClass("caption-hidden") : n.stop().fadeTo(this.settings.captionSettings.animationDuration, this.settings.captionSettings.nonVisibleOpacity)
        }, t.prototype.addCaptionEventsHandlers = function (t) {
            var n = t.data("jg.captionMouseEvents");
            void 0 === n && (n = {
                mouseenter: e.proxy(this.onEntryMouseEnterForCaption, this),
                mouseleave: e.proxy(this.onEntryMouseLeaveForCaption, this)
            }, t.on("mouseenter", void 0, void 0, n.mouseenter), t.on("mouseleave", void 0, void 0, n.mouseleave), t.data("jg.captionMouseEvents", n))
        }, t.prototype.removeCaptionEventsHandlers = function (e) {
            var t = e.data("jg.captionMouseEvents");
            void 0 !== t && (e.off("mouseenter", void 0, t.mouseenter), e.off("mouseleave", void 0, t.mouseleave), e.removeData("jg.captionMouseEvents"))
        }, t.prototype.clearBuildingRow = function () {
            this.buildingRow.entriesBuff = [], this.buildingRow.aspectRatio = 0, this.buildingRow.width = 0
        }, t.prototype.prepareBuildingRow = function (e) {
            var t, n, i, r, o, s = !0, a = 0, u = this.galleryWidth - 2 * this.border - (this.buildingRow.entriesBuff.length - 1) * this.settings.margins, l = u / this.buildingRow.aspectRatio, c = this.settings.rowHeight, f = this.buildingRow.width / u > this.settings.justifyThreshold;
            if (e && "hide" === this.settings.lastRow && !f) {
                for (t = 0; t < this.buildingRow.entriesBuff.length; t++)n = this.buildingRow.entriesBuff[t], this.settings.cssAnimation ? n.removeClass("entry-visible") : (n.stop().fadeTo(0, .1), n.find("> img, > a > img").fadeTo(0, 0));
                return -1
            }
            for (e && !f && "justify" !== this.settings.lastRow && "hide" !== this.settings.lastRow && (s = !1, this.rows > 0 && (c = (this.offY - this.border - this.settings.margins * this.rows) / this.rows, s = c * this.buildingRow.aspectRatio / u > this.settings.justifyThreshold)), t = 0; t < this.buildingRow.entriesBuff.length; t++)n = this.buildingRow.entriesBuff[t], i = n.data("jg.width") / n.data("jg.height"), s ? (r = t === this.buildingRow.entriesBuff.length - 1 ? u : l * i, o = l) : (r = c * i, o = c), u -= Math.round(r), n.data("jg.jwidth", Math.round(r)), n.data("jg.jheight", Math.ceil(o)), (0 === t || a > o) && (a = o);
            return this.buildingRow.height = a, s
        }, t.prototype.flushRow = function (e) {
            var t, n, i, r = this.settings, o = this.border;
            if (n = this.prepareBuildingRow(e), e && "hide" === r.lastRow && -1 === n)this.clearBuildingRow(); else {
                if (this.maxRowHeight && this.maxRowHeight < this.buildingRow.height && (this.buildingRow.height = this.maxRowHeight), e && ("center" === r.lastRow || "right" === r.lastRow)) {
                    var s = this.galleryWidth - 2 * this.border - (this.buildingRow.entriesBuff.length - 1) * r.margins;
                    for (i = 0; i < this.buildingRow.entriesBuff.length; i++)t = this.buildingRow.entriesBuff[i], s -= t.data("jg.jwidth");
                    "center" === r.lastRow ? o += s / 2 : "right" === r.lastRow && (o += s)
                }
                var a = this.buildingRow.entriesBuff.length - 1;
                for (i = 0; i <= a; i++)t = this.buildingRow.entriesBuff[this.settings.rtl ? a - i : i], this.displayEntry(t, o, this.offY, t.data("jg.jwidth"), t.data("jg.jheight"), this.buildingRow.height), o += t.data("jg.jwidth") + r.margins;
                this.galleryHeightToSet = this.offY + this.buildingRow.height + this.border, this.setGalleryTempHeight(this.galleryHeightToSet + this.getSpinnerHeight()), (!e || this.buildingRow.height <= r.rowHeight && n) && (this.offY += this.buildingRow.height + r.margins, this.rows += 1, this.clearBuildingRow(), this.settings.triggerEvent.call(this, "jg.rowflush"))
            }
        };
        var n = 0;

        function i() {
            return e("body").height() > e(window).height()
        }

        t.prototype.rememberGalleryHeight = function () {
            n = this.$gallery.height(), this.$gallery.height(n)
        }, t.prototype.setGalleryTempHeight = function (e) {
            n = Math.max(e, n), this.$gallery.height(n)
        }, t.prototype.setGalleryFinalHeight = function (e) {
            n = e, this.$gallery.height(e)
        }, t.prototype.checkWidth = function () {
            this.checkWidthIntervalId = setInterval(e.proxy(function () {
                if (this.$gallery.is(":visible")) {
                    var e = parseFloat(this.$gallery.width());
                    i() === this.scrollBarOn ? Math.abs(e - this.galleryWidth) > this.settings.refreshSensitivity && (this.galleryWidth = e, this.rewind(), this.rememberGalleryHeight(), this.startImgAnalyzer(!0)) : (this.scrollBarOn = i(), this.galleryWidth = e)
                }
            }, this), this.settings.refreshTime)
        }, t.prototype.isSpinnerActive = function () {
            return null !== this.spinner.intervalId
        }, t.prototype.getSpinnerHeight = function () {
            return this.spinner.$el.innerHeight()
        }, t.prototype.stopLoadingSpinnerAnimation = function () {
            clearInterval(this.spinner.intervalId), this.spinner.intervalId = null, this.setGalleryTempHeight(this.$gallery.height() - this.getSpinnerHeight()), this.spinner.$el.detach()
        }, t.prototype.startLoadingSpinnerAnimation = function () {
            var e = this.spinner, t = e.$el.find("span");
            clearInterval(e.intervalId), this.$gallery.append(e.$el), this.setGalleryTempHeight(this.offY + this.buildingRow.height + this.getSpinnerHeight()), e.intervalId = setInterval(function () {
                e.phase < t.length ? t.eq(e.phase).fadeTo(e.timeSlot, 1) : t.eq(e.phase - t.length).fadeTo(e.timeSlot, 0), e.phase = (e.phase + 1) % (2 * t.length)
            }, e.timeSlot)
        }, t.prototype.rewind = function () {
            this.lastFetchedEntry = null, this.lastAnalyzedIndex = -1, this.offY = this.border, this.rows = 0, this.clearBuildingRow()
        }, t.prototype.updateEntries = function (t) {
            var n;
            return t && null != this.lastFetchedEntry ? n = e(this.lastFetchedEntry).nextAll(this.settings.selector).toArray() : (this.entries = [], n = this.$gallery.children(this.settings.selector).toArray()), n.length > 0 && (e.isFunction(this.settings.sort) ? n = this.sortArray(n) : this.settings.randomize && (n = this.shuffleArray(n)), this.lastFetchedEntry = n[n.length - 1], this.settings.filter ? n = this.filterArray(n) : this.resetFilters(n)), this.entries = this.entries.concat(n), !0
        }, t.prototype.insertToGallery = function (t) {
            var n = this;
            e.each(t, function () {
                e(this).appendTo(n.$gallery)
            })
        }, t.prototype.shuffleArray = function (e) {
            var t, n, i;
            for (t = e.length - 1; t > 0; t--)n = Math.floor(Math.random() * (t + 1)), i = e[t], e[t] = e[n], e[n] = i;
            return this.insertToGallery(e), e
        }, t.prototype.sortArray = function (e) {
            return e.sort(this.settings.sort), this.insertToGallery(e), e
        }, t.prototype.resetFilters = function (t) {
            for (var n = 0; n < t.length; n++)e(t[n]).removeClass("jg-filtered")
        }, t.prototype.filterArray = function (t) {
            var n = this.settings;
            if ("string" === e.type(n.filter))return t.filter(function (t) {
                var i = e(t);
                return i.is(n.filter) ? (i.removeClass("jg-filtered"), !0) : (i.addClass("jg-filtered").removeClass("jg-visible"), !1)
            });
            if (e.isFunction(n.filter)) {
                for (var i = t.filter(n.filter), r = 0; r < t.length; r++)-1 === i.indexOf(t[r]) ? e(t[r]).addClass("jg-filtered").removeClass("jg-visible") : e(t[r]).removeClass("jg-filtered");
                return i
            }
        }, t.prototype.destroy = function () {
            clearInterval(this.checkWidthIntervalId), e.each(this.entries, e.proxy(function (t, n) {
                var i = e(n);
                i.css("width", ""), i.css("height", ""), i.css("top", ""), i.css("left", ""), i.data("jg.loaded", void 0), i.removeClass("jg-entry");
                var r = this.imgFromEntry(i);
                r.css("width", ""), r.css("height", ""), r.css("margin-left", ""), r.css("margin-top", ""), r.attr("src", r.data("jg.originalSrc")), r.data("jg.originalSrc", void 0), this.removeCaptionEventsHandlers(i);
                var o = this.captionFromEntry(i);
                i.data("jg.createdCaption") ? (i.data("jg.createdCaption", void 0), null !== o && o.remove()) : null !== o && o.fadeTo(0, 1)
            }, this)), this.$gallery.css("height", ""), this.$gallery.removeClass("justified-gallery"), this.$gallery.data("jg.controller", void 0)
        }, t.prototype.analyzeImages = function (t) {
            for (var n = this.lastAnalyzedIndex + 1; n < this.entries.length; n++) {
                var i = e(this.entries[n]);
                if (!0 === i.data("jg.loaded") || "skipped" === i.data("jg.loaded")) {
                    var r = this.galleryWidth - 2 * this.border - (this.buildingRow.entriesBuff.length - 1) * this.settings.margins, o = i.data("jg.width") / i.data("jg.height");
                    if (r / (this.buildingRow.aspectRatio + o) < this.settings.rowHeight && (this.flushRow(!1), ++this.yield.flushed >= this.yield.every))return void this.startImgAnalyzer(t);
                    this.buildingRow.entriesBuff.push(i), this.buildingRow.aspectRatio += o, this.buildingRow.width += o * this.settings.rowHeight, this.lastAnalyzedIndex = n
                } else if ("error" !== i.data("jg.loaded"))return
            }
            this.buildingRow.entriesBuff.length > 0 && this.flushRow(!0), this.isSpinnerActive() && this.stopLoadingSpinnerAnimation(), this.stopImgAnalyzerStarter(), this.settings.triggerEvent.call(this, t ? "jg.resize" : "jg.complete"), this.setGalleryFinalHeight(this.galleryHeightToSet)
        }, t.prototype.stopImgAnalyzerStarter = function () {
            this.yield.flushed = 0, null !== this.imgAnalyzerTimeout && (clearTimeout(this.imgAnalyzerTimeout), this.imgAnalyzerTimeout = null)
        }, t.prototype.startImgAnalyzer = function (e) {
            var t = this;
            this.stopImgAnalyzerStarter(), this.imgAnalyzerTimeout = setTimeout(function () {
                t.analyzeImages(e)
            }, .001)
        }, t.prototype.onImageEvent = function (t, n, i) {
            if (n || i) {
                var r = new Image, o = e(r);
                n && o.one("load", function () {
                    o.off("load error"), n(r)
                }), i && o.one("error", function () {
                    o.off("load error"), i(r)
                }), r.src = t
            }
        }, t.prototype.init = function () {
            var t = !1, n = !1, i = this;
            e.each(this.entries, function (r, o) {
                var s = e(o), a = i.imgFromEntry(s);
                if (s.addClass("jg-entry"), !0 !== s.data("jg.loaded") && "skipped" !== s.data("jg.loaded"))if (null !== i.settings.rel && s.attr("rel", i.settings.rel), null !== i.settings.target && s.attr("target", i.settings.target), null !== a) {
                    var u = i.extractImgSrcFromImage(a);
                    if (a.attr("src", u), !1 === i.settings.waitThumbnailsLoad) {
                        var l = parseFloat(a.prop("width")), c = parseFloat(a.prop("height"));
                        if (!isNaN(l) && !isNaN(c))return s.data("jg.width", l), s.data("jg.height", c), s.data("jg.loaded", "skipped"), n = !0, i.startImgAnalyzer(!1), !0
                    }
                    s.data("jg.loaded", !1), t = !0, i.isSpinnerActive() || i.startLoadingSpinnerAnimation(), i.onImageEvent(u, function (e) {
                        s.data("jg.width", e.width), s.data("jg.height", e.height), s.data("jg.loaded", !0), i.startImgAnalyzer(!1)
                    }, function () {
                        s.data("jg.loaded", "error"), i.startImgAnalyzer(!1)
                    })
                } else s.data("jg.loaded", !0), s.data("jg.width", s.width() | parseFloat(s.css("width")) | 1), s.data("jg.height", s.height() | parseFloat(s.css("height")) | 1)
            }), t || n || this.startImgAnalyzer(!1), this.checkWidth()
        }, t.prototype.checkOrConvertNumber = function (t, n) {
            if ("string" === e.type(t[n]) && (t[n] = parseFloat(t[n])), "number" !== e.type(t[n]))throw n + " must be a number";
            if (isNaN(t[n]))throw"invalid number for " + n
        }, t.prototype.checkSizeRangesSuffixes = function () {
            if ("object" !== e.type(this.settings.sizeRangeSuffixes))throw"sizeRangeSuffixes must be defined and must be an object";
            var t = [];
            for (var n in this.settings.sizeRangeSuffixes)this.settings.sizeRangeSuffixes.hasOwnProperty(n) && t.push(n);
            for (var i = {0: ""}, r = 0; r < t.length; r++)if ("string" === e.type(t[r]))try {
                var o = parseInt(t[r].replace(/^[a-z]+/, ""), 10);
                i[o] = this.settings.sizeRangeSuffixes[t[r]]
            } catch (e) {
                throw"sizeRangeSuffixes keys must contains correct numbers (" + e + ")"
            } else i[t[r]] = this.settings.sizeRangeSuffixes[t[r]];
            this.settings.sizeRangeSuffixes = i
        }, t.prototype.retrieveMaxRowHeight = function () {
            var t = null, n = this.settings.rowHeight;
            if ("string" === e.type(this.settings.maxRowHeight))t = this.settings.maxRowHeight.match(/^[0-9]+%$/) ? n * parseFloat(this.settings.maxRowHeight.match(/^([0-9]+)%$/)[1]) / 100 : parseFloat(this.settings.maxRowHeight); else {
                if ("number" !== e.type(this.settings.maxRowHeight)) {
                    if (!1 === this.settings.maxRowHeight || null == this.settings.maxRowHeight)return null;
                    throw"maxRowHeight must be a number or a percentage"
                }
                t = this.settings.maxRowHeight
            }
            if (isNaN(t))throw"invalid number for maxRowHeight";
            return t < n && (t = n), t
        }, t.prototype.checkSettings = function () {
            this.checkSizeRangesSuffixes(), this.checkOrConvertNumber(this.settings, "rowHeight"), this.checkOrConvertNumber(this.settings, "margins"), this.checkOrConvertNumber(this.settings, "border");
            var t = ["justify", "nojustify", "left", "center", "right", "hide"];
            if (-1 === t.indexOf(this.settings.lastRow))throw"lastRow must be one of: " + t.join(", ");
            if (this.checkOrConvertNumber(this.settings, "justifyThreshold"), this.settings.justifyThreshold < 0 || this.settings.justifyThreshold > 1)throw"justifyThreshold must be in the interval [0,1]";
            if ("boolean" !== e.type(this.settings.cssAnimation))throw"cssAnimation must be a boolean";
            if ("boolean" !== e.type(this.settings.captions))throw"captions must be a boolean";
            if (this.checkOrConvertNumber(this.settings.captionSettings, "animationDuration"), this.checkOrConvertNumber(this.settings.captionSettings, "visibleOpacity"), this.settings.captionSettings.visibleOpacity < 0 || this.settings.captionSettings.visibleOpacity > 1)throw"captionSettings.visibleOpacity must be in the interval [0, 1]";
            if (this.checkOrConvertNumber(this.settings.captionSettings, "nonVisibleOpacity"), this.settings.captionSettings.nonVisibleOpacity < 0 || this.settings.captionSettings.nonVisibleOpacity > 1)throw"captionSettings.nonVisibleOpacity must be in the interval [0, 1]";
            if (this.checkOrConvertNumber(this.settings, "imagesAnimationDuration"), this.checkOrConvertNumber(this.settings, "refreshTime"), this.checkOrConvertNumber(this.settings, "refreshSensitivity"), "boolean" !== e.type(this.settings.randomize))throw"randomize must be a boolean";
            if ("string" !== e.type(this.settings.selector))throw"selector must be a string";
            if (!1 !== this.settings.sort && !e.isFunction(this.settings.sort))throw"sort must be false or a comparison function";
            if (!1 !== this.settings.filter && !e.isFunction(this.settings.filter) && "string" !== e.type(this.settings.filter))throw"filter must be false, a string or a filter function"
        }, t.prototype.retrieveSuffixRanges = function () {
            var e = [];
            for (var t in this.settings.sizeRangeSuffixes)this.settings.sizeRangeSuffixes.hasOwnProperty(t) && e.push(parseInt(t, 10));
            return e.sort(function (e, t) {
                return e > t ? 1 : e < t ? -1 : 0
            }), e
        }, t.prototype.updateSettings = function (t) {
            this.settings = e.extend({}, this.settings, t), this.checkSettings(), this.border = this.settings.border >= 0 ? this.settings.border : this.settings.margins, this.maxRowHeight = this.retrieveMaxRowHeight(), this.suffixRanges = this.retrieveSuffixRanges()
        }, t.prototype.defaults = {
            sizeRangeSuffixes: {},
            thumbnailPath: void 0,
            rowHeight: 120,
            maxRowHeight: !1,
            margins: 1,
            border: -1,
            lastRow: "nojustify",
            justifyThreshold: .9,
            waitThumbnailsLoad: !0,
            captions: !0,
            cssAnimation: !0,
            imagesAnimationDuration: 500,
            captionSettings: {animationDuration: 500, visibleOpacity: .7, nonVisibleOpacity: 0},
            rel: null,
            target: null,
            extension: /\.[^.\\/]+$/,
            refreshTime: 200,
            refreshSensitivity: 0,
            randomize: !1,
            rtl: !1,
            sort: !1,
            filter: !1,
            selector: "a, div:not(.spinner)",
            imgSelector: "> img, > a > img",
            triggerEvent: function (e) {
                this.$gallery.trigger(e)
            }
        }, e.fn.justifiedGallery = function (n) {
            return this.each(function (i, r) {
                var o = e(r);
                o.addClass("justified-gallery");
                var s = o.data("jg.controller");
                if (void 0 === s) {
                    if (void 0 !== n && null !== n && "object" !== e.type(n)) {
                        if ("destroy" === n)return;
                        throw"The argument must be an object"
                    }
                    s = new t(o, e.extend({}, t.prototype.defaults, n)), o.data("jg.controller", s)
                } else if ("norewind" === n); else {
                    if ("destroy" === n)return void s.destroy();
                    s.updateSettings(n), s.rewind()
                }
                s.updateEntries("norewind" === n) && s.init()
            })
        }
    }) ? i.apply(t, r) : i) || (e.exports = o)
}, function (e, t, n) {
    var i = n(0);
    n(1);
    i("#simpletest").justifiedGallery(
        {
            margins: 10,
            rowHeight: 150
        })
}, function (e, t, n) {
    e.exports = n(2)
}]);