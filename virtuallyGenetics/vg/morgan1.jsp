<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<%@ taglib uri="/WEB-INF/tlds/vgTaglib.xml" prefix="vg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>morgan 1 javaGenetics</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<vg:mendelLesson name="morgan1" mask="flowerColor,pollenShape" maxGenerations="2">
<vg:parental name="roundRedPollen" genotype="pr/pr,lg/lg" />
<vg:parental name="wtPea" genotype="" />

Repeat 
the experiments of Bateson and Punnett using sweet pea plants with red flowers 
and round pollen and purple flowers and elongated pollen. Determine which traits 
are dominant and how the traits segregate in the F2. Does segregation fit the 
Mendelian prediction for a dihybrid cross?</vg:mendelLesson> 
</BODY>
</HTML>
