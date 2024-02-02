<%@ page language="java" contentType="text/html" %>
<jsp:useBean id="userInfo" class="arahn.vg.UserBean" scope="session" />
<jsp:setProperty name="userInfo" property="*" />
<HTML>  
<HEAD>
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
<% try { if (userInfo.createUser()) { %>
  <TITLE>New Student Sign-In</TITLE>
</HEAD>
<BODY>
<H2><CENTER>VirtuallyGenetics&#153;</CENTER></H2>

<H2><CENTER>You have been enrolled.  Please <A HREF="/index.jsp">Log in</A> to begin.</CENTER></H2>
</BODY>
</HTML>
<% } else { %>
  <TITLE>New Student Sign-In</TITLE>
</HEAD>
<BODY>

<FORM ACTION="signUp.jsp" ENCTYPE="x-www-form-urlencoded"
METHOD="POST">
<H2><CENTER>VirtuallyGenetics&#153;</CENTER></H2>

<H2><CENTER>New Student Sign-In</CENTER></H2>

<P><CENTER><%= userInfo.getErrorMsg() %></CENTER></P>

<P><B>Step 1:</B> What is your name?</P>

<BLOCKQUOTE>
  <P>First : <INPUT NAME="firstname" TYPE="text" SIZE="20" MAXLENGTH="50" VALUE="<%= userInfo.getFirstname() %>"></P>
  <P>Last : <INPUT NAME="lastname" TYPE="text" SIZE="20" MAXLENGTH="50" VALUE="<%= userInfo.getLastname() %>"></P></BLOCKQUOTE>

<P><B>Step 2:</B> What is your email address? Remember exactly
how you type this because it is how you will log on.</P>

<BLOCKQUOTE>
  <P>email : <INPUT NAME="email" TYPE="text" SIZE="30" MAXLENGTH="100" VALUE="<%= userInfo.getEmail() %>"></P></BLOCKQUOTE>

<P><B>Step 3:</B> Pick a password.</P>

<BLOCKQUOTE>
  <P>password : <INPUT NAME="password1" TYPE="password" SIZE="8"
  MAXLENGTH="20"></P>
  <P>password (again) : <INPUT NAME="password2" TYPE="password"
  SIZE="8" MAXLENGTH="20"></P></BLOCKQUOTE>

<P><B>Step 4:</B> What is the class ID Number (<FONT SIZE="-1"><A
HREF="/help.html">What is this?</A></FONT>)?</P>

<BLOCKQUOTE>
  <P>class ID : <INPUT NAME="classid" TYPE="text" SIZE="10" 
  MAXLENGTH="20" VALUE="<%= userInfo.getClassid() %>"></P></BLOCKQUOTE>

<P><CENTER><INPUT NAME="name" TYPE="submit" VALUE="Sign Up"></CENTER></P>

<P>&nbsp;</P>

<P>&nbsp;
</FORM>

</BODY>
</HTML>
<% } } catch (Exception e) { %><HTML><HEAD><TITLE>Error</TITLE></HEAD><BODY>
There was an error processing your request.</BODY></HTML><% } %>
