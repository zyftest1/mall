<%--
  Created by IntelliJ IDEA.
  User: liuxiangfu
  Date: 2019/7/13
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header</title>
    <style>
        html,body{background:#626262;margin:0;padding:0;height:100%;position:relative;}
        body img{margin-top:50%;}
    </style>
    <script type="text/javascript" language="JavaScript">
        <!--
        var pic = new Image();
        pic.src="images/arrow_right.gif";

        function toggleMenu()
        {
            frmBody = parent.document.getElementById('frame-body');
            imgArrow = document.getElementById('img');

            if (frmBody.cols == "0, 10, *")
            {
                frmBody.cols="200, 10, *";
                imgArrow.src = "images/arrow_left.gif";
            }
            else
            {
                frmBody.cols="0, 10, *";
                imgArrow.src = "images/arrow_right.gif";
            }
        }

        var orgX = 0;
        document.onmousedown = function(e)
        {
            var evt = Utils.fixEvent(e);
            orgX = evt.clientX;

            if (Browser.isIE) document.getElementById('tbl').setCapture();
        };

        document.onmouseup = function(e)
        {
            var evt = Utils.fixEvent(e);

            frmBody = parent.document.getElementById('frame-body');
            frmWidth = frmBody.cols.substr(0, frmBody.cols.indexOf(','));
            frmWidth = (parseInt(frmWidth) + (evt.clientX - orgX));

            frmBody.cols = frmWidth + ", 10, *";

            if (Browser.isIE) document.releaseCapture();
        };

        var Browser = new Object();

        Browser.isMozilla = (typeof document.implementation != 'undefined') && (typeof document.implementation.createDocument != 'undefined') && (typeof HTMLDocument != 'undefined');
        Browser.isIE = window.ActiveXObject ? true : false;
        Browser.isFirefox = (navigator.userAgent.toLowerCase().indexOf("firefox") != - 1);
        Browser.isSafari = (navigator.userAgent.toLowerCase().indexOf("safari") != - 1);
        Browser.isOpera = (navigator.userAgent.toLowerCase().indexOf("opera") != - 1);

        var Utils = new Object();

        Utils.fixEvent = function(e)
        {
            var evt = (typeof e == "undefined") ? window.event : e;
            return evt;
        };
        //-->
    </script>
</head>
<body  onselect="return false;">
<table height="100%" cellspacing="0" cellpadding="0" user_id="tbl">
    <tbody><tr><td><a href="javascript:toggleMenu();"><img src="images\arrow_left.gif" width="10" height="30" user_id="img" border="0"></a></td></tr>
    </tbody></table>
</body>
</html>
