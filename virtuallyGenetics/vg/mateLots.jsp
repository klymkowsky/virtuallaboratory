<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
	<TITLE>MateLotsApplet</TITLE>
<script>
<!--
  function openWindow(url, w, h) {
    var options = "width=" + w + ",height=" + h + ",";
    options += "resizable=yes,scrollbars=yes,status=yes,";
    options += "menubar=no,toolbar=no,location=no,directories=no";
    var newWin = window.open(url, 'newWin', options);
    newWin.focus();
  }
//-->
</script>
</HEAD>
<BODY>
<CENTER>
<APPLET CODE="MateLotsApplet.class" ARCHIVE="mateLotsApplet.jar" HEIGHT="400" WIDTH="600">
<PARAM NAME="org0" VALUE="<%= request.getParameter("selectedmale") %>">
<PARAM NAME="org1" VALUE="<%= request.getParameter("selectedfemale") %>">
<PARAM NAME="storagePath" VALUE="/temp/">
<PARAM NAME="mask" VALUE="<%= userInfo.getLesson().getMask() %>">
</APPLET>
</CENTER>
<CENTER>
<a onMouseOver="status='Launch ChiSquare Calculator'; return true"
   onMouseOut="status=''; return true"
   onClick="openWindow('chisq.swf', 200, 300); return false"
   href="chisq.swf">Test Hypothesis</a> | <A HREF="javascript:window.close();">Close Window</A>
</CENTER>
</BODY>
</HTML>
