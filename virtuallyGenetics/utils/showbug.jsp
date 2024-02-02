<%@ page language="java" contentType="text/html" %>
<jsp:useBean id="theBug" class="arahn.vg.bugBase.BugBaseEntry" scope="page" />
<% theBug.clear(); %>
<jsp:setProperty name="theBug" property="*" />
<% theBug.load(); %>
<HTML>
<HEAD>
<TITLE>Bug <%= theBug.getTitle() %></TITLE>
</HEAD>
<BODY  >

<B>virtuallyGenetics BugBase entry <%= theBug.getTitle() %></B><BR>
<BR><BR>
<form action="savebug.jsp" method="POST">
Bug Number : <input type="hidden" name="bugId" value="<%= theBug.getBugId() %>" />
<% if (theBug.getBugId() > 0) { %><%= theBug.getBugId() %><% } %>
&nbsp;&nbsp;
STATUS : <select name="status">
<%
String statuses[] = {"Open", "Closed"};
String labels1[] = {"Open", "Closed"};
for(int i = 0; i < statuses.length; i++) {
	boolean selected = statuses[i].equalsIgnoreCase(theBug.getStatus());
	%><option value="<%= statuses[i] %>"
	<% if (selected) { %> selected <% }%> /><%= labels1[i] %><%
} %></select>
STATE : <select name="state">
<%
String labels[] = {"to fix", "to test", "tested and fixed", "withdrawn", "need more info"};
String states[] = {"to fix", "to test", "tested and fixed", "withdrawn", "need more info"};
for(int i = 0; i < states.length; i++) {
	boolean selected = states[i].equalsIgnoreCase(theBug.getState());
	%><option value="<%= states[i] %>"
	<% if (selected) { %> selected <% }%> /><%= labels[i] %><%
} %></select>
<BR><BR>
Finder :
<input type="text" name="finder" value="<%= theBug.getFinder() %>" size=20 /> &nbsp;&nbsp;
Fixer :
<input type="text" name="fixer" value="<%= theBug.getFixer() %>" size=20/>&nbsp;&nbsp;
Fix By version :
<input type="text" name="fixByVersion" value="<%= theBug.getFixByVersion() %>" size=10 /><BR><BR>
Title :
<input type="text" name="title" value="<%= theBug.getTitle() %>" size=110 />
<BR><BR>
Description:<BR>
<BR>
<textarea name="bugText" cols=120 rows=17><%= theBug.getBugText() %></textarea><BR>
<BR>
<BR>
<input type="submit" name="submit" value="save" /><BR>
</FORM>
</BODY>
</HTML>
