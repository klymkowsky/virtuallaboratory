<%@ page language="java" contentType="text/plain"
%><jsp:useBean id="userInfo" class="arahn.vg.UserBean" scope="session"
/><% if (userInfo.isValid()) {
	for(java.util.Enumeration e = request.getParameterNames(); e.hasMoreElements(); ) {
		String name = e.nextElement().toString();
		if (name.startsWith("dbStor_")) {
			userInfo.setVariable(name, request.getParameter(name));
		}
	}
} %>
