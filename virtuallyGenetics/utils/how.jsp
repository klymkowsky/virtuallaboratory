<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<HTML>  
<HEAD>
  <TITLE>How am I doing?</TITLE>
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
<style><!--
			font { font-family: arial, helvetica, sans-serif }
			h1 { color: #0000FF; font-style: italic; font-size: 18pt; font-family: arial, helvetica, sans-serif }
			h2 { color: #0066FF; font-size: 14pt; font-family: arial, helvetica, sans-serif }
			ol { font-size: 11pt; font-family: arial, helvetica, sans-serif }
			p { font-size: 11pt; font-family: arial, helvetica, sans-serif }
			td { font-size: 11pt; font-family: arial, helvetica, sans-serif }
			ul { font-size: 11pt; font-family: arial, helvetica, sans-serif }-->
		</style>
<style type="text/css">
   <!--
   a:link {  color: #0000FF; text-decoration: none}
   a:visited {  color: #0000FF; text-decoration: none}
   a:active {  color: #FF0000; text-decoration: none}
   a:hover {  color: #00AA00; text-decoration: underline}
   -->
   </style>
</HEAD>
<% String series[] = {"Mendel", "Morgan", "Muller", "Monod"};
	int seriesLen[] = {9, 7, 8, 16};
	int imgWidth = 24, imgHeight = 24;
	int max = 16;
	if (userInfo.getUserlevel() == 2) {
		arahn.vg.UserBean []Users; %>
<BODY>
	<TABLE><TR><TD VALIGN="BOTTOM">Name</TD>
<% for(int i = 0; i < series.length; i++) { %>
		<TD COLSPAN="<%= seriesLen[i] %>" VALIGN="BOTTOM"><%= series[i] %></TD><TD>E<BR>X<BR>A<BR>M</TD>
	<% } %>
	<TD>Score</TD></TR>
	<%	Users = userInfo.getTheClass().getStudents();
		for(int studentNum = 0; studentNum < Users.length; studentNum++) {
			String bgColor = studentNum % 2 == 0 ? "#CCFFCC" : "#FFFFFF";
			int score = 0;
			arahn.vg.UserBean nextUser = Users[studentNum];%>
			<TR><TD BGCOLOR="<%= bgColor %>"><%= nextUser.getLastname() %>, <%= nextUser.getFirstname() %></TD>
			<% for(int i = 0; i < series.length; i++) { %>
				<% for(int o = 0; o < seriesLen[i]; o++) { %>
				<TD WIDTH="3" BGCOLOR="<%= nextUser.getTranscriptEntry(series[i] + (o+1)) != null ? "#0000FF" : "#BB6666" %>">&nbsp;</TD>
				<% } %>
				<TD BGCOLOR="<%= bgColor %>">
		     	<% arahn.vg.TranscriptBean entry = nextUser.getTranscriptEntry(series[i] + "Test");
		     	if (entry != null) { 
		     		 score += entry.getScore(); %><%=
		     		 entry.getScore() %>
		     	<% } %>
		     	</TD>
		     <% } %>
	     <TD BGCOLOR="<%= bgColor %>"><%= score %></TD></TR>
	     <% } %>
	   </TABLE>
			
			
<%	}
	else { %>
<BODY>
<H1>Course transcript for <%= userInfo.getFirstname() %> <%= userInfo.getLastname()
%></H1>
<%
	arahn.vg.ClassBean theClass = userInfo.getTheClass();
	if (theClass.isValid()) { %>
		<H2><%= theClass.getClassname() %>
		<% arahn.vg.SchoolBean theSchool = theClass.getTheSchool();
		if (theSchool.isValid()) {%>
			at <%= theSchool.getSchoolName() %>
		<% } %>
		</H2>
	<% } %>

<% 	int score = 0;
	boolean finishedSeries = false; %>
<TABLE WIDTH="<%= max * (imgWidth + 4) + 250 %>" BORDER="0" CELLSPACING="1" CELLPADDING="1">
<% for(int i = 0; i < series.length; i++) { %>
 <TR>
 	<TD BGCOLOR="#FFFFFF" VALIGN="MIDDLE" WIDTH="100"><FONT SIZE="+1"><%=
 		series[i] %>&nbsp;:</TD>
<%	for(int o = 0; o < max; o++) {
		if (o < seriesLen[i]) {
			finishedSeries = (userInfo.getTranscriptEntry(series[i] + (o+1)) != null);
			if (finishedSeries) { %>
	    <TD BGCOLOR="#FFFFFF" VALIGN="TOP"><A HREF="/SeriesI/<%= series[i] %>/<%= String.valueOf(o + 101).substring(1) %>.jsp"
	    	target="_top"><IMG
	      SRC="images/howAmI<%= o+1 %>on.gif" WIDTH="<%= imgWidth %>" HEIGHT="<%= imgHeight %>" ALIGN="BOTTOM" BORDER="0"
	      NATURALSIZEFLAG="3"></A></TD>
	      <% } else { %>
	    <TD BGCOLOR="#FFFFFF" VALIGN="TOP"><IMG 
	      SRC="images/howAmI<%= o+1 %>off.gif" WIDTH="<%= imgWidth %>" HEIGHT="<%= imgHeight %>" ALIGN="BOTTOM" BORDER="0"
	      NATURALSIZEFLAG="3"></TD>
	      <% }
	     } else {%>
	     <TD BGCOLOR="#FFFFFF">&nbsp;</TD>
    <% 	 }
     } %>
     <TD BGCOLOR="#FFFFFF" VALIGN="MIDDLE" WIDTH="150"><FONT SIZE="+1">Test&nbsp;<%
     	arahn.vg.TranscriptBean entry = userInfo.getTranscriptEntry(series[i] + "Test");
     	if (entry != null) { 
     		 score += entry.getScore(); %><%=
     		 entry.getScore() %>&nbsp;points<%
     		 if (finishedSeries) {
     		 	%>&nbsp;<FONT SIZE="-3"><a onMouseOver="status='Retake the Test for <%= series[i] %>'; return true"
   onMouseOut="status=''; return true"
   onClick="openWindow('/SeriesI/<%= series[i] %>/test.jsp', 400, 400); return false"
   href="/SeriesI/<%= series[i] %>/test.jsp">retake</A></FONT><%
     		 }
     	} else {
     		%><FONT COLOR="#660000">No&nbsp;Score</FONT><%
     		 if (finishedSeries) {
     		 	%>&nbsp;<FONT SIZE="-3"><a onMouseOver="status='Take the Test for <%= series[i] %>'; return true"
   onMouseOut="status=''; return true"
   onClick="openWindow('/SeriesI/<%= series[i] %>/test.jsp', 400, 400); return false"
   href="/SeriesI/<%= series[i] %>/test.jsp">Take&nbsp;it!</A></FONT><%
     		 }
     	} %></TD>
  </TR>
 <% } %>
</TABLE><BR>
<TABLE WIDTH="<%= max * 31 + 250 %>" BORDER="0" CELLSPACING="0" CELLPADDING="2">
<TR><TD BGCOLOR="#FFFFFF" VALIGN="TOP" ALIGN="RIGHT"><FONT
	SIZE="+1">Total&nbsp;:&nbsp;<%= score %>&nbsp;points</TD></TR></TABLE>
<BR>
<FONT SIZE="-2">Note: If you take or retake a test, click on "How Am I Doing" again to see the updated transcript.</FONT>
<A HREF="<%= userInfo.getLastURL() %>" target="_top">Click here to return</A>
<% } %>
</BODY>
</HTML>
