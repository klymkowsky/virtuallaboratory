<?php require_once('../../../../CLUE/StudentMaterials/chapter-1/Connections/beSocratic.php'); ?><?php session_start(); ?><?phpif (!function_exists("GetSQLValueString")) {function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") {  if (PHP_VERSION < 6) {    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;  }  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);  switch ($theType) {    case "text":      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";      break;        case "long":    case "int":      $theValue = ($theValue != "") ? intval($theValue) : "NULL";      break;    case "double":      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";      break;    case "date":      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";      break;    case "defined":      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;      break;  }  return $theValue;}}$editFormAction = $_SERVER['PHP_SELF'];if (isset($_SERVER['QUERY_STRING'])) {  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);}if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {  $insertSQL = sprintf("INSERT INTO responses (answerText, questionText, tutorialName, session_id) VALUES (%s, %s, %s, %s)",                       GetSQLValueString($_POST['answerText1'], "text"),                       GetSQLValueString($_POST['questionText1'], "text"),					   GetSQLValueString($_POST['tutorialName'], "text"),					   GetSQLValueString(session_id(), "text"));					     mysql_select_db($database_beSocratic, $beSocratic);  $Result1 = mysql_query($insertSQL, $beSocratic) or die(mysql_error());    if (!isset($_COOKIE["PHPSESSID"])) {	  $_SERVER['QUERY_STRING'] = htmlspecialchars(session_name()."=".session_id());  } else {	  $_SERVER['QUERY_STRING'] = "";  }  $insertGoTo = "tutorial4.php";  if (isset($_SERVER['QUERY_STRING'])) {    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";    $insertGoTo .= $_SERVER['QUERY_STRING'];  }  header(sprintf("Location: %s", $insertGoTo));}?><!doctype html public "-//w3c//dtd html 4.0 transitional//en"><html><head>   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   <meta name="Content-Type" content="text/html; charset=iso-8859-1">   <meta name="description" content="BeSocratic (be socratic) tutorials in the sciences">   <meta name="keywords" content="Klymkowsky, Boulder, BeSocratic, be socratic, molecular biology, evolutionary biology, chemistry & physics">   <meta name="GENERATOR" content="Mozilla/4.75 (Macintosh; U; PPC) [Netscape]">   <meta name="KeyWords" content="Klymkowsky, BeSocratic, Teaching and learning science">   <title>BeSocratic - Graphical Thinking</title>   <script src="../../../../CLUE/StudentMaterials/chapter-1/storage/Scripts/AC_RunActiveContent.js" type="text/javascript"></script>   <script src="../../../../CLUE/StudentMaterials/chapter-1/Scripts/swfobject_modified.js" type="text/javascript"></script><meta name="keywords" content="Mendel and Muller, mutations and phenotypes"><style type="text/css"><!--.arial {	font-family: Arial, Helvetica, sans-serif, Optima;}.arial {	font-family: Arial, Helvetica, sans-serif;}--></style></head><style type="text/css"><!--.unnamed1 {  background-color: #FFFFFF}--></style><style type="text/css">   <!--   a:link {  text-decoration: none}   a:visited {  text-decoration: none}   a:active {  text-decoration: none}   a:hover {  text-decoration: bold}.optima {	font-family: Optima Regular;}.red {	color: #F00;}.grey {	color: #B3B3B3;}.style1 {font-family: Optima}   -->   </style><body text="#000000" bgcolor="#FCFDFF" alink="#FF4908"><table width="600" border="0" cellpadding="0" cellspacing="0">    <tr>     <td>       <hr size="1">    </td>  </tr></table><tr><td width="73%">&nbsp;</td></tr><table width="660" border="0" cellpadding="0" cellspacing="0">    <tr>        <td width="566"><p class="arial"><font face="Arial, Helvetica, sans-serif"><strong>CLUE Chapter 1.3 </strong></font></p>          <p class="style10">There is a second reaction            between hydrogen and oxygen that produces hydrogen peroxide            (H<sub>2</sub>O<sub>2</sub>) rather than water. &nbsp;<br />          </p>          <p class="style10">Draw this reaction using the interactive graphing field</p></td>        <td width="10"><p>&nbsp;</p>                <p>&nbsp;</p></td>        <td width="85"><div align="right"> <a href="../../../../CLUE/StudentMaterials/FreeDraw Folder/FreeDrawTestPage.html" target="_blank"><img src="../../../../CLUE/StudentMaterials/images/draw-graph icon.jpg" width="80" height="61" alt="data"></a><br>        </div></td>    </tr></table><table width="600" border="0" cellpadding="0" cellspacing="0">    <tr>   <table width="660" border="0" cellspacing="0" cellpadding="0">    <tr>        <td><hr size="1" noshade></td>    </tr></table>  </tr></table><form method="post" name="form1" action="<?php echo $editFormAction; ?>">  <table width="720" border="0" align="left" cellpadding="0" cellspacing="0">    <tr>        <td><font face="Arial, Helvetica, sans-serif" class="optima">As                    you answer these questions, remember, there is rarely a single                    correct answer.</font>            <hr size="1" noshade></td>    </tr>    <tr>      <td class="arial">Q:                    How does the hydrogen + oxygen to water reaction differ from      the hydrogen + oxygen to hydrogen peroxide reaction? <strong>&nbsp;&nbsp; </strong></td>    </tr>    <tr valign="baseline">      <td><textarea name="answerText1" cols="90" rows="8"></textarea></td>    </tr>        <tr align="right" valign="baseline">      <td><input type="submit" value="submit/next"></td>    </tr>  </table>  <input type="hidden" name="questionText1" value="How does the hydrogen + oxygen to water reaction differ from the hydrogen + oxygen to hydrogen peroxide reaction? ">  <input type="hidden" name="tutorialName" value="CLUE Chapter 1.3">  <input type="hidden" name="MM_insert" value="form1"></form><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><table width="660" border="0" cellspacing="0" cellpadding="0"><tr>        <td><hr size="1" noshade></td>    </tr></table><span class="grey">&copy;&nbsp;quixotic partners</span></body></html>