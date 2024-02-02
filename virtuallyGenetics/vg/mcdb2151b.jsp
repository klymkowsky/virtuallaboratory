<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<% 
	final String ans[] = {"mcdb2151a1","mcdb2151a2","mcdb2151a3","mcdb2151a4"};
	int ct = 0;
	userInfo.save(new arahn.vg.DrosophilaMelanogaster("se/se,th/th,cu/cu,cX/cX"), ans[ct++]);
	userInfo.save(new arahn.vg.DrosophilaMelanogaster("se/se,th/th,cu/cu,cX/cY"), ans[ct++]);
	userInfo.save(new arahn.vg.DrosophilaMelanogaster("cX/cX"), ans[ct++]);
	userInfo.save(new arahn.vg.DrosophilaMelanogaster("cY/cX"), ans[ct++]);
	userInfo.setLesson(new arahn.vg.MorganLesson() {
		public String getName() { return "Two-point crosses on the X chromosome"; }
		public String getHelpText() { 
			return 
				"Show P1 and F1. Collect F1 females and test cross (back cross) with males that are recessive for both genes. (Note that the heterozygotes must be female since in flies there is X-over only in females)";
		}
		public String getMask() { return "Sex,wingVeins,eyeColor,wingShape"; }
		public String []createStocks() {
			return ans;
		} 
		public int	getMaxGenerations() { return 2; }
} ); %>
<% userInfo.addTranscriptEntry("Lesson6", 0, userInfo.getLesson().getName()); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE><%= userInfo.getLesson().getName() %></TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
 codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"
 WIDTH=600 HEIGHT=440>
 <PARAM NAME=movie VALUE="virtuallyGenetics.swf"> <PARAM NAME=quality VALUE=high> <PARAM NAME=bgcolor VALUE=#FFFFFF> <EMBED src="virtuallyGenetics.swf" quality=high bgcolor=#FFFFFF  WIDTH=600 HEIGHT=440 TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED>
</OBJECT>
</BODY>
</HTML>
