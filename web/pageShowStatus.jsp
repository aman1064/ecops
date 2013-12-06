<%@ page language="java"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#CCCCFF" text="#000000">


  <p align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="6">Show Status</font></p>
  <form name="form1" method="post" action="/ecops/showStatus.jsp">
  <table width="62%">
    <tr>
      <td width="45%">
        <input type="radio" name="opt" value="status" checked>
        Status </td>
      <td width="55%">
        <input type="text" name="valStatus">
      </td>
    </tr>
    <tr>
      <td width="45%">
        <input type="radio" name="opt" value="dba">
        Dba Users </td>
      <td width="55%">&nbsp;</td>
    </tr>
    <tr>
      <td width="45%">
        <input type="radio" name="opt" value="showAll">Show All Users
      </td>
      <td width="55%">&nbsp; </td>
    </tr>
    <tr>
      <td width="45%">&nbsp;</td>
      <td width="55%">
        <input type="submit" name="Submit" value="show Information">
      </td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p> &nbsp;&nbsp;&nbsp;&nbsp; <br>
    <br>
  </p>
  </form>
  </body>
</html>