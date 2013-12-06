<%@ page language="java" %>
<%@ page import="java.sql.*"%>


<html>
	<head>
		<title>Accident Data Entry</title>
	</head>


	<body>
	<%
		Connection con=null;
		Statement state=null;
		ResultSet result=null;

		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            con=DriverManager.getConnection("Jdbc:Odbc:ecops");
			state=con.createStatement();

		   	String ACCIDENT_NUMBER=request.getParameter("ACCIDENT_NUMBER");
		    String INCIDENT_NUMBER=request.getParameter("INCIDENT_NUMBER");
			String DATE=request.getParameter("DATE");
			String TIME=request.getParameter("TIME");
			String REPORTING_OFFICER_ID=request.getParameter("REPORTING_OFFICER_ID");
			String AGENCY=request.getParameter("AGENCY");
			String LOCATION=request.getParameter("LOCATION");
			String ADDRESS=request.getParameter("ADDRESS");
			String ZIP_CODE=request.getParameter("ZIP_CODE");
			String STATION_ID=request.getParameter("STATION_ID");
			String CRIME_ID=request.getParameter("CRIME_ID");
			String NUMBER_OF_INJURED=request.getParameter("NUMBER_OF_INJURED");
			String NUMBER_OF_FATAL=request.getParameter("NUMBER_OF_FATAL");
			if((ACCIDENT_NUMBER.length()==0) || (INCIDENT_NUMBER.length()==0) || (DATE.length()==0) || (REPORTING_OFFICER_ID.length()==0) || (STATION_ID.length()==0) || (CRIME_ID.length()==0))
            {

            %>
             <html>
             <title>Failed</title>
             <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
             <meta http-equiv="refresh" content="0;URL=/ecops/pageAccidents.jsp">
             </head>
             <body>
           <%
             }

            else
             {
		     	String str="INSERT INTO accidents VALUES('"+ACCIDENT_NUMBER+"','"+INCIDENT_NUMBER+"','"+DATE+"','"+TIME+"','"+REPORTING_OFFICER_ID+"','"+AGENCY+"','"+LOCATION+"','"+ADDRESS+"','"+ZIP_CODE+"','"+STATION_ID+"','"+CRIME_ID+"','"+NUMBER_OF_INJURED+"','"+NUMBER_OF_FATAL+"')";

		     	int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageAccidents.jsp">
</head>

<body bgcolor="#CCCCFF" text="#000000">
<p><font size="4">The Information has been added successfully.</font></p>
<p>&nbsp; </p>
</body>
</html>

<%
             }
		}
		catch(Exception e)
		{
			out.println(e);
		}
		finally
		 {
		     con.close();
         }
%>
	</body>
</html>