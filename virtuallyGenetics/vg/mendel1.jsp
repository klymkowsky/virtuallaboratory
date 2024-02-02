<%@ page language="java" contentType="text/html" %>
<%@ include file="/securityNoLog.jsp" %>
<%@ taglib uri="/WEB-INF/tlds/vgTaglib.xml" prefix="vg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>Mendel 1</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<vg:mendelLesson name="mendel1" mask="plantSize,flowerColor" maxGenerations="1"> 
<vg:parental name="tallWhitePea" genotype="Le/Le,a/a" /> <vg:parental name="shortPurplePea" genotype="le/le,A/A" />Repeat 
the experiments of Joseph Kolreuter using garden peas. We have in our garden two 
true-breeding strains -- one grows tall and produces white flowers and the other 
is short and produces purple flowers. Determine whether the traits of the off-spring 
(F1) depend upon which plant supplies the pollen and which the egg. <vg:tutorial>
    <SAY>Crosses are done using the javaGenetics&#153; Engine.  This tutorial will show you how to use it.</SAY>
    <SELECT GENERATION="1" ORG="2">As you move your mouse over an organism, its phenotype appears in the bottom blue bar.  If you click on the plant with the purple flowers, it will become the male parent.
    </SELECT>
    <SELECT GENERATION="1" ORG="1">To select the female parent, click on the plant with white flowers.
    </SELECT>
    <SELECT TARGET="mate_button">The red box will move to the male; You could click on different plant to change the male parent. However, we don't need to for this experiment, so click the X to mate the two organims.
    </SELECT>
    <SAY>The F1 generation appears in a new row.  <FONT SIZE="-2" COLOR="#333333">To change your choice of P, click on the blue arrow and repeat the last steps.</FONT>  Click below to continue.</SAY>
    <SAY>In future exercises you will be able to create an F2 generation by picking a male and female from the F1. Click below to continue.</SAY>
    <SELECT TARGET="instructions">You have in front of you the answer to the question being asked in this experiment.  To read about the purpose of the experiment, click on Instructions.</SELECT>
    <SAY>This is the end of the tutorial.  Remember, a tutorial will always be available if you need help using the javaGenetics&#153; Engine.</SAY>
</vg:tutorial>
</vg:mendelLesson> 
</BODY>
</HTML>
