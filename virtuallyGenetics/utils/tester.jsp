<html>
<head>
<title>virtuallyGenetics testdrive</title>
</head>
<body bgcolor=#ffffff text="#000000">

<center>
  <table width="600" border="0" cellpadding="0" align="left">
    <tr> 
      <td> 
        <table border=0 align="left">
          <tr> 
            <td width="50"><b><font face="Arial, Helvetica, sans-serif">e-mail:</font></b></td>
            <td width="532"> 
              <div align="left"> 
                <input name="Email" type="text" rows=1 size="60" onBlur="MM_validateForm('Email','','RisEmail');return document.MM_returnValue">
              </div>
            </td>
          </tr>
          <tr> 
            <td width="50"><b><font face="Arial, Helvetica, sans-serif">phone:</font></b></td>
            <td width="532"> 
              <input type="text" name="textfield">
              only if you prefer to be contacted by phone!</td>
          </tr>
          <tr> 
            <td width="50"><b><font face="Arial, Helvetica, sans-serif">I am a</font></b></td>
            <td width="532"> 
              <select name="Subject">
                <option>Teacher</option>
                <option>Student</option>
                <option>Administrator</option>
                <option>interested citizen</option>
                <option>none of your business</option>
              </select>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr> 
      <td> 
        <hr>
      </td>
    </tr>
    <tr>
      <td>
        <table border=5 width="660" align="left">
          <tr> 
            <td> 
              <textarea name="Message" rows=10 cols=100></textarea>
            </td>
          </tr>
          <tr> 
            <td> 
              <p><font face="Arial, Helvetica, sans-serif">I teach biology lab 
                courses </font> <font face="Arial, Helvetica, sans-serif"> 
                <input type="checkbox" name="teacher" value="yes">
                </font><b><font face="Arial, Helvetica, sans-serif"><br>
                </font></b><font face="Arial, Helvetica, sans-serif">I am interested 
                in authoring on-line lab courses: please contact me! 
                <input type="checkbox" name="possible author" value="yes">
                <b><br>
                </b> I am interested in further updates on virtuallyBiology 
                <input type="checkbox" name="keep me up to date2" value="yes">
                , virtuallyGenetics 
                <input type="checkbox" name="keep me up to date3" value="yes">
                , or virtuallyChemistry 
                <input type="checkbox" name="keep me up to date" value="yes">
                </font></p>
            </td>
          </tr>
          <tr> 
            <td>
              <div align="right"><font face="Verdana, Arial, Helvetica, sans-serif"> 
                <input type="Submit" value="Submit" name="Submit">
                <input type="Reset" name="Reset">
                </font></div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <form method=POST action="/cgi-bin/mailform">
    <p align="left">&nbsp; 
    <p>&nbsp; 
    <p align="left">
    <p align="left">
    <p align="left">
    <p align="left"> 
    <p>&nbsp;</p>
    
    <p> <font face="Verdana, Arial, Helvetica, sans-serif"> </font> 
  </form>
  <form method=POST action="/cgi-bin/mailform">
  </form>
</center>
</body>
</html>
