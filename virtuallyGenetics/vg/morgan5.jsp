<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<%@ taglib uri="/WEB-INF/tlds/vgTaglib.xml" prefix="vg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>morgan 5 javaGenetics</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<vg:mendelLesson name="morgan5" mask="plantSize,flowerColor" maxGenerations="1"> 
<vg:parental name="RedElongatedPea" genotype="Le/Le,a/a" /> <vg:parental name="PurpleRoundPea" genotype="le/le,A/A" />this 
applet will let you map genes along the drosophila X-chromosome.</vg:mendelLesson> 
</BODY>
</HTML>