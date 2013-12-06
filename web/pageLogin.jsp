<%@ page language="java"%>
<html>
<head>
<title>Ploice Information System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFF99" text="#000000">
<h2><b><font face="Courier New, Courier, mono" size="6" color="#0000FF">
  <p align=center><font face="Georgia, Times New Roman, Times, serif">Police Information
    System</font>
  </font></b></h2>
<form name="form1" method="post" action="/ecops/respLogin.jsp" target="_blank">
  <p align=center><font color="#9933CC">User ID : </font> <font color="#FF33CC">
<input type="text" name="user_id"></font> </p>
  <p align=center><font color="#9933CC">Password :</font><font color="#9999FF">
    </font>
    <input type="password" name="password">
  </p>
  <p align="center">
    <input type="submit" name="Submit" value="Login">
  </p>
</form>
<form method="post" action="/ecops/regUser.jsp">
  <p align=center><font color="#9933CC">User ID : </font> <font color="#FF33CC">
<input type="text" name="user_id"></font> </p>
  <p align=center><font color="#9933CC">Password :</font><font color="#9999FF">
    </font>
    <input type="password" name="password">
  </p>
  <p align="center">
    <input type="submit" name="Submit" value="Login">
  </p>

</form>
<h2>&nbsp;</h2>
<p>&nbsp;</p>
<p>&nbsp; </p>
</body>
</html>