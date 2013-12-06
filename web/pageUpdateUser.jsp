<%@page language="java"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#CCCCFF" text="#000000">
<p align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="6">User
  Updation </font></p>
<form name="form1" method="post" action="updateUser.jsp">
  <table width="50%">
    <tr>
      <td>User Id :</td>
      <td>
        <input type="text" name="user_id"><font color="RED"> *</font>
      </td>
    </tr>
    <tr>
      <td>Password :</td>
      <td>
        <input type="password" name="password"><font color="RED"> *</font>
      </td>
    </tr>


  </table>
   <br> <input type="submit" name="Submit" value="Update User Information">
</form>
<b><i>Fields Marked by<font color="RED"> *</font> are Mandatory.</b></i>
</body>
</html>