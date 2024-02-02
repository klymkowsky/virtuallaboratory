<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<%@ taglib uri="/WEB-INF/tlds/vgTaglib.xml" prefix="vg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>Mendel 2</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<vg:mendelLesson name="mendel2" mask="podShape,podColor,flowerArrangment,flowerColor" maxGenerations="2"> 
<vg:parental name="mendel2_A" genotype="v/v,gp/gp,a/a,f/f" />
<vg:parental name="mendel2_B" genotype="" /> 
It appears that some of the parental traits disappear in the F1. Have they really 
vanished or are they present in some latent form? An obvious approach is to determine 
whether the F1 organisms breed true. Cross two F1s (or do a F1 self-cross) and 
examine the F2s. Do they all have the same phenotype?</vg:mendelLesson> 
</BODY>
</HTML>
