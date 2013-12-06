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

            String STATION_ID=request.getParameter("STATION_ID");
		    String STATE=request.getParameter("STATE");
			String DISTRICT=request.getParameter("DISTRICT");
			String LOCATION=request.getParameter("LOCATION");
			String PHONE_NUMBER_1=request.getParameter("PHONE_NUMBER_1");
			String PHONE_NUMBER_2=request.getParameter("PHONE_NUMBER_2");

			if((STATION_ID.length()==0))
			 {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageStations.jsp">
                 </head>
                 <body>
<%
			 }
			else
             {
         		String str="INSERT INTO stations VALUES('"+STATION_ID+"','"+STATE+"','"+DISTRICT+"','"+LOCATION+"','"+PHONE_NUMBER_1+"','"+PHONE_NUMBER_2+"')";
        		int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageStations.jsp">
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