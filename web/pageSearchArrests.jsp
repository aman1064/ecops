<%@ page language="java"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<p align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#000000">Arrest
  Information</font></p></b>
<form name="form1" method="post" action="/ecops/searchArrests.jsp">
  <input type="radio" name="opt" value="name" checked> Name<br>
  <input type="radio" name="opt" value="date_arrest"> Date Of Arrest<br>
  <input type="radio" name="opt" value="place_arrest"> Place of Arrest<br>
  <input type="radio" name="opt" value="crime_id"> Crime ID<br>
  <input type="radio" name="opt" value="station_id"> Station Id<br><br>
  Enter Value <input type=text name="Value"><br><br>

  <input type=submit Value="Search Information">
</form>
<p>&nbsp;</p>
<p>&nbsp; </p>
</body>
</html>