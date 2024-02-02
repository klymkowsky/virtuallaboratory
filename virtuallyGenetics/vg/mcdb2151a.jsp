<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<% 
	final String ans[] = {"mcdb2151a1","mcdb2151a2","mcdb2151a3","mcdb2151a4"};
	int ct = 0;
	userInfo.save(new arahn.vg.DrosophilaMelanogaster("y/y,w/w,ct/ct,cX/cX"), ans[ct++]);
	userInfo.save(new arahn.vg.DrosophilaMelanogaster("y/y,w/w,ct/ct,cX/cY"), ans[ct++]);
	userInfo.save(new arahn.vg.DrosophilaMelanogaster("cX/cX"), ans[ct++]);
	userInfo.save(new arahn.vg.DrosophilaMelanogaster("cY/cX"), ans[ct++]);
	userInfo.setLesson(new arahn.vg.MorganLesson() {
		public String getName() { return "Two-point crosses on the X chromosome"; }
		public String getHelpText() { 
			return 
				"Show P1, F1 and F2 generations. Note that in this special  case of X" +
				"linked genes you can do a simple cross of F1's if you count males only." +
				"\n\n" +
				"Count and categorize all flies into the two parental phenotypes (P's) and the" +
				"recombinants over recessives. Calculate the RF as # of two recombinants/total" +
				"X 100 to get per cent recombination." +
				"\n\n" +
				"Do two of these between each pair of three genes on the same chromosome. Then use" +
				"the pairwise distances to line up the loci and make a map. Note that the" +
				"direction is arbitrary.";
		}
		public String getMask() { return "Sex,bodyColor,eyeColor,wingShape"; }
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
