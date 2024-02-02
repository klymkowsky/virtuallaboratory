<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<%@ taglib uri="/WEB-INF/tlds/vgTaglib.xml" prefix="vg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>morgan 2 javaGenetics</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<vg:mendelLesson name="morgan2" mask="flowerColor,pollenShape" maxGenerations="2">
<vg:parental name="longPollenRedFlower" genotype="lg/lg" />
<vg:parental name="roundPollenPurpleFlower" genotype="pr/pr" />
Mike, put some instructions in here.
</vg:mendelLesson> 
</BODY>
</HTML>
