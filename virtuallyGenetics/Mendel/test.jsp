<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>End of Mendel Test</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
Loading the test....
<% session.removeAttribute("RubricTest"); %>
<jsp:useBean id="RubricTest" class="arahn.rc.Test" scope="session" />
<% try {
		RubricTest.setContents(new arahn.rc.GlobTokenizer(new FileInputStream("/usr/local/etc/httpd/sites/virtuallygenetics.net/tests/Mendel.rsc")));
		RubricTest.flattenTest();
	%><H1>Test <%= RubricTest.getText() %> Loaded</H1>
	<jsp:include page="/servlet/arahn.rc.RubricServlet" flush="true" />

<%
	}
	catch (Exception e) {
		%><H1>Error loading the test : <%= e.toString() %></H1><%
		getServletContext().log(e.toString());
	} %>
</BODY>
</HTML>
