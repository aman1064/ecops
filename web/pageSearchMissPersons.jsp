<%@ page language="java"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<p align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#000000">Missing Persons
  Information</font></p></b>
<form name="form1" method="post" action="/ecops/searchMissPersons.jsp">
  <input type="radio" name="opt" value="name" checked> Name<br>
  <input type="radio" name="opt" value="gender"> Gender<br>
  <input type="radio" name="opt" value="station_id"> Station ID<br><br>
  Enter Value <input type=text name="Value"><br><br>

  <input type=submit Value="Search Information">
</form>
<p>&nbsp;</p>
<p>&nbsp; </p>
</body>
</html>