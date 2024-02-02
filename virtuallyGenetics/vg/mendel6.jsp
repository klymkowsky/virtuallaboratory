<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<%@ taglib uri="/WEB-INF/tlds/vgTaglib.xml" prefix="vg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>Mendel 6</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<vg:mendelLesson name="mendel6" mask="podShape,twistedPod" maxGenerations="2"> <vg:parental name="twistedPod" genotype="v/v,tw/tw" /> 
<vg:parental name="bumpyPod" genotype="v/v,Tw/Tw" /> <vg:parental name="wtPea" genotype="V/V,Tw/Tw" /> 
You find that when crossed to itself, the helical pod shape breeds true. Determine 
how helical pod factor interacts with smooth and crinkled pod factors. What do 
the F1 plants look like? What are the phenotypic ratios of the F2? Does helical 
pod shape behave in a simple Mendelian manner?
<vg:tutorial>
    <SAY>If you need help using javaGenetics, please visit lesson 1.</SAY>
</vg:tutorial>
</vg:mendelLesson> 
</BODY>
</HTML>
