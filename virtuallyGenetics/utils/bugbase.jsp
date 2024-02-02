<%@ page language="java" contentType="text/html" %>
<jsp:useBean id="theBug" class="arahn.vg.bugBase.BugBaseEntry" scope="page" />
<jsp:setProperty name="theBug" property="*" />
<HTML>
<HEAD>
<TITLE>Search the BugBase</TITLE>
</HEAD>
<BODY  >

<P><B>Search the virtuallyGenetics BugBase</B><BR>
<BR>
Fill out as many parameters as you want, or none to select all bugs.
<BR><BR>
<form action="bugsearch.jsp" method="POST">
<TABLE>
<TR><TD WIDTH=200 ALIGN="RIGHT">Bug Number :</TD>
<TD><input type="text" name="bugId" value="<%= ((theBug.getBugId() > 0) ? String.valueOf(theBug.getBugId()) : "") %>" /></TD></TR>
<TR><TD WIDTH=200 ALIGN="RIGHT">STATUS : </TD>
<TD><select name="status">
<%
String statuses[] = {"", "Open", "Closed"};
String labels1[] = {"blank", "Open", "Closed"};
for(int i = 0; i < statuses.length; i++) {
	boolean selected = statuses[i].equalsIgnoreCase(theBug.getStatus());
	%><option value="<%= statuses[i] %>"
	<% if (selected) { %> selected <% }%> /><%= labels1[i] %><%
} %></select>
</TD></TR>
<TR><TD WIDTH=200 ALIGN="RIGHT">
STATE : </TD><TD><select name="state">
<%
String labels[] = {"blank", "to fix", "to test", "tested and fixed", "withdrawn", "need more info"};
String states[] = {"", "to fix", "to test", "tested and fixed", "withdrawn", "need more info"};
for(int i = 0; i < states.length; i++) {
	boolean selected = states[i].equalsIgnoreCase(theBug.getState());
	%><option value="<%= states[i] %>"
	<% if (selected) { %> selected <% }%> /><%= labels[i] %><%
} %></select>
</TD></TR>
<TR><TD WIDTH=200 ALIGN="RIGHT">
Finder :</TD><TD>
<input type="text" name="finder" value="<%= theBug.getFinder() %>" size=70/>
</TD></TR>
<TR><TD WIDTH=200 ALIGN="RIGHT">
Fixer :</TD><TD>
<input type="text" name="fixer" value="<%= theBug.getFixer() %>" size=70/>
</TD></TR>
<TR><TD WIDTH=200 ALIGN="RIGHT">
Title :</TD><TD>
<input type="text" name="title" value="<%= theBug.getTitle() %>" size=70/>
</TD></TR>
<TR><TD WIDTH=200 ALIGN="RIGHT">
Description :</TD><TD>
<input type="text" name="bugText" value="<%= theBug.getBugText() %>" size=70 /><BR>
</TD></TR>
<TR><TD ALIGN="RIGHT">
<input type="submit" name="submit" value="search" /></FORM>
</TD><TD ALIGN="LEFT"><FORM ACTION="showbug.jsp" METHOD="POST"><input
type="submit" name="submit" value="new bug" /></FORM></TD></TR>
</TABLE>
</BODY>
</HTML>
