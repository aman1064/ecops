<%@ page language="java"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#CCCCFF" text="#000000">
<p align="center"><font size="6" face="Verdana, Arial, Helvetica, sans-serif">User
  Information</font></p>
<form name="form1" method="post" action="/ecops/delUser.jsp">
  <table width="58%">
    <tr>
      <td width="40%">User Id &nbsp;&nbsp;</td>
      <td width="60%">
        <input type="text" name="user_id"><font color="RED"> *</font>
      </td>
    </tr>
    <tr>
      <td width="40%">Password </td>
      <td width="60%">
        <input type="password" name="password"><font color="RED"> *</font>
      </td>
    </tr>
    <tr>
      <td width="40%">&nbsp; </td>
      <td width="60%">&nbsp; </td>
    </tr>
    <tr>
      <td width="40%">
        <input type="submit" name="Submit" value="Delete User">
      </td>
      <td width="60%">
        <input type="reset" name="Submit2" value="Clear Information">
      </td>
    </tr>
  </table>
  </form>
<b><i>  Fields marked by <font color="RED">* </font> are Mandatory.</i></b>
</body>
</html>