<%@ page language="java" contentType="text/html" %>
<jsp:useBean id="theBug" class="arahn.vg.bugBase.BugBaseEntry" scope="page" />
<% theBug.clear(); %>
<jsp:setProperty name="theBug" property="*" />
<% arahn.vg.bugBase.BugBaseEntry []results = theBug.search(); %>
<HTML>
<HEAD>
<TITLE>Search Results</TITLE>
</HEAD>
<BODY  >

<P><B>Search Results on virtuallyGenetics BugBase</B><BR>
<FORM ACTION="showbug.jsp" METHOD="POST">
<TABLE WIDTH="100%"><TR>
<TD BGCOLOR="#0000AA" WIDTH="10%">&nbsp;</TD>
<TD BGCOLOR="#0000AA" WIDTH="5%"><FONT COLOR="#FFFFFF">Bug Number</FONT></TD>
<TD BGCOLOR="#0000AA" WIDTH="55%"><FONT COLOR="#FFFFFF">Title</FONT></TD>
<TD BGCOLOR="#0000AA" WIDTH="15%"><FONT COLOR="#FFFFFF">Status</FONT></TD>
<TD BGCOLOR="#0000AA" WIDTH="15%"><FONT COLOR="#FFFFFF">State</FONT></TD>
</TR><TR>
<% for(int i = 0; i < results.length; i++) { %>
<TR>
<TD><INPUT TYPE="SUBMIT" NAME="bugId" VALUE="<%= results[i].getBugId() %>" /></TD>
<TD><%= results[i].getBugId() %></TD>
<TD><%= results[i].getTitle() %></TD>
<TD><%= results[i].getStatus() %></TD>
<TD><%= results[i].getState() %></TD>
</TR>
<% } %>
</TABLE>
</FORM>
</BODY>
</HTML>
