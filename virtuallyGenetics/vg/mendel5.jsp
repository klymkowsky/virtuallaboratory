<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<%@ taglib uri="/WEB-INF/tlds/vgTaglib.xml" prefix="vg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>Mendel 5</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<vg:mendelLesson name="mendel5" mask="plantSize,flowerPosition,flowerColor,peaColor, peaShape,podShape,podColor" maxGenerations="3"> 
<vg:parental name="TallWhiteTerminalCrinklyYellowPodSmoothGreen" genotype="Le/Le,a/a,f/f,v/v,gp/gp,S/S,i/i" /> 
<vg:parental name="ShortPurpleAxialSmoothGreenBumpyYellow" genotype="le/le,A/A,F/F,V/V,Gp/Gp,s/s,I/I" /> 
Remember, you can follow up to three of the seven traits at any one time. Otherwise 
it is just too confusing. Previously your found that in a monohybrid cross, crossing 
two F1 plants leads to an F2 in which the traits appear in the ratio of 3:1. In 
a similar dihybrid cross, we expect that traits to appear in the F2 as 9:3:3:1. 
</vg:mendelLesson>
</BODY>
</HTML>
