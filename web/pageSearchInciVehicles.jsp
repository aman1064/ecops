<%@ page language="java"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<p align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#000000">Incident Vehicles
  Information</font></p></b>
<form name="form1" method="post" action="/ecops/searchInciVehicles.jsp">
  <input type="radio" name="opt" value="reg_owner" checked> Registration Owner<br>
  <input type="radio" name="opt" value="state"> State<br>
  <input type="radio" name="opt" value="year"> Year<br>
  <input type="radio" name="opt" value="make"> Make<br>
  <input type="radio" name="opt" value="model"> Model<br><br>
  Enter Value <input type=text name="Value"><br><br>

  <input type=submit Value="Search Information">
</form>
<p>&nbsp;</p>
<p>&nbsp; </p>
</body>
</html>