<%@ page language="java" contentType="text/html" %>
<jsp:useBean id="theBug" class="arahn.vg.bugBase.BugBaseEntry" scope="page" />
<jsp:setProperty name="theBug" property="*" />
<% if (theBug.save()) { %>
<META HTTP-EQUIV="Refresh" CONTENT="2; URL=bugbase.jsp">
<HTML><HEAD><TITLE>Bug <%=theBug.getTitle() %> Saved</TITLE></HEAD>
<BODY>
<BR><BR><BR><BR><BR><BR><BR><BR><BR>
<CENTER><H1>Bug "<%=theBug.getTitle() %>" Saved</H1></CENTER>
</BODY>
</HTML>
<% } else { %>
<HTML><HEAD><TITLE>Bug NOT Saved</TITLE></HEAD>
<BODY>
<BR><BR><BR><BR><BR><BR><BR><BR><BR>
<CENTER><H1>Bug <%=theBug.getTitle() %> NOT Saved</H1></CENTER>
<%= theBug.getErrorMsg() %>
</BODY>
</HTML>
<% } %>