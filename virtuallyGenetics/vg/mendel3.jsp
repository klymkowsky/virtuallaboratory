<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<%@ taglib uri="/WEB-INF/tlds/vgTaglib.xml" prefix="vg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>Mendel 3</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<vg:mendelLesson name="mendel3" mask="plantSize,flowerColor" maxGenerations="3"> 
<vg:parental name="tallWhitePea" genotype="Le/Le,a/a" /> <vg:parental name="shortPurplePea" genotype="le/le,A,A" /> 
To determine whether F2 individuals that display the dominant phenotype are all 
the same we do a test-cross. Select an F2 individual with a dominant phenotype 
and cross-it to the parent that displays the recessive trait. You will need to 
test a number of individuals to determine whether all F2s produce the same types 
of offspring. </vg:mendelLesson> 
</BODY>
</HTML>
