<%@ page language="java" contentType="text/html" %>
<%@ include file="/security.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>Loading Test</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
Loading the test....
<jsp:useBean id="RubricTest" class="arahn.rc.Test" scope="session" />
<% try {
		RubricTest.setContents(new arahn.rc.GlobTokenizer(new FileInputStream(getServletContext().getRealPath("vg/example.rsc"))));
		RubricTest.flattenTest();
	%><H1>Test <%= RubricTest.getText() %> Loaded</H1><jsp:forward page="/servlet/arahn.rc.RubricServlet">
</jsp:forward><%
	}
	catch (Exception e) {
		%><H1>Error loading the test : <%= e.toString() %></H1><%
		getServletContext().log(e.toString());
	} %>
</BODY>
</HTML>
