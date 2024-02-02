<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<%@ taglib uri="/WEB-INF/tlds/vgTaglib.xml" prefix="vg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>Mendel 4</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<vg:mendelLesson name="mendel4" mask="plantSize,flowerColor" maxGenerations="2">
<vg:parental name="tallWhitePea" genotype="Le/Le,a/a" />
<vg:parental name="shortPurplePea" genotype="le/le,A,A" />
We can ask a similar question of the F1 generation, namely do all of the plants behave the same when crossed 
to a recessive parent.   
</vg:mendelLesson>
</BODY>
</HTML>
