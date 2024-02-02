<%@ page language="java" contentType="text/plain"
%><jsp:useBean id="userInfo" class="arahn.vg.UserBean" scope="session"
/><% if (userInfo.isValid()) {
	%><%= new arahn.util.SimpleFlashVariable("user_first_name",  userInfo.getFirstname()) %>&<%
	%><%= new arahn.util.SimpleFlashVariable("user_last_name",  userInfo.getLastname()) %><%
	for(java.util.Enumeration e = userInfo.getVariableNames(); e.hasMoreElements(); ) {
		String name = e.nextElement().toString();
		String value = userInfo.getVariable(name);
		%>&<%= new arahn.util.SimpleFlashVariable(name, value) %><%
	}
} 
else { %>user_first_name=mystery&user_last_name=guest<% } %>
