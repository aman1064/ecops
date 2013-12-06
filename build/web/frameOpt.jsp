<%@page language="java"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#CCCCFF" text="#000000" background="/ecops/BG.JPG">
<font face="vardana" size="1">
<p>
    Accidents <a href="/ecops/pageAccidents.jsp" target="mainFrame">Insert</a> <a href="/ecops/pageSearchAccidents.jsp" target="mainFrame"> Search</a><br>
    Arrests <a href="/ecops/pageArrests.jsp" target="mainFrame">Insert </a><a href="/ecops/pageSearchArrests.jsp" target="mainFrame"> Search</a><br>
    Cases <a href="/ecops/pageCases.jsp" target="mainFrame">Insert</a> <a href="/ecops/pageSearchCases.jsp" target="mainFrame"> Search</a><br>
    Cells <a href="/ecops/pageCells.jsp" target="mainFrame">Insert</a> <a href="/ecops/pageSearchCells.jsp" target="mainFrame"> Search</a><br>
    Crime Classes <a href="/ecops/pageCrimeClasses.jsp" target="mainFrame">Insert</a> <a href="/ecops/pageSearchCrimeClasses.jsp" target="mainFrame"> Search</a><br>
    Evidences <a href="/ecops/pageEvidences.jsp" target="mainFrame">Insert</a> <a href="/ecops/pageSearchEvidences.jsp" target="mainFrame"> Search</a><br>
	Incident Crime Solvability <a href="/ecops/pageInciCrimeSolv.jsp" target="mainFrame">Insert</a> <a href="/ecops/pageSearchInciCrimeSolv.jsp" target="mainFrame"> Search</a><br>
	Incident Modus Operandi <a href="/ecops/pageInciModOper.jsp" target="mainFrame">Insert <a href="/ecops/pageSearchInciModusOper.jsp" target="mainFrame"> Search</a></a><br>
	Incident Persons <a href="/ecops/pageInciPersons.jsp" target="mainFrame">Insert <a href="/ecops/pageSearchInciPersons.jsp" target="mainFrame"> Search</a></a><br>
 	Incident Vehicles <a href="/ecops/pageInciVehicles.jsp" target="mainFrame">Insert</a> <a href="/ecops/pageSearchInciVehicles.jsp" target="mainFrame"> Search</a><br>
	Jails <a href="/ecops/pageJails.jsp" target="mainFrame">Insert <a href="/ecops/pageSearchJails.jsp" target="mainFrame"> Search</a></a><br>
    Missing Persons <a href="/ecops/pageMissPersons.jsp" target="mainFrame">Insert <a href="/ecops/pageSearchMissPersons.jsp" target="mainFrame"> Search</a></a><br>
    Missing Vehicles <a href="/ecops/pageMissVehicles.jsp" target="mainFrame">Insert <a href="/ecops/pageSearchMissVehicles.jsp" target="mainFrame"> Search</a></a><br>
    Stations <a href="/ecops/pageStations.jsp" target="mainFrame">Insert</a><a href="/ecops/pageSearchStations.jsp" target="mainFrame"> Search</a><br>
<%
    String dba=null;
    dba=request.getParameter("dba");
    if(dba.equals("true"))
     {
%>
 <a href="/ecops/pageOpt.jsp" target="_top">Goto Option Page</a><br>
<%
     }
%>
     </p>

<p>&nbsp; </p>
</font>
</body>
</html>