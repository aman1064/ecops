<%@ page language="java" %>
<%@ page import="java.sql.*"%>


<html>
	<head>
		<title></title>
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

	        String MAKE=request.getParameter("MAKE");
			String MODEL=request.getParameter("MODEL");
			String VEHICLE_REGISTRATION=request.getParameter("VEHICLE_REGISTRATION");
			String STATION_ID=request.getParameter("STATION_ID");
	        String ENGINE_NUMBER=request.getParameter("ENGINE_NUMBER");
			String CHASIS_NUMBER=request.getParameter("CHASIS_NUMBER");
			String FIR_NUMBER=request.getParameter("FIR_NUMBER");
			String RECORD_TYPES=request.getParameter("RECORD_TYPES");
			String POST_RECOVERY_DETAILS=request.getParameter("POST_RECOVERY_DETAILS");
			String FULLY_RECOVERED=request.getParameter("FULLY_RECOVERED");
			if((MODEL.length()==0) || (CHASIS_NUMBER.length()==0) || (POST_RECOVERY_DETAILS.length()==0))
			 {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageMissVehicles.jsp">
                 </head>
                 <body>
<%
			 }
			else
             {
            	String str="INSERT INTO missing_vehicles VALUES('"+MAKE+"','"+MODEL+"','"+VEHICLE_REGISTRATION+"','"+ENGINE_NUMBER+"','"+CHASIS_NUMBER+"','"+STATION_ID+"','"+FIR_NUMBER+"','"+RECORD_TYPES+"','"+FULLY_RECOVERED+"','"+POST_RECOVERY_DETAILS+"')";
          		int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageMissVehicles.jsp">
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