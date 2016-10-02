<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_showcaserow.ascx.cs" Inherits="WebSiteVanGia.ctr.ctr_showcaserow" %>

 
     <style>
        /*Jssor*/
        * {
            margin: 0;
            padding: 0;
            outline: 0;
        }

        html, body {
            height: 100%;
            background: #fff;
        }

        body, a {
            font: normal 16px Helvetica,Verdana,Geneva,sans-serif;
            color: #3f3f3f;
        }

        .headercontainer {
            display: block;
            margin: 0 auto;
            margin: 0 auto;
            background: #fff;
            z-index: 1000;
            position: relative;
            width: 100%;
            top: 0;
            left: 0;
            border-bottom: 1px solid #51c1f1;
        }

            .headercontainer:after {
                content: '';
                display: block;
                clear: both;
            }

        .headerspace {
            height: 1px;
        }

        .footer {
            margin: 0 auto;
            height: 60px;
            padding: 0 0;
            background: #bbbfbf;
            font-size: 12px;
            width: 100%;
            border-top: 1px solid #51c1f1;
        }

        @media only screen and (max-width:480px) {
            .copyright {
                display: none;
            }
        }

        @media only screen and (min-width:769px) {
            .headercontainer {
                position: fixed;
            }

            .headerspace {
                height: 41px;
            }
        }

        body {
            -webkit-animation: bugfix infinite 1s;
            -webkit-font-smoothing: antialiased;
        }

        @-webkit-keyframes bugfix {
            from {
                padding: 0;
            }

            to {
                padding: 0;
            }
        }

        .header {
            position: relative;
            top: 0;
            left: 0;
            margin: 0 auto;
        }

        #toggle, .toggle {
            display: none;
        }

        .menu > li {
            list-style: none;
            float: left;
        }

        .clearfix:before, .clearfix:after {
            display: table;
            content: "";
        }

        .clearfix:after {
            clear: both;
        }

        @media only screen and (max-width:768px) {
            .menu {
                display: none;
                opacity: 0;
                width: 100%;
                position: absolute;
                right: 0;
            }

                .menu > li {
                    display: block;
                    width: 100%;
                    margin: 0;
                }

                    .menu > li > a {
                        display: block;
                        width: 100%;
                        text-decoration: none;
                        -webkit-box-sizing: border-box;
                        -moz-box-sizing: border-box;
                        box-sizing: border-box;
                    }

            .toggle {
                display: block;
                position: relative;
                cursor: pointer;
                -webkit-touch-callout: none;
                -webkit-user-select: none;
                user-select: none;
                margin-top: 5px;
            }

            #toggle:checked ~ .menu {
                display: block;
                opacity: 1;
            }
        }

        .header {
            min-height: 40px;
            max-width: 940px;
            height: 100%;
            padding: 0 20px;
            background: #f0f0f0;
        }

            .header > .logo {
                float: left;
                padding: 0 0 0 5px;
                font-style: italic;
                font-size: 28px;
                line-height: 40px;
            }

        .nav {
            display: block;
            float: right;
            text-align: right;
        }

        .nav, .menu, .menu > li, .menu > li > a {
            height: 100%;
        }

            .menu > li > a {
                display: block;
                padding: 12px 20px;
                text-decoration: none;
                font-weight: normal;
                font-size: 16px;
                line-height: 1;
                color: #3f3f3f;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                -webkit-transition: all .25s linear;
                -moz-transition: all .25s linear;
                -o-transition: all .25s linear;
                transition: all .25s linear;
            }

                .menu > li > a:hover, .menu > li > a:focus {
                    background: #f2f2f2;
                    box-shadow: inset 0 5px #51c1f1;
                    color: #51c1f1;
                    background-color: #fff;
                }

                .menu > li > a.current {
                    color: #51c1f1;
                }

        .toggle {
            z-index: 2;
        }

        @media only screen and (max-width:820px) {
            .menu {
                background: #f0f0f0;
                border-top: 1px solid #51c1f1;
            }

                .menu, .menu > li, .menu > li > a {
                    height: auto;
                }

                    .menu > li > a {
                        padding: 15px 15px;
                        text-align: center;
                        background-color: #f9f9f9;
                        border-bottom: 1px solid #51c1f1;
                    }

                        .menu > li > a:hover, .menu > li > a:focus {
                            background: #f2f2f2;
                            box-shadow: inset 5px 0 #51c1f1;
                            padding: 15px 15px 15px 25px;
                        }

            .toggle:after {
                content: '';
                display: block;
                width: 36px;
                height: 30px;
                margin: 0 0;
                padding: 0 0;
                background: #222;
                -webkit-border-radius: 2px;
                border-radius: 2px;
                text-align: center;
                font-size: 13px;
                color: #fff;
                -webkit-transition: all .5s linear;
                -moz-transition: all .5s linear;
                -o-transition: all .5s linear;
                transition: all .5s linear;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }

            .toggle:hover:after {
                background: #45abd6;
            }

            #toggle:checked + .toggle:after {
                content: '';
            }

            .toggle .icon-bar {
                display: block;
                position: absolute;
                top: 0;
                left: 7px;
                width: 22px;
                height: 2px;
                background-color: #fff;
            }
        }

        .share-icon {
            display: inline-block;
            float: left;
            margin: 4px;
            width: 32px;
            height: 32px;
            cursor: pointer;
            vertical-align: middle;
            background-image: url(../img/share/share-icons.png);
        }

        .share-facebook {
            background-position: 0 0;
        }

            .share-facebook:hover {
                background-position: 0 -40px;
            }

        .share-twitter {
            background-position: -40px 0;
        }

            .share-twitter:hover {
                background-position: -40px -40px;
            }

        .share-pinterest {
            background-position: -80px 0;
        }

            .share-pinterest:hover {
                background-position: -80px -40px;
            }

        .share-linkedin {
            background-position: -240px 0;
        }

            .share-linkedin:hover {
                background-position: -240px -40px;
            }

        .share-googleplus {
            background-position: -120px 0;
        }

            .share-googleplus:hover {
                background-position: -120px -40px;
            }

        .share-stumbleupon {
            background-position: -360px 0;
        }

            .share-stumbleupon:hover {
                background-position: -360px -40px;
            }

        .share-email {
            background-position: -320px 0;
        }

            .share-email:hover {
                background-position: -320px -40px;
            }

        .ad_title_share {
            position: relative;
            top: 5px;
            width: 160px;
            height: 80px;
            margin-left: 22px;
        }

        .share-icons-sidebar {
            position: fixed;
            display: block;
            top: 110px;
            left: 0;
            width: 40px;
            height: 240px;
        }

        @media only screen and (max-width:1080px) {
            .ad_title_share {
                display: none;
            }

            .share-icons-sidebar {
                display: none;
            }
        }

        .ad_top, .ad_bill {
            position: relative;
            margin: 0 auto;
            top: 0;
            left: 0;
            padding: 0;
            width: 320px;
            height: 50px;
            overflow: hidden;
        }

        .ad_title_banner {
            width: 320px;
            height: 50px;
            position: relative;
            top: 0;
            padding: 0;
            overflow: hidden;
            margin: 0 auto;
        }

        .ad_space {
            height: 0;
        }

        .ad_title {
            position: relative;
            margin: 0 auto;
            padding: 0;
            width: 100%;
            max-width: 980px;
            height: 50px;
            background-color: #f0f0f0;
        }

        .ad_title_caption {
            display: none;
        }

        .ad_rect {
            position: absolute;
            padding: 10px;
            top: -10px;
            left: -10px;
            width: 300px;
            height: 250px;
        }

            .ad_rect:hover {
            }

        .ad_hint {
            position: absolute;
            left: -10px;
            top: -10px;
            width: 22px;
            height: 15px;
            color: #fff;
            background-color: #edb802;
            font-size: 13px;
            text-align: center;
            border-radius: 2px;
            z-index: 1;
        }

        @media only screen and (min-width:727px) {
            .ad_top, .ad_title_banner {
                width: 728px;
                max-width: 100%;
                height: 90px;
            }

            .ad_bill {
                width: 970px;
                max-width: 100%;
                height: 250px;
            }

            .ad_space {
                height: 20px;
            }

            .ad_title {
                height: 90px;
            }
        }

        @media only screen and (min-width:980px) {
            .ad_title_banner {
                position: absolute;
                right: 20px;
            }

            .ad_title_caption {
                display: block;
            }
        }

        .sidebar_1 {
            position: relative;
            display: block;
            float: left;
            top: 0;
            margin: 15px 10px 10px -10px;
            padding: 0;
            width: 320px;
            overflow: hidden;
        }

        @media only screen and (max-width:979px) {
            .sidebar_1 {
                width: 640px;
                margin: 10px auto;
                float: none;
            }
        }

        @media only screen and (max-width:639px) {
            .sidebar_1 {
                width: 320px;
                float: none;
            }
        }

        a:link {
            color: #fff;
            text-decoration: none;
        }

        a:visited {
            color: #ff8400;
            text-decoration: none;
        }

        a:hover {
            color: #fff;
            text-decoration: underline;
        }

        a:active {
            color: #fff;
            text-decoration: underline;
        }

        a:visited.nav {
            color: #ff8400;
        }

        a:link.nav {
            color: #fff;
        }

        a:hover.nav, a:active.nav {
            color: #fff;
        }

        a:link.featurenav, a:visited.featurenav {
            color: #fff;
        }

        a:hover.featurenav, a:active.featurenav {
            color: #0080ff;
        }

        .backGreen {
            background-image: url(../img/site/back-green.png);
        }

        .backBlackGreen {
            background-image: url(../img/site/back-blackgreen.png);
        }

        .backBlack {
            background-image: url(../img/site/back-black.png);
        }

        .backWhite {
            background-image: url(../img/site/back-white.png);
        }

        .backBlue {
            background-image: url(../img/site/back-blue.png);
        }

        .thumb {
            position: relative;
            top: 0;
            left: 0;
            float: left;
            display: inline;
            margin: 10px;
            width: 300px;
            height: 250px;
            -webkit-box-shadow: 1px 1px 5px 0 rgba(109,109,109,.3);
            -moz-box-shadow: 1px 1px 5px 0 rgba(109,109,109,.3);
            box-shadow: 1px 1px 5px 0 rgba(109,109,109,.3);
        }

        .thumbb, a.thumbb {
            position: absolute;
            left: -1px;
            top: -1px;
            width: 302px;
            height: 252px;
            color: #000;
            background-color: #ccc;
        }

            a.thumbb:visited {
                color: #ff8400;
            }

            .thumbb:hover, a.thumbb:hover {
                color: #fff;
                background-color: #ff8400;
            }

        .thumbi {
            position: absolute;
            left: 1px;
            top: 36px;
            width: 300px;
            height: 215px;
            line-height: 211px;
            text-align: center;
            background-color: #f6f6f6;
            background-position: center center;
            background-repeat: no-repeat;
        }

            .thumbi img {
                vertical-align: middle;
                border: none;
            }

        .thumbc {
            position: absolute;
            left: 1px;
            top: 1px;
            width: 300px;
            height: 35px;
            background-color: #eaeaea;
        }

        a.thumbb:hover .thumbc {
            background-color: #ff8400;
        }

        .thumbc {
            font-size: 18px;
            line-height: 35px;
            text-align: center;
        }

        .thumb_wrapper {
            position: relative;
            margin: 10px auto;
            padding: 0;
            width: 100%;
            max-width: 960px;
            overflow: hidden;
        }

        .reserve_sidebar_space {
            float: none;
        }

        @media only screen and (min-width:960px) {
            .reserve_sidebar_space {
                max-width: 640px;
                float: left;
                margin: 10px;
            }
        }

        @media only screen and (max-width:959px) {
            .thumb_wrapper {
                max-width: 640px;
            }
        }

        @media only screen and (max-width:639px) {
            .thumb_wrapper {
                max-width: 320px;
            }
        }

        A.effectButton, A.effectButton:active, A.effectButton:visited, A.navDev, A.navDev:active, A.navDev:visited {
            display: block;
            font-size: 13px;
            line-height: 26px;
            text-align: center;
            background-color: #dadada;
            color: #eb5100;
            text-decoration: none;
            padding: 3px 10px 3px 10px;
            display: inline;
            white-space: nowrap;
        }

            A.effectButton:hover, A.navDev:hover {
                color: #eaeaea;
                background-color: #eb5100;
            }

            A.navDev, A.navDev:active, A.navDev:visited, A.navDev:hover {
                left: 0;
                width: 255px;
                line-height: 26px;
                padding: 0 5px 0 5px;
                display: inline-block;
                text-align: left;
            }

        .captionOrange, .captionBlue, .captionBlack, .captionSymbol {
            display: block;
            color: #fff;
            font-size: 20px;
            line-height: 30px;
            text-align: center;
            border-radius: 4px;
        }

        .captionOrange {
            background: #eb5100;
            /*background-color: rgba(235,81,0,.6);*/
             background-color: rgba(0,0,0,0);
        }

        .captionBlue {
            background: #746fbd;
            background-color: rgba(21,21,120,.6);
        }

        .captionBlack {
            background: #000;
            background-color: rgba(0,0,0,0);
        }

        .captionSymbol {
            border-radius: 100px!important;
            font-weight: 400!important;
            font-size: 26px!important;
            background: #000;
            background-color: rgba(0,0,0,.4);
        }

        .captionTextBlack {
            display: block;
            color: #000;
            font-size: 20px;
            line-height: 30px;
        }

        .captionTextWhite {
            display: block;
            color: #fff;
            font-size: 20px;
            line-height: 30px;
        }

        a.captionOrange, a.captionOrange:active, a.captionOrange:visited, a.captionTextWhite, a.captionTextWhite:active, a.captionTextWhite:visited {
            color: #fff;
            text-decoration: none;
        }

            a.captionOrange:hover {
                color: #eb5100;
                text-decoration: underline;
                background-color: #eee;
                background-color: rgba(238,238,238,.7);
            }

        a.captionTextBlack, a.captionTextBlack:active, a.captionTextBlack:visited {
            color: #000;
            text-decoration: none;
        }

        a.captionTextWhite:hover {
            color: #eb5100;
            text-decoration: underline;
        }

        a.captionTextBlack:hover {
            color: #eb5100;
            text-decoration: underline;
        }

        .bricon {
            background: url(../img/browser-icons.png);
        }

        @media only screen and (max-width:980px) {
            .qr_code {
                display: none;
            }
        }

        .feature {
            position: relative;
            float: left;
            display: table;
            margin: 20px;
            width: 280px;
            height: 180px;
            background-image: url(../img/site/back-blue.png);
        }

        .featurec {
            position: relative;
            width: 100%;
            text-align: center;
            font-size: 18px;
            line-height: 30px;
            color: #fff;
            background-image: url(../img/site/back-black.png);
        }

        .featuret {
            position: relative;
            height: 100%;
            margin: 10px;
            color: #fff;
            font-size: 13px;
            line-height: 26px;
        }

        .description {
            position: relative;
            margin: 0 auto;
            margin: 5px;
            top: 0;
            left: 0;
            width: 690px;
        }

        .descriptiont {
            position: relative;
            width: 670px;
            color: #000;
            font-size: 13px;
            line-height: 20px;
            overflow: auto;
            padding: 5px;
        }

        .optiontable {
            position: relative;
            color: #000;
            font-size: 13px;
            background-color: #f0f0f0;
            table-layout: fixed;
            word-wrap: break-word;
        }

            .optiontable td, .optiontable tr {
                height: 24px;
                line-height: 21px;
                vertical-align: top;
                border-bottom: 1px dashed #888;
            }

            .optiontable td {
                padding-left: 2px;
            }

        body {
            -webkit-font-smoothing: antialiased;
        }

        .jssorb03 {
            position: absolute;
        }

            .jssorb03 div, .jssorb03 div:hover, .jssorb03 .av {
                position: absolute;
                width: 21px;
                height: 21px;
                text-align: center;
                line-height: 21px;
                color: #fff;
                font-size: 12px;
                background: url(../img/b03.png) no-repeat;
                overflow: hidden;
                cursor: pointer;
            }

            .jssorb03 div {
                background-position: -5px -4px;
            }

                .jssorb03 div:hover, .jssorb03 .av:hover {
                    background-position: -35px -4px;
                }

            .jssorb03 .av {
                background-position: -65px -4px;
            }

            .jssorb03 .dn, .jssorb03 .dn:hover {
                background-position: -95px -4px;
            }

        .jssora20l, .jssora20r {
            display: block;
            position: absolute;
            width: 55px;
            height: 55px;
            cursor: pointer;
            background: url(../img/a20.png) no-repeat;
            overflow: hidden;
        }

        .jssora20l {
            background-position: -3px -33px;
        }

        .jssora20r {
            background-position: -63px -33px;
        }

        .jssora20l:hover {
            background-position: -123px -33px;
        }

        .jssora20r:hover {
            background-position: -183px -33px;
        }

        .jssora20l.jssora20ldn {
            background-position: -243px -33px;
        }

        .jssora20r.jssora20rdn {
            background-position: -303px -33px;
        }
    </style>

   
    <script>
        /*Jssor*/
        (function (g, f, b, j, d, h, k) {/*! Jssor */
            new (function () { }); var c = { td: function (a) { return -b.cos(a * b.PI) / 2 + .5 }, N: function (a) { return a }, Q: function (a) { return a * a }, Ib: function (a) { return -a * (a - 2) }, Kd: function (a) { return (a *= 2) < 1 ? 1 / 2 * a * a : -1 / 2 * (--a * (a - 2) - 1) }, Lb: function (a) { return a * a * a }, Md: function (a) { return (a -= 1) * a * a + 1 }, mb: function (a) { return (a *= 2) < 1 ? 1 / 2 * a * a * a : 1 / 2 * ((a -= 2) * a * a + 2) }, Vd: function (a) { return (a -= 1) * a * a * a * a + 1 }, Z: function (a) { return -1 / 2 * (b.cos(b.PI * a) - 1) }, Gb: function (a) { return a == 0 ? 0 : b.pow(2, 10 * (a - 1)) }, ge: function (a) { if (!a || a == 1) return a; var c = .3, d = .075; return -(b.pow(2, 10 * (a -= 1)) * b.sin((a - d) * 2 * b.PI / c)) }, Tc: function (a) { if (!a || a == 1) return a; var c = .45, d = .1125; return (a *= 2) < 1 ? -.5 * b.pow(2, 10 * (a -= 1)) * b.sin((a - d) * 2 * b.PI / c) : b.pow(2, -10 * (a -= 1)) * b.sin((a - d) * 2 * b.PI / c) * .5 + 1 }, Dc: function (a) { var b = 1.70158; return (a *= 2) < 1 ? 1 / 2 * a * a * (((b *= 1.525) + 1) * a - b) : 1 / 2 * ((a -= 2) * a * (((b *= 1.525) + 1) * a + b) + 2) }, xc: function (a) { return 1 - b.cos(a * b.PI * 2) }, sd: function (a) { return b.sin(a * b.PI * 2) }, Pb: function (a) { return (a *= 2) < 1 ? a * a * a : (a = 2 - a) * a * a } }; var a = new function () { var e = this, xb = /\S+/g, T = 1, fb = 2, kb = 3, jb = 4, ob = 5, L, s = 0, l = 0, p = 0, bb = 0, A = 0, B = navigator, tb = B.appName, i = B.userAgent, x = f.documentElement, z; function Eb() { if (!L) { L = { ef: "ontouchstart" in g || "createTouch" in f }; var a; if (B.pointerEnabled || (a = B.msPointerEnabled)) L.Yc = a ? "msTouchAction" : "touchAction" } return L } function v(j) { if (!s) { s = -1; if (tb == "Microsoft Internet Explorer" && !!g.attachEvent && !!g.ActiveXObject) { var e = i.indexOf("MSIE"); s = T; p = n(i.substring(e + 5, i.indexOf(";", e)));/*@cc_on bb=@_jscript_version@*/; l = f.documentMode || p } else if (tb == "Netscape" && !!g.addEventListener) { var d = i.indexOf("Firefox"), b = i.indexOf("Safari"), h = i.indexOf("Chrome"), c = i.indexOf("AppleWebKit"); if (d >= 0) { s = fb; l = n(i.substring(d + 8)) } else if (b >= 0) { var k = i.substring(0, b).lastIndexOf("/"); s = h >= 0 ? jb : kb; l = n(i.substring(k + 1, b)) } else { var a = /Trident\/.*rv:([0-9]{1,}[\.0-9]{0,})/i.exec(i); if (a) { s = T; l = p = n(a[1]) } } if (c >= 0) A = n(i.substring(c + 12)) } else { var a = /(opera)(?:.*version|)[ \/]([\w.]+)/i.exec(i); if (a) { s = ob; l = n(a[2]) } } } return j == s } function q() { return v(T) } function O() { return q() && (l < 6 || f.compatMode == "BackCompat") } function ib() { return v(kb) } function hb() { return v(jb) } function nb() { return v(ob) } function cb() { return ib() && A > 534 && A < 535 } function M() { return q() && l < 9 } function t(a) { if (!z) { m(["transform", "WebkitTransform", "msTransform", "MozTransform", "OTransform"], function (b) { if (a.style[b] != k) { z = b; return d } }); z = z || "transform" } return z } function sb(a) { return {}.toString.call(a) } var K; function Cb() { if (!K) { K = {}; m(["Boolean", "Number", "String", "Function", "Array", "Date", "RegExp", "Object"], function (a) { K["[object " + a + "]"] = a.toLowerCase() }) } return K } function m(a, c) { if (sb(a) == "[object Array]") { for (var b = 0; b < a.length; b++) if (c(a[b], b, a)) return d } else for (var e in a) if (c(a[e], e, a)) return d } function D(a) { return a == j ? String(a) : Cb()[sb(a)] || "object" } function qb(a) { for (var b in a) return d } function G(a) { try { return D(a) == "object" && !a.nodeType && a != a.window && (!a.constructor || {}.hasOwnProperty.call(a.constructor.prototype, "isPrototypeOf")) } catch (b) { } } function y(a, b) { return { x: a, y: b } } function vb(b, a) { setTimeout(b, a || 0) } function I(b, d, c) { var a = !b || b == "inherit" ? "" : b; m(d, function (c) { var b = c.exec(a); if (b) { var d = a.substr(0, b.index), e = a.substr(b.lastIndex + 1, a.length - (b.lastIndex + 1)); a = d + e } }); a = c + (a.indexOf(" ") != 0 ? " " : "") + a; return a } function eb(b, a) { if (l < 9) b.style.filter = a } function zb(b, a, c) { if (bb < 9) { var f = b.style.filter, h = new RegExp(/[\s]*progid:DXImageTransform\.Microsoft\.Matrix\([^\)]*\)/g), g = a ? "progid:DXImageTransform.Microsoft.Matrix(M11=" + a[0][0] + ", M12=" + a[0][1] + ", M21=" + a[1][0] + ", M22=" + a[1][1] + ", SizingMethod='auto expand')" : "", d = I(f, [h], g); eb(b, d); e.Zc(b, c.y); e.Wc(b, c.x) } } e.qe = Eb; e.Ic = q; e.ue = ib; e.je = hb; e.ne = nb; e.uc = M; e.vd = function () { return l }; e.fd = function () { v(); return A }; e.r = vb; function W(a) { a.constructor === W.caller && a.dd && a.dd.apply(a, W.caller.arguments) } e.dd = W; e.wb = function (a) { if (e.bd(a)) a = f.getElementById(a); return a }; function r(a) { return a || g.event } e.cd = r; e.Gc = function (a) { a = r(a); return a.target || a.srcElement || f }; e.kd = function (a) { a = r(a); return { x: a.pageX || a.clientX || 0, y: a.pageY || a.clientY || 0 } }; e.Be = function () { var a = f.body; return { x: a.clientWidth || x.clientWidth, y: a.clientHeight || x.clientHeight } }; function E(c, d, a) { if (a != k) c.style[d] = a; else { var b = c.currentStyle || c.style; a = b[d]; if (a == "" && g.getComputedStyle) { b = c.ownerDocument.defaultView.getComputedStyle(c, j); b && (a = b.getPropertyValue(d) || b[d]) } return a } } function Y(b, c, a, d) { if (a != k) { d && (a += "px"); E(b, c, a) } else return n(E(b, c)) } function o(d, a) { var b = a & 2, c = a ? Y : E; return function (e, a) { return c(e, d, a, b) } } function Ab(b) { if (q() && p < 9) { var a = /opacity=([^)]*)/.exec(b.style.filter || ""); return a ? n(a[1]) / 100 : 1 } else return n(b.style.opacity || "1") } function Bb(c, a, f) { if (q() && p < 9) { var h = c.style.filter || "", i = new RegExp(/[\s]*alpha\([^\)]*\)/g), e = b.round(100 * a), d = ""; if (e < 100 || f) d = "alpha(opacity=" + e + ") "; var g = I(h, [i], d); eb(c, g) } else c.style.opacity = a == 1 ? "" : b.round(a * 100) / 100 } function ab(f, a) { var d = a.i || 0, c = a.ob == k ? 1 : a.ob; if (M()) { var l = e.Ce(d / 180 * b.PI, c, c); zb(f, !d && c == 1 ? j : l, e.De(l, a.nb, a.kb)) } else { var h = t(f); if (h) { var i = "rotate(" + d % 360 + "deg) scale(" + c + ")"; if (hb() && A > 535 && "ontouchstart" in g) i += " perspective(2000px)"; f.style[h] = i } } } e.Ae = function (b, a) { if (cb()) vb(e.M(j, ab, b, a)); else ab(b, a) }; e.xe = function (b, c) { var a = t(b); if (a) b.style[a + "Origin"] = c }; e.ye = function (a, c) { if (q() && p < 9 || p < 10 && O()) a.style.zoom = c == 1 ? "" : c; else { var b = t(a); if (b) { var f = "scale(" + c + ")", e = a.style[b], g = new RegExp(/[\s]*scale\(.*?\)/g), d = I(e, [g], f); a.style[b] = d } } }; e.ze = function (a) { if (!a.style[t(a)] || a.style[t(a)] == "none") a.style[t(a)] = "perspective(2000px)" }; var mb = 0, gb = 0; e.Ee = function (b, a) { return M() ? function () { var g = d, c = O() ? b.document.body : b.document.documentElement; if (c) { var f = c.offsetWidth - mb, e = c.offsetHeight - gb; if (f || e) { mb += f; gb += e } else g = h } g && a() } : a }; e.Zb = function (b, a) { return function (c) { c = r(c); var f = c.type, d = c.relatedTarget || (f == "mouseout" ? c.toElement : c.fromElement); (!d || d !== a && !e.Je(a, d)) && b(c) } }; e.l = function (a, c, d, b) { a = e.wb(a); if (a.addEventListener) { c == "mousewheel" && a.addEventListener("DOMMouseScroll", d, b); a.addEventListener(c, d, b) } else if (a.attachEvent) { a.attachEvent("on" + c, d); b && a.setCapture && a.setCapture() } }; e.K = function (a, c, d, b) { a = e.wb(a); if (a.removeEventListener) { c == "mousewheel" && a.removeEventListener("DOMMouseScroll", d, b); a.removeEventListener(c, d, b) } else if (a.detachEvent) { a.detachEvent("on" + c, d); b && a.releaseCapture && a.releaseCapture() } }; e.Ab = function (a) { a = r(a); a.preventDefault && a.preventDefault(); a.cancel = d; a.returnValue = h }; e.Le = function (a) { a = r(a); a.stopPropagation && a.stopPropagation(); a.cancelBubble = d }; e.M = function (d, c) { var a = [].slice.call(arguments, 2), b = function () { var b = a.concat([].slice.call(arguments, 0)); return c.apply(d, b) }; return b }; e.Ie = function (a, b) { if (b == k) return a.textContent || a.innerText; var c = f.createTextNode(b); e.mc(a); a.appendChild(c) }; e.P = function (d, c) { for (var b = [], a = d.firstChild; a; a = a.nextSibling) (c || a.nodeType == 1) && b.push(a); return b }; function rb(a, c, e, b) { b = b || "u"; for (a = a ? a.firstChild : j; a; a = a.nextSibling) if (a.nodeType == 1) { if (S(a, b) == c) return a; if (!e) { var d = rb(a, c, e, b); if (d) return d } } } e.G = rb; function Q(a, d, f, b) { b = b || "u"; var c = []; for (a = a ? a.firstChild : j; a; a = a.nextSibling) if (a.nodeType == 1) { S(a, b) == d && c.push(a); if (!f) { var e = Q(a, d, f, b); if (e.length) c = c.concat(e) } } return c } function lb(a, c, d) { for (a = a ? a.firstChild : j; a; a = a.nextSibling) if (a.nodeType == 1) { if (a.tagName == c) return a; if (!d) { var b = lb(a, c, d); if (b) return b } } } e.he = lb; e.ie = function (b, a) { return b.getElementsByTagName(a) }; function C() { var e = arguments, d, c, b, a, g = 1 & e[0], f = 1 + g; d = e[f - 1] || {}; for (; f < e.length; f++) if (c = e[f]) for (b in c) { a = c[b]; if (a !== k) { a = c[b]; d[b] = g && G(d[b]) ? C(g, {}, a) : a } } return d } e.z = C; function X(f, g) { var d = {}, c, a, b; for (c in f) { a = f[c]; b = g[c]; if (a !== b) { var e; if (G(a) && G(b)) { a = X(b); e = !qb(a) } !e && (d[c] = a) } } return d } e.te = function (a) { return D(a) == "function" }; e.ec = function (a) { return D(a) == "array" }; e.bd = function (a) { return D(a) == "string" }; e.ve = function (a) { return !isNaN(n(a)) && isFinite(a) }; e.n = m; function P(a) { return f.createElement(a) } e.Vb = function () { return P("DIV") }; e.pe = function () { return P("SPAN") }; e.Mc = function () { }; function U(b, c, a) { if (a == k) return b.getAttribute(c); b.setAttribute(c, a) } function S(a, b) { return U(a, b) || U(a, "data-" + b) } e.V = U; e.t = S; function w(b, a) { if (a == k) return b.className; b.className = a } e.jd = w; function ub(b) { var a = {}; m(b, function (b) { a[b] = b }); return a } function wb(b, a) { return b.match(a || xb) } function N(b, a) { return ub(wb(b || "", a)) } e.Me = wb; function Z(b, c) { var a = ""; m(c, function (c) { a && (a += b); a += c }); return a } function H(a, c, b) { w(a, Z(" ", C(X(N(w(a)), N(c)), N(b)))) } e.pb = function (a) { return a.parentNode }; e.U = function (a) { e.W(a, "none") }; e.X = function (a, b) { e.W(a, b ? "none" : "") }; e.Qc = function (b, a) { b.removeAttribute(a) }; e.kf = function () { return q() && l < 10 }; e.ff = function (d, c) { if (c) d.style.clip = "rect(" + b.round(c.c) + "px " + b.round(c.u) + "px " + b.round(c.v) + "px " + b.round(c.e) + "px)"; else { var g = d.style.cssText, f = [new RegExp(/[\s]*clip: rect\(.*?\)[;]?/i), new RegExp(/[\s]*cliptop: .*?[;]?/i), new RegExp(/[\s]*clipright: .*?[;]?/i), new RegExp(/[\s]*clipbottom: .*?[;]?/i), new RegExp(/[\s]*clipleft: .*?[;]?/i)], e = I(g, f, ""); a.Ub(d, e) } }; e.O = function () { return +new Date }; e.S = function (b, a) { b.appendChild(a) }; e.Qb = function (b, a, c) { (c || a.parentNode).insertBefore(b, a) }; e.Jb = function (a, b) { (b || a.parentNode).removeChild(a) }; e.We = function (a, b) { m(a, function (a) { e.Jb(a, b) }) }; e.mc = function (a) { e.We(e.P(a, d), a) }; e.Xe = function (b, a) { return parseInt(b, a || 10) }; var n = parseFloat; e.ic = n; e.Je = function (b, a) { var c = f.body; while (a && b !== a && c !== a) try { a = a.parentNode } catch (d) { return h } return b === a }; function V(d, c, b) { var a = d.cloneNode(!c); !b && e.Qc(a, "id"); return a } e.xb = V; e.vb = function (f, g) { var a = new Image; function b(f, d) { e.K(a, "load", b); e.K(a, "abort", c); e.K(a, "error", c); g && g(a, d) } function c(a) { b(a, d) } if (nb() && l < 11.6 || !f) b(!f); else { e.l(a, "load", b); e.l(a, "abort", c); e.l(a, "error", c); a.src = f } }; e.Ve = function (d, a, f) { var c = d.length + 1; function b(b) { c--; if (a && b && b.src == a.src) a = b; !c && f && f(a) } m(d, function (a) { e.vb(a.src, b) }); b() }; e.Ue = function (b, g, i, h) { if (h) b = V(b); var c = Q(b, g); if (!c.length) c = a.ie(b, g); for (var f = c.length - 1; f > -1; f--) { var d = c[f], e = V(i); w(e, w(d)); a.Ub(e, d.style.cssText); a.Qb(e, d); a.Jb(d) } return b }; function Db(c) { var q = this, o = "", r = ["av", "pv", "ds", "dn"], d = [], p, j = 0, h = 0, g = 0; function i() { H(c, p, d[g || j || h & 2 || h]) } function b() { j = 0; i(); e.K(f, "mouseup", b); e.K(f, "touchend", b); e.K(f, "touchcancel", b) } function n(a) { if (g) e.Ab(a); else { j = 4; i(); e.l(f, "mouseup", b); e.l(f, "touchend", b); e.l(f, "touchcancel", b) } } q.Pe = function (a) { if (a != k) { h = a & 2 || a & 1; i() } else return h }; q.Vc = function (a) { if (a == k) return !g; g = a ? 0 : 3; i() }; c = e.wb(c); var l = a.Me(w(c)); if (l) o = l.shift(); m(r, function (a) { d.push(o + a) }); p = Z(" ", d); d.unshift(""); e.l(c, "mousedown", n); e.l(c, "touchstart", n) } e.gc = function (a) { return new Db(a) }; e.ub = E; e.Kb = o("overflow"); e.F = o("top", 2); e.D = o("left", 2); e.q = o("width", 2); e.s = o("height", 2); e.Wc = o("marginLeft", 2); e.Zc = o("marginTop", 2); e.J = o("position"); e.W = o("display"); e.H = o("zIndex", 1); e.dc = function (b, a, c) { if (a != k) Bb(b, a, c); else return Ab(b) }; e.Ub = function (a, b) { if (b != k) a.style.cssText = b; else return a.style.cssText }; var R = { a: e.dc, c: e.F, e: e.D, ac: e.q, bc: e.s, qb: e.J, qf: e.W, Mb: e.H }, u; function J() { if (!u) u = C({ of: e.Zc, pf: e.Wc, k: e.ff, kc: e.Ae }, R); return u } function pb() { J(); u.kc = u.kc; return u } e.Dd = J; e.Zd = pb; e.ae = function (c, b) { J(); var a = {}; m(b, function (d, b) { if (R[b]) a[b] = R[b](c) }); return a }; e.fb = function (c, b) { var a = J(); m(b, function (d, b) { a[b] && a[b](c, d) }) }; var F = new function () { var a = this; function b(d, g) { for (var j = d[0].length, i = d.length, h = g[0].length, f = [], c = 0; c < i; c++) for (var k = f[c] = [], b = 0; b < h; b++) { for (var e = 0, a = 0; a < j; a++) e += d[c][a] * g[a][b]; k[b] = e } return f } a.Sb = function (d, c) { var a = b(d, [[c.x], [c.y]]); return y(a[0][0], a[1][0]) } }; e.Ce = function (d, a, c) { var e = b.cos(d), f = b.sin(d); return [[e * a, -f * c], [f * a, e * c]] }; e.De = function (d, c, a) { var e = F.Sb(d, y(-c / 2, -a / 2)), f = F.Sb(d, y(c / 2, -a / 2)), g = F.Sb(d, y(c / 2, a / 2)), h = F.Sb(d, y(-c / 2, a / 2)); return y(b.min(e.x, f.x, g.x, h.x) + c / 2, b.min(e.y, f.y, g.y, h.y) + a / 2) }; e.be = function (l, g, t, r, u, w, i) { var d = g; if (l) { d = {}; for (var f in g) { var x = w[f] || 1, s = u[f] || [0, 1], e = (t - s[0]) / s[1]; e = b.min(b.max(e, 0), 1); e = e * x; var p = b.floor(e); if (e != p) e -= p; var v = r[f] || r.sb || c.td, q = v(e), h, y = l[f]; g[f]; var m = g[f]; if (a.ve(m)) h = y + m * q; else { h = a.z({ tb: {} }, l[f]); a.n(m.tb, function (c, b) { var a = c * q; h.tb[b] = a; h[b] += a }) } d[f] = h } if (g.g || g.i) d.kc = { i: d.i || 0, ob: d.g, nb: i.nb, kb: i.kb } } if (g.k && i.I) { var k = d.k.tb, o = (k.c || 0) + (k.v || 0), n = (k.e || 0) + (k.u || 0); d.e = (d.e || 0) + n; d.c = (d.c || 0) + o; d.k.e -= n; d.k.u -= n; d.k.c -= o; d.k.v -= o } if (d.k && a.kf() && !d.k.c && !d.k.e && d.k.u == i.nb && d.k.v == i.kb) d.k = j; return d } }; function m() { var b = this, d = []; function i(a, b) { d.push({ lc: a, jc: b }) } function h(b, c) { a.n(d, function (a, e) { a.lc == b && a.jc === c && d.splice(e, 1) }) } b.rb = b.addEventListener = i; b.removeEventListener = h; b.o = function (b) { var c = [].slice.call(arguments, 1); a.n(d, function (a) { a.lc == b && a.jc.apply(g, c) }) } } function l(o, z, k, R, P, K) { o = o || 0; var e = this, s, p, q, x, B = 0, I, J, H, D, A = 0, l = 0, n = 0, E, m = o, f, i, r, y = [], C; function M(a) { f += a; i += a; m += a; l += a; n += a; A = a } function Q(a, b) { var c = a - f + o * b; M(c); return i } function w(o, j) { var c = o; if (r && (c >= i || c <= f)) c = ((c - f) % r + r) % r + f; if (!E || x || j || l != c) { var g = b.min(c, i); g = b.max(g, f); if (!E || x || j || g != n) { if (K) { var h = (g - m) / (z || 1); if (k.od) h = 1 - h; var p = a.be(P, K, h, I, H, J, k); a.n(p, function (b, a) { C[a] && C[a](R, b) }) } e.Yb(n - m, g - m); n = g; a.n(y, function (b, c) { var a = o < l ? y[y.length - c - 1] : b; a.A(n - A, j) }); var s = l, q = n; l = c; E = d; e.Tb(s, q) } } } function F(a, c, d) { c && a.Nb(i, 1); if (!d) { f = b.min(f, a.Ld() + A); i = b.max(i, a.eb() + A) } y.push(a) } var t = g.requestAnimationFrame || g.webkitRequestAnimationFrame || g.mozRequestAnimationFrame || g.msRequestAnimationFrame; if (a.ue() && a.vd() < 7) t = j; t = t || function (b) { a.r(b, k.rd) }; function L() { if (s) { var d = a.O(), e = b.min(d - B, k.pd), c = l + e * q; B = d; if (c * q >= p * q) c = p; w(c); if (!x && c * q >= p * q) N(D); else t(L) } } function v(c, g, h) { if (!s) { s = d; x = h; D = g; c = b.max(c, f); c = b.min(c, i); p = c; q = p < l ? -1 : 1; e.qd(); B = a.O(); t(L) } } function N(a) { if (s) { x = s = D = h; e.Bd(); a && a() } } e.Ad = function (a, b, c) { v(a ? l + a : i, b, c) }; e.wd = v; e.cb = N; e.Ud = function (a) { v(a) }; e.Y = function () { return l }; e.gd = function () { return p }; e.yb = function () { return n }; e.A = w; e.I = function (a) { w(l + a) }; e.nd = function () { return s }; e.Rd = function (a) { r = a }; e.Nb = Q; e.id = M; e.jb = function (a) { F(a, 0) }; e.nc = function (a) { F(a, 1) }; e.Ld = function () { return f }; e.eb = function () { return i }; e.Tb = e.qd = e.Bd = e.Yb = a.Mc; e.hc = a.O(); k = a.z({ rd: 16, pd: 50 }, k); r = k.Nc; C = a.z({}, a.Dd(), k.Ac); f = m = o; i = o + z; J = k.m || {}; H = k.p || {}; I = a.z({ sb: a.te(k.f) && k.f || c.td }, k.f) } new (function () { }); var e = function (q, fc) { var i = this; function Dc() { var a = this; l.call(a, -1e8, 2e8); a.bf = function () { var c = a.yb(), d = b.floor(c), f = t(d), e = c - b.floor(c); return { hb: f, af: d, qb: e } }; a.Tb = function (c, a) { var f = b.floor(a); if (f != a && a > c) f++; Tb(f, d); i.o(e.Nd, t(a), t(c), a, c) } } function Cc() { var b = this; l.call(b, 0, 0, { Nc: s }); a.n(C, function (a) { D & 1 && a.Rd(s); b.nc(a); a.id(hb / bc) }) } function Bc() { var a = this, b = Sb.lb; l.call(a, -1, 2, { f: c.N, Ac: { qb: Zb }, Nc: s }, b, { qb: 1 }, { qb: -2 }); a.fc = b } function qc(o, m) { var a = this, c, f, g, k, b; l.call(a, -1e8, 2e8, { pd: 100 }); a.qd = function () { P = d; T = j; i.o(e.Qd, t(y.Y()), y.Y()) }; a.Bd = function () { P = h; k = h; var a = y.bf(); i.o(e.Sd, t(y.Y()), y.Y()); !a.qb && Fc(a.af, r) }; a.Tb = function (h, e) { var a; if (k) a = b; else { a = f; if (g) { var d = e / g; a = n.ld(d) * (f - c) + c } } y.A(a) }; a.Cb = function (b, e, d, h) { c = b; f = e; g = d; y.A(b); a.A(0); a.wd(d, h) }; a.Td = function (c) { k = d; b = c; a.Ad(c, j, d) }; a.Pd = function (a) { b = a }; y = new Dc; y.jb(o); y.jb(m) } function rc() { var c = this, b = Xb(); a.H(b, 0); a.ub(b, "pointerEvents", "none"); c.lb = b; c.Rb = function () { a.U(b); a.mc(b) } } function Ac(p, g) { var c = this, q, x, K, y, k, B = [], G, u, V, H, P, F, f, w, o; l.call(c, -v, v + 1, {}); function E(a) { x && x.Fb(); q && q.Fb(); U(p, a); F = d; q = new L.C(p, L, 1); x = new L.C(p, L); x.A(0); q.A(0) } function X() { q.hc < L.hc && E() } function N(p, r, o) { if (!H) { H = d; if (k && o) { var f = o.width, b = o.height, m = f, l = b; if (f && b && n.zb) { if (n.zb & 3 && (!(n.zb & 4) || f > J || b > I)) { var j = h, q = J / I * b / f; if (n.zb & 1) j = q > 1; else if (n.zb & 2) j = q < 1; m = j ? f * I / b : J; l = j ? I : b * J / f } a.q(k, m); a.s(k, l); a.F(k, (I - l) / 2); a.D(k, (J - m) / 2) } a.J(k, "absolute"); i.o(e.ce, g) } } a.U(r); p && p(c) } function W(b, d, e, f) { if (f == T && r == g && Q) if (!Ec) { var a = t(b); A.Se(a, g, d, c, e); d.Xd(); Z.Nb(a, 1); Z.A(a); z.Cb(b, b, 0) } } function bb(b) { if (b == T && r == g) { if (!f) { var a = j; if (A) if (A.hb == g) a = A.Ze(); else A.Rb(); X(); f = new xc(p, g, a, c.Wd(), c.Yd()); f.Rc(o) } !f.nd() && f.Xb() } } function S(e, d, h) { if (e == g) { if (e != d) C[d] && C[d].Jd(); else !h && f && f.Hd(); o && o.Vc(); var i = T = a.O(); c.vb(a.M(j, bb, i)) } else { var l = b.abs(g - e), k = v + n.cf - 1; (!P || l <= k) && c.vb() } } function cb() { if (r == g && f) { f.cb(); o && o.hf(); o && o.Re(); f.Jc() } } function fb() { r == g && f && f.cb() } function Y(a) { !M && i.o(e.Oe, g, a) } function O() { o = w.pInstance; f && f.Rc(o) } c.vb = function (c, b) { b = b || y; if (B.length && !H) { a.X(b); if (!V) { V = d; i.o(e.Ne, g); a.n(B, function (b) { if (!a.V(b, "src")) { b.src = a.t(b, "src2"); a.W(b, b["display-origin"]) } }) } a.Ve(B, k, a.M(j, N, c, b)) } else N(c, b) }; c.jf = function () { if (A) { var b = A.Ye(s); if (b) { var e = T = a.O(), c = g + Wb, d = C[t(c)]; return d.vb(a.M(j, W, c, d, b, e), y) } } ab(r + n.Pc * Wb) }; c.Wb = function () { S(g, g, d) }; c.Jd = function () { o && o.hf(); o && o.Re(); c.ad(); f && f.df(); f = j; E() }; c.Xd = function () { a.U(p) }; c.ad = function () { a.X(p) }; c.re = function () { o && o.Vc() }; function U(b, e, c) { if (a.V(b, "jssor-slider")) return; c = c || 0; if (!F) { if (b.tagName == "IMG") { B.push(b); if (!a.V(b, "src")) { P = d; b["display-origin"] = a.W(b); a.U(b) } } a.uc() && a.H(b, (a.H(b) || 0) + 1); if (n.Lc && a.fd()) (a.fd() < 534 || !eb && !a.je()) && a.ze(b) } var f = a.P(b); a.n(f, function (f) { var i = f.tagName, j = a.t(f, "u"); if (j == "player" && !w) { w = f; if (w.pInstance) O(); else a.l(w, "dataavailable", O) } if (j == "caption") { if (!a.Ic() && !e) { var g = a.xb(f, h, d); a.Qb(g, f, b); a.Jb(f, b); f = g; e = d } } else if (!F && !c && !k) { if (i == "A") { if (a.t(f, "u") == "image") k = a.he(f, "IMG"); else k = a.G(f, "image", d); if (k) { G = f; a.fb(G, R); u = a.xb(G, d); a.W(u, "block"); a.fb(u, R); a.dc(u, 0); a.ub(u, "backgroundColor", "#000") } } else if (i == "IMG" && a.t(f, "u") == "image") k = f; if (k) { k.border = 0; a.fb(k, R) } } U(f, e, c + 1) }) } c.Yb = function (c, b) { var a = v - b; Zb(K, a) }; c.Wd = function () { return q }; c.Yd = function () { return x }; c.hb = g; m.call(c); var D = a.G(p, "thumb", d); if (D) { a.xb(D); a.Qc(D, "id"); a.U(D) } a.X(p); y = a.xb(db); a.H(y, 1e3); a.l(p, "click", Y); E(d); c.Qe = k; c.Kc = u; c.fc = K = p; a.S(K, y); i.rb(203, S); i.rb(28, fb); i.rb(24, cb) } function xc(E, j, p, u, t) { var b = this, m = 0, w = 0, n, g, c, f, k, q, v, s, o = C[j]; l.call(b, 0, 0); function x() { a.mc(N); dc && k && o.Kc && a.S(N, o.Kc); a.X(N, !k && o.Qe) } function y() { if (q) { q = h; i.o(e.se, j, c, m, g, c, f); b.A(g) } b.Xb() } function z(a) { s = a; b.cb(); b.Xb() } b.Xb = function () { var a = b.yb(); if (!B && !P && !s && r == j) { if (!a) { if (n && !k) { k = d; b.Jc(d); i.o(e.oe, j, m, w, n, f) } x() } var h, p = e.ud; if (a != f) if (a == c) h = f; else if (a == g) h = c; else if (!a) h = g; else if (a > c) { q = d; h = c; p = e.ke } else h = b.gd(); i.o(p, j, a, m, g, c, f); var l = Q && (!G || H); if (a == f) (c != f && !(G & 12) || l) && o.jf(); else (l || a != c) && b.wd(h, y) } }; b.Hd = function () { c == f && c == b.yb() && b.A(g) }; b.df = function () { A && A.hb == j && A.Rb(); var a = b.yb(); a < f && i.o(e.ud, j, -a - 1, m, g, c, f) }; b.Jc = function (b) { p && a.Kb(jb, b && p.gb.me ? "" : "hidden") }; b.Yb = function (b, a) { if (k && a >= n) { k = h; x(); o.ad(); A.Rb(); i.o(e.le, j, m, w, n, f) } i.o(e.we, j, a, m, g, c, f) }; b.Rc = function (a) { if (a && !v) { v = a; a.rb($JssorPlayer$.gf, z) } }; p && b.nc(p); n = b.eb(); b.eb(); b.nc(u); g = u.eb(); c = g + (a.ic(a.t(E, "idle")) || pc); t.id(c); b.jb(t); f = b.eb() } function Zb(g, f) { var e = w > 0 ? w : ib, c = Bb * f * (e & 1), d = Cb * f * (e >> 1 & 1); c = b.round(c); d = b.round(d); a.D(g, c); a.F(g, d) } function Ob() { qb = P; Kb = z.gd(); E = y.Y() } function gc() { Ob(); if (B || !H && G & 12) { z.cb(); i.o(e.He) } } function ec(e) { if (!B && (H || !(G & 12)) && !z.nd()) { var c = y.Y(), a = b.ceil(E); if (e && b.abs(F) >= n.oc) { a = b.ceil(c); a += gb } if (!(D & 1)) a = b.min(s - v, b.max(a, 0)); var d = b.abs(a - c); d = 1 - b.pow(1 - d, 5); if (!M && qb) z.Ud(Kb); else if (c == a) { ub.re(); ub.Wb() } else z.Cb(c, a, d * Ub) } } function Ib(b) { !a.t(a.Gc(b), "nodrag") && a.Ab(b) } function uc(a) { Yb(a, 1) } function Yb(b, c) { b = a.cd(b); var l = a.Gc(b); if (!K && !a.t(l, "nodrag") && vc() && (!c || b.touches.length == 1)) { B = d; Ab = h; T = j; a.l(f, c ? "touchmove" : "mousemove", Db); a.O(); M = 0; gc(); if (!qb) w = 0; if (c) { var k = b.touches[0]; vb = k.clientX; wb = k.clientY } else { var g = a.kd(b); vb = g.x; wb = g.y } F = 0; cb = 0; gb = 0; i.o(e.Ge, t(E), E, b) } } function Db(e) { if (B) { e = a.cd(e); var f; if (e.type != "mousemove") { var l = e.touches[0]; f = { x: l.clientX, y: l.clientY } } else f = a.kd(e); if (f) { var j = f.x - vb, k = f.y - wb; if (b.floor(E) != E) w = w || ib & K; if ((j || k) && !w) { if (K == 3) if (b.abs(k) > b.abs(j)) w = 2; else w = 1; else w = K; if (lb && w == 1 && b.abs(k) - b.abs(j) > 3) Ab = d } if (w) { var c = k, i = Cb; if (w == 1) { c = j; i = Bb } if (!(D & 1)) { if (c > 0) { var g = i * r, h = c - g; if (h > 0) c = g + b.sqrt(h) * 5 } if (c < 0) { var g = i * (s - v - r), h = -c - g; if (h > 0) c = -g - b.sqrt(h) * 5 } } if (F - cb < -2) gb = 0; else if (F - cb > 2) gb = -1; cb = F; F = c; tb = E - F / i / (Y || 1); if (F && w && !Ab) { a.Ab(e); if (!P) z.Td(tb); else z.Pd(tb) } } } } } function ob() { sc(); if (B) { B = h; a.O(); a.K(f, "mousemove", Db); a.K(f, "touchmove", Db); M = F; z.cb(); var b = y.Y(); i.o(e.Fe, t(b), b, t(E), E); G & 12 && Ob(); ec(d) } } function kc(c) { if (M) { a.Le(c); var b = a.Gc(c); while (b && u !== b) { b.tagName == "A" && a.Ab(c); try { b = b.parentNode } catch (d) { break } } } } function oc(a) { C[r]; r = t(a); ub = C[r]; Tb(a); return r } function Fc(a, b) { w = 0; oc(a); i.o(e.Ke, t(a), b) } function Tb(b, c) { yb = b; a.n(O, function (a) { a.cc(t(b), b, c) }) } function vc() { var b = e.hd || 0, a = X; if (lb) a & 1 && (a &= 1); e.hd |= a; return K = a & ~b } function sc() { if (K) { e.hd &= ~X; K = 0 } } function Xb() { var b = a.Vb(); a.fb(b, R); a.J(b, "absolute"); return b } function t(a) { return (a % s + s) % s } function lc(a, c) { if (c) if (!D) { a = b.min(b.max(a + yb, 0), s - v); c = h } else if (D & 2) { a = t(a + yb); c = h } ab(a, n.Eb, c) } function zb() { a.n(O, function (a) { a.zc(a.Bb.yd <= H) }) } function ic() { if (!H) { H = 1; zb(); if (!B) { G & 12 && ec(); G & 3 && C[r].Wb() } } } function hc() { if (H) { H = 0; zb(); B || !(G & 12) || gc() } } function jc() { R = { ac: J, bc: I, c: 0, e: 0 }; a.n(U, function (b) { a.fb(b, R); a.J(b, "absolute"); a.Kb(b, "hidden"); a.U(b) }); a.fb(db, R) } function nb(b, a) { ab(b, a, d) } function ab(f, e, j) { if (Qb && (!B || n.zd)) { P = d; B = h; z.cb(); if (e == k) e = Ub; var c = Eb.yb(), a = f; if (j) { a = c + f; if (f > 0) a = b.ceil(a); else a = b.floor(a) } if (D & 2) a = t(a); if (!(D & 1)) a = b.max(0, b.min(a, s - v)); var i = (a - c) % s; a = c + i; var g = c == a ? 0 : e * b.abs(i); g = b.min(g, e * v * 1.5); z.Cb(c, a, g || 1) } } i.Ad = function () { if (!Q) { Q = d; C[r] && C[r].Wb() } }; function W() { return a.q(x || q) } function kb() { return a.s(x || q) } i.nb = W; i.kb = kb; function Gb(c, d) { if (c == k) return a.q(q); if (!x) { var b = a.Vb(f); a.jd(b, a.jd(q)); a.Ub(b, a.Ub(q)); a.W(b, "block"); a.J(b, "relative"); a.F(b, 0); a.D(b, 0); a.Kb(b, "visible"); x = a.Vb(f); a.J(x, "absolute"); a.F(x, 0); a.D(x, 0); a.q(x, a.q(q)); a.s(x, a.s(q)); a.xe(x, "0 0"); a.S(x, b); var h = a.P(q); a.S(q, x); a.ub(q, "backgroundImage", ""); a.n(h, function (c) { a.S(a.t(c, "noscale") ? q : b, c) }) } Y = c / (d ? a.s : a.q)(x); a.ye(x, Y); var g = d ? Y * W() : c, e = d ? c : Y * kb(); a.q(q, g); a.s(q, e); a.n(O, function (a) { a.Cc(g, e) }) } i.Te = Gb; m.call(i); i.lb = q = a.wb(q); var n = a.z({ zb: 0, cf: 1, vc: 0, Bc: h, Hb: 1, Lc: d, zd: d, Pc: 1, sc: 3e3, yc: 1, Eb: 500, ld: c.Ib, oc: 20, wc: 0, db: 1, xd: 0, md: 1, Ob: 1, Ec: 1 }, fc); if (n.Cd != k) n.sc = n.Cd; if (n.E != k) n.db = n.E; var ib = n.Ob & 3, Wb = (n.Ob & 4) / -4 || 1, fb = n.nf, L = a.z({ C: p, Uc: 1, Oc: 1 }, n.Ed), rb = n.Fd, V = n.Id, bb = n.mf, S = !n.md, x, u = a.G(q, "slides", S), db = a.G(q, "loading", S) || a.Vb(f), Jb = a.G(q, "navigator", S), cc = a.G(q, "arrowleft", S), ac = a.G(q, "arrowright", S), Hb = a.G(q, "thumbnavigator", S), nc = a.q(u), mc = a.s(u), R, U = [], wc = a.P(u); a.n(wc, function (b) { if (b.tagName == "DIV" && !a.t(b, "u")) U.push(b); else a.uc() && a.H(b, (a.H(b) || 0) + 1) }); var r = -1, yb, ub, s = U.length, J = n.fe || nc, I = n.ee || mc, Vb = n.wc, Bb = J + Vb, Cb = I + Vb, bc = ib & 1 ? Bb : Cb, v = b.min(n.db, s), jb, w, K, Ab, O = [], Pb, Rb, Nb, dc, Ec, Q, G = n.yc, pc = n.sc, Ub = n.Eb, sb, eb, hb, Qb = v < s, D = Qb ? n.Hb : 0, X, M, H = 1, P, B, T, vb = 0, wb = 0, F, cb, gb, Eb, y, Z, z, Sb = new rc, Y; Q = n.Bc; i.Bb = fc; jc(); a.V(q, "jssor-slider", d); a.H(u, a.H(u) || 0); a.J(u, "absolute"); jb = a.xb(u, d); a.Qb(jb, u); if (fb) { dc = fb.lf; sb = fb.C; eb = v == 1 && s > 1 && sb && (!a.Ic() || a.vd() >= 8) } hb = eb || v >= s || !(D & 1) ? 0 : n.xd; X = (v > 1 || hb ? ib : -1) & n.Ec; var xb = u, C = [], A, N, Fb = a.qe(), lb = Fb.ef, E, qb, Kb, tb; Fb.Yc && a.ub(xb, Fb.Yc, ([j, "pan-y", "pan-x", "none"])[X] || ""); Z = new Bc; if (eb) A = new sb(Sb, J, I, fb, lb); a.S(jb, Z.fc); a.Kb(u, "hidden"); N = Xb(); a.ub(N, "backgroundColor", "#000"); a.dc(N, 0); a.Qb(N, xb.firstChild, xb); for (var pb = 0; pb < U.length; pb++) { var yc = U[pb], zc = new Ac(yc, pb); C.push(zc) } a.U(db); Eb = new Cc; z = new qc(Eb, Z); if (X) { a.l(u, "mousedown", Yb); a.l(u, "touchstart", uc); a.l(u, "dragstart", Ib); a.l(u, "selectstart", Ib); a.l(f, "mouseup", ob); a.l(f, "touchend", ob); a.l(f, "touchcancel", ob); a.l(g, "blur", ob) } G &= lb ? 10 : 5; if (Jb && rb) { Pb = new rb.C(Jb, rb, W(), kb()); O.push(Pb) } if (V && cc && ac) { V.Hb = D; V.db = v; Rb = new V.C(cc, ac, V, W(), kb()); O.push(Rb) } if (Hb && bb) { bb.vc = n.vc; Nb = new bb.C(Hb, bb); O.push(Nb) } a.n(O, function (a) { a.Hc(s, C, db); a.rb(o.tc, lc) }); Gb(W()); a.l(u, "click", kc); a.l(q, "mouseout", a.Zb(ic, q)); a.l(q, "mouseover", a.Zb(hc, q)); zb(); n.de && a.l(f, "keydown", function (a) { if (a.keyCode == 37) nb(-1); else a.keyCode == 39 && nb(1) }); var mb = n.vc; if (!(D & 1)) mb = b.max(0, b.min(mb, s - v)); z.Cb(mb, mb, 0) }; e.Oe = 21; e.Ge = 22; e.Fe = 23; e.Qd = 24; e.Sd = 25; e.Ne = 26; e.ce = 27; e.He = 28; e.Nd = 202; e.Ke = 203; e.oe = 206; e.le = 207; e.we = 208; e.ud = 209; e.ke = 210; e.se = 211; var o = { tc: 1 }, q = function (c, D) { var f = this; m.call(f); c = a.wb(c); var t, u, s, r, l = 0, e, n, k, y, z, i, g, q, p, C = [], A = []; function x(a) { a != -1 && A[a].Pe(a == l) } function v(a) { f.o(o.tc, a * n) } f.lb = c; f.cc = function (a) { if (a != r) { var d = l, c = b.floor(a / n); l = c; r = a; x(d); x(c) } }; f.zc = function (b) { a.X(c, b) }; var B; f.Cc = function (f, b) { if (!B || e.ob == h) { var f = a.pb(c).clientWidth, b = a.pb(c).clientHeight; e.ib & 1 && a.D(c, (f - u) / 2); e.ib & 2 && a.F(c, (b - s) / 2); B = d } }; var w; f.Hc = function (D) { if (!w) { t = b.ceil(D / n); l = 0; var o = q + y, r = p + z, m = b.ceil(t / k) - 1; u = q + o * (!i ? m : k - 1); s = p + r * (i ? m : k - 1); a.q(c, u); a.s(c, s); for (var f = 0; f < t; f++) { var B = a.pe(); a.Ie(B, f + 1); var h = a.Ue(g, "numbertemplate", B, d); a.J(h, "absolute"); var x = f % (m + 1); a.D(h, !i ? o * x : f % k * o); a.F(h, i ? r * x : b.floor(f / (m + 1)) * r); a.S(c, h); C[f] = h; e.qc & 1 && a.l(h, "click", a.M(j, v, f)); e.qc & 2 && a.l(h, "mouseover", a.Zb(a.M(j, v, f), h)); A[f] = a.gc(h) } w = d } }; f.Bb = e = a.z({ Fc: 0, pc: 0, rc: 1, qc: 1 }, D); g = a.G(c, "prototype"); q = a.q(g); p = a.s(g); a.Jb(g, c); n = e.Db || 1; k = e.ed || 1; y = e.Fc; z = e.pc; i = e.rc - 1; e.ob == h && a.V(c, "noscale", d) }, r = function (b, f, i) { var c = this; m.call(c); var u, t, e, g, k, q = a.q(b), n = a.s(b); function l(a) { c.o(o.tc, a, d) } function r(c) { a.X(b, c || !i.Hb && e == 0); a.X(f, c || !i.Hb && e >= t - i.db); u = c } c.cc = function (b, a, c) { if (c) e = a; else { e = b; r(u) } }; c.zc = r; var s; c.Cc = function (i, c) { if (!s || g.ob == h) { var e = a.pb(b).clientWidth, c = a.pb(b).clientHeight; if (g.ib & 1) { a.D(b, (e - q) / 2); a.D(f, (e - q) / 2) } if (g.ib & 2) { a.F(b, (c - n) / 2); a.F(f, (c - n) / 2) } s = d } }; var p; c.Hc = function (c) { t = c; e = 0; if (!p) { a.l(b, "click", a.M(j, l, -k)); a.l(f, "click", a.M(j, l, k)); a.gc(b); a.gc(f); p = d } }; c.Bb = g = a.z({ Db: 1 }, i); k = g.Db; if (g.ob == h) { a.V(b, "noscale", d); a.V(f, "noscale", d) } }; function p() { l.call(this, 0, 0); this.Fb = a.Mc } var s = function (p, h, f) { var c = this, g, n = f ? h.Uc : h.Oc, e = h.Sc, o = { gb: "t", r: "d", j: "du", x: "x", y: "y", i: "r", g: "z", a: "f", bb: "b" }, d = { sb: function (b, a) { if (!isNaN(a.ab)) b = a.ab; else b *= a.Od; return b }, a: function (b, a) { return this.sb(b - 1, a) } }; d.g = d.a; l.call(c, 0, 0); function j(r, m) { var l = [], i, k = [], c = []; function h(c, d) { var b = {}; a.n(o, function (g, h) { var e = a.t(c, g + (d || "")); if (e) { var f = {}; if (g == "t") f.ab = e; else if (e.indexOf("%") + 1) f.Od = a.ic(e) / 100; else f.ab = a.ic(e); b[h] = f } }); return b } function p() { return e[b.floor(b.random() * e.length)] } function g(f) { var h; if (f == "*") h = p(); else if (f) { var d = e[a.Xe(f)] || e[f]; if (a.ec(d)) { if (f != i) { i = f; c[f] = 0; k[f] = d[b.floor(b.random() * d.length)] } else c[f]++; d = k[f]; if (a.ec(d)) { d = d.length && d[c[f] % d.length]; if (a.ec(d)) d = d[b.floor(b.random() * d.length)] } } h = d; if (a.bd(h)) h = g(h) } return h } var q = a.P(r); a.n(q, function (b) { var c = []; c.lb = b; var e = a.t(b, "u") == "caption"; a.n(f ? [0, 3] : [2], function (l, o) { if (e) { var k, f; if (l != 2 || !a.t(b, "t3")) { f = h(b, l); if (l == 2 && !f.gb) { f.r = f.r || { ab: 0 }; f = a.z(h(b, 0), f) } } if (f && f.gb) { k = g(f.gb.ab); if (k) { var i = a.z({ r: 0 }, k); a.n(f, function (c, a) { var b = (d[a] || d.sb).apply(d, [i[a], f[a]]); if (!isNaN(b)) i[a] = b }); if (!o) if (f.bb) i.bb = f.bb.ab || 0; else if (n & 2) i.bb = 0 } } c.push(i) } if (m % 2 && !o) c.P = j(b, m + 1) }); l.push(c) }); return l } function m(w, c, z) { var g = { f: c.f, m: c.m, p: c.p, od: f && !z }, m = w, r = a.pb(w), k = a.q(m), j = a.s(m), y = a.q(r), x = a.s(r), h = {}, e = {}, i = c.Xc || 1; if (c.a) e.a = 1 - c.a; g.nb = k; g.kb = j; if (c.g || c.i) { e.g = (c.g || 2) - 2; if (a.uc() || a.ne()) e.g = b.min(e.g, 1); h.g = 1; var B = c.i || 0; e.i = B * 360; h.i = 0 } else if (c.k) { var s = { c: 0, u: k, v: j, e: 0 }, v = a.z({}, s), d = v.tb = {}, u = c.k & 4, p = c.k & 8, t = c.k & 1, q = c.k & 2; if (u && p) { d.c = j / 2 * i; d.v = -d.c } else if (u) d.v = -j * i; else if (p) d.c = j * i; if (t && q) { d.e = k / 2 * i; d.u = -d.e } else if (t) d.u = -k * i; else if (q) d.e = k * i; g.I = c.I; e.k = v; h.k = s } var n = 0, o = 0; if (c.x) n -= y * c.x; if (c.y) o -= x * c.y; if (n || o || g.I) { e.e = n; e.c = o } var A = c.j; h = a.z(h, a.ae(m, e)); g.Ac = a.Zd(); return new l(c.r, A, g, m, h, e) } function i(b, d) { a.n(d, function (a) { var e, h = a.lb, d = a[0], j = a[1]; if (d) { e = m(h, d); b = e.Nb(d.bb == k ? b : d.bb, 1) } b = i(b, a.P); if (j) { var f = m(h, j, 1); f.Nb(b, 1); c.jb(f); g.jb(f) } e && c.jb(e) }); return b } c.Fb = function () { c.A(c.eb() * (f || 0)); g.A(0) }; g = new l(0, 0); i(0, n ? j(p, 1) : []) }, i = []; i.L = { j: 900, x: .6, f: { e: c.Z }, a: 2 }; i.R = { j: 900, x: -.6, f: { e: c.Z }, a: 2 }; i.T = { j: 900, y: .6, f: { c: c.Z }, a: 2 }; i.B = { j: 900, y: -.6, f: { c: c.Z }, a: 2 }; i.TR = { j: 900, x: -.6, y: .6, f: { e: c.Z, c: c.Z }, a: 2 }; i["L|IB"] = { j: 1200, x: .6, f: { e: c.Dc }, a: 2 }; i["R|IB"] = { j: 1200, x: -.6, f: { e: c.Dc }, a: 2 }; i["T|IB"] = { j: 1200, y: .6, f: { c: c.Dc }, a: 2 }; i["CLIP|LR"] = { j: 900, k: 3, f: { k: c.mb }, a: 2 }; i["CLIP|TB"] = { j: 900, k: 12, f: { k: c.mb }, a: 2 }; i["CLIP|L"] = { j: 900, k: 1, f: { k: c.mb }, a: 2 }; i["MCLIP|R"] = { j: 900, k: 2, I: d, f: { k: c.mb }, a: 2 }; i["MCLIP|T"] = { j: 900, k: 4, I: d, f: { k: c.mb }, a: 2 }; i["WV|B"] = { j: 1200, x: -.2, y: -.6, f: { e: c.xc, c: c.N }, a: 2, m: { e: 1.5 } }; i["TORTUOUS|VB"] = { j: 1800, y: -.2, g: 1, f: { c: c.sd, g: c.Md }, a: 2, p: { c: [0, .7] }, m: { c: 1.3 } }; i["LISTH|R"] = { j: 1500, x: -.8, k: 1, f: c.mb, Xc: .8, a: 2, p: { e: [.4, .6], k: [0, .4], a: [.4, .6] } }; i["RTT|360"] = { j: 900, i: 1, f: { a: c.N, i: c.Q }, a: 2 }; i["RTT|10"] = { j: 900, g: 11, i: 1, f: { g: c.Gb, a: c.N, i: c.Gb }, a: 2, m: { i: .8 } }; i["RTTL|BR"] = { j: 900, x: -.6, y: -.6, g: 11, i: 1, f: { e: c.Lb, c: c.Lb, g: c.Lb, a: c.N, i: c.Lb }, a: 2, m: { i: .8 } }; i["T|IE*IE"] = { j: 1800, y: .8, g: 11, i: -1.5, f: { c: c.Tc, g: c.ge, i: c.Tc }, a: 2, p: { g: [0, .8], a: [0, .7] }, m: { i: .5 } }; i["RTTS|R"] = { j: 900, x: -.6, g: 1, i: 1, f: { e: c.Q, g: c.Q, i: c.Q, a: c.Ib }, a: 2, m: { i: 1.2 } }; i["RTTS|T"] = { j: 900, y: .6, g: 1, i: 1, f: { c: c.Q, g: c.Q, i: c.Q, a: c.Ib }, a: 2, m: { i: 1.2 } }; i["DDGDANCE|RB"] = { j: 1800, x: -.3, y: -.3, g: 1, f: { e: c.Pb, c: c.Pb, g: c.Ib }, a: 2, p: { e: [0, .8], c: [0, .8] }, m: { e: .8, c: 2.5 } }; i["ZMF|10"] = { j: 900, g: 11, f: { g: c.Gb, a: c.N }, a: 2 }; i["DDG|TR"] = { j: 1200, x: -.3, y: .3, g: 1, f: { e: c.Pb, c: c.Pb }, a: 2, p: { e: [0, .8], c: [0, .8] }, m: { e: .8, c: .8 } }; i["FLTTR|R"] = { j: 900, x: -.2, y: -.1, f: { e: c.N, c: c.xc }, a: 2, m: { c: 1.3 } }; i["FLTTRWN|LT"] = { j: 1800, x: .5, y: .2, g: 1, f: { e: c.Z, c: c.xc, g: c.Kd }, a: 2, p: { e: [0, .7], c: [.1, .7] }, m: { c: 1.3 } }; i["ATTACK|BR"] = { j: 1500, x: -.1, y: -.5, g: 1, f: { e: c.sd, c: c.Gb }, a: 2, p: { e: [.3, .7], c: [0, .7] }, m: { e: 1.3 } }; i.FADE = { j: 900, a: 2 }; jssor_slider1_starter = function (j) { var h = new e(j, { Bc: d, Pc: 1, sc: 2e3, yc: 1, de: d, ld: c.Vd, Eb: 800, oc: 20, wc: 0, db: 1, xd: 0, md: 1, Ob: 1, Ec: 1, Ed: { C: s, Sc: i, Uc: 1, Oc: 3 }, Id: { C: r, yd: 1, ib: 2, Db: 1 }, Fd: { C: q, yd: 2, ib: 1, Db: 1, ed: 1, Fc: 4, pc: 4, rc: 1 } }); function f() { var c = a.Be().x; if (c) h.Te(b.max(b.min(c, 980), 300)); else a.r(f, 30) } f(); a.l(g, "load", f); a.l(g, "resize", a.Ee(g, f)); a.l(g, "orientationchange", f) }
        })(window, document, Math, null, true, false)
    </script>
    <div id="showcase-row" data-stellar-background-ratio="0.5">
        <div class="row-container">
            <div class="container">
                <div class="row">
                    <div class="moduletable welcome  span12">
                        <div id="slider1_container" style="position: relative; margin: 0 auto; width: 1300px; height: 380px; overflow: hidden;">
                            <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; background-color: #000; top: 0px; left: 0px; width: 100%; height: 100%;">
                                </div>
                                <div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;">
                                </div>
                            </div>
                          

                             <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1300px; height: 380px; overflow: hidden;">
            <div>
               <%-- <img u="image" src="../img/home/01.jpg">--%>
               <%-- <div u="caption" t="CLIP|LR" du="1500" class="captionOrange" style="position: absolute; left: 20px; top: 30px; width: 1300px; height: 50px;">
                    <span class="tencongty" style="font-size:31px;width:auto;line-height:50px;font-weight:bold;"></span>
                </div>--%>
               
               
                <div u="caption" t="RTT|360" d="-200" class="captionBlack" style="position: absolute; text-align:left;left: 20px; top: 30px; width: auto; height: auto;white-space:pre-line;">
                    <span class="ttphuonghuong" style="line-height:20px;font-size:24px;width:auto;text-align:center;white-space:pre-line;"></span>
                </div>
              
                
              
            </div>
 



                                  <div>
               <%-- <img u="image" src="../img/home/01.jpg">--%>
               <%-- <div u="caption" t="CLIP|LR" du="1500" class="captionOrange" style="position: absolute; left: 20px; top: 30px; width: 1300px; height: 50px;">
                    <span class="tencongty" style="font-size:31px;width:auto;line-height:50px;font-weight:bold;"></span>
                </div>--%>
               
               
                <div u="caption" t="RTT|360" d="-200" class="captionBlack" style="position: absolute; text-align:left;left: 20px; top: 30px; width: auto; height: auto;white-space:pre-line;">
                    <span class="ttphuonghuong1" style="line-height:20px;font-size:24px;width:auto;text-align:center;white-space:pre-line;"></span>
                </div>
              
                
              
            </div>
                                  <div>
               <%-- <img u="image" src="../img/home/01.jpg">--%>
               <%-- <div u="caption" t="CLIP|LR" du="1500" class="captionOrange" style="position: absolute; left: 20px; top: 30px; width: 1300px; height: 50px;">
                    <span class="tencongty" style="font-size:31px;width:auto;line-height:50px;font-weight:bold;"></span>
                </div>--%>
               
               
                <div u="caption" t="RTT|360" d="-200" class="captionBlack" style="position: absolute; text-align:left;left: 20px; top: 30px; width: auto; height: auto;white-space:pre-line;">
                    <span class="ttphuonghuong2" style="line-height:20px;font-size:24px;width:auto;text-align:center;white-space:pre-line;"></span>
                </div>
              
                
              
            </div>
          
            <div>
               <%-- <img u="image" src="../img/home/04.jpg">--%>
                <%--<div u="caption" t="RTTS|T" d="-300" t2="B" class="captionOrange" style="position: absolute; left: 20px; top: 30px; width: 1300px; height: 50px;">
                   <span class="tencongty" style="font-size:31px;width:auto;line-height:50px;font-weight:bold;"></span>
                </div>--%>
                <div u="caption" t="T|IB" t2="T" d="-300" class="captionOrange" style="position: absolute; text-align:left;;left: 20px; top: 30px; width: auto; height: auto;white-space:pre-line;">
                    <span class="ttphuonghuong3" style="line-height:20px;white-space:pre-line;font-size:24px;width:auto;text-align:center;"></span>
                </div>
               
                <div u="caption" t="WV|B" t2="T" d="-600" class="bricon" style="position: absolute; top: 50px; left: 220px; width: 30px; height: 30px; background-position: 0px 0px;"></div>
                <div u="caption" t="WV|B" t2="T" d="-1100" class="bricon" style="position: absolute; top: 100px; left: 220px; width: 30px; height: 30px; background-position: -30px 0px;"></div>
                <div u="caption" t="WV|B" t2="T" d="-1100" class="bricon" style="position: absolute; top: 150px; left: 220px; width: 30px; height: 30px; background-position: -60px 0px;"></div>
                <div u="caption" t="WV|B" t2="T" d="-1100" class="bricon" style="position: absolute; top: 200px; left: 220px; width: 30px; height: 30px; background-position: -90px 0px;"></div>
                <div u="caption" t="WV|B" t2="T" d="-1100" class="bricon" style="position: absolute; top: 250px; left: 220px; width: 30px; height: 30px; background-position: -120px 0px;"></div>
                <%--<div u="caption" t="LISTH|R" t2="CLIP|TB" d="-600" class="captionOrange" style="position: absolute; top: 40px; left: 280px; width: 180px; height: 250px; text-align: left; line-height: 50px;">
                    &nbsp; Chrome&nbsp; &nbsp; &nbsp; 3+<br>
                    &nbsp; Firerfox&nbsp; &nbsp; &nbsp; 2+<br>
                    &nbsp; IE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6+<br>
                    &nbsp; Safari&nbsp; &nbsp; &nbsp; &nbsp; 3.1+<br>
                    &nbsp; Opera&nbsp; &nbsp; &nbsp; &nbsp;10+
                </div>--%>
               <%-- <div u="caption" t="TR" t2="T" d="-900" class="captionOrange" style="position: absolute; left: 700px; top: 40px; width: 130px; height: 30px;">
                    All devices
                </div>--%>
               
            </div>
        </div>
      
        <script>
            jssor_slider1_starter('slider1_container');
        </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

