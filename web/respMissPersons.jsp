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

		   	String NAME=request.getParameter("NAME");
		    String GENDER=request.getParameter("GENDER");
			String IDENTIFICATION=request.getParameter("IDENTIFICATIONS");
			String STATION_ID=request.getParameter("STATION_ID");
			String COMPLAINT_ADDRESS=request.getParameter("COMPLAINT_ADDRESS");
			String PHONE_NUMBER=request.getParameter("PHONE_NUMBER");
			String STATUS=request.getParameter("STATUS");
			if((NAME.length()==0) || (GENDER.length()==0) || (IDENTIFICATION.length()==0) || (STATION_ID.length()==0))
			 {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageMissPersons.jsp">
                 </head>
                 <body>
<%
			 }
			else
             {
			   String str="INSERT INTO missing_persons VALUES('"+NAME+"','"+GENDER+"','"+IDENTIFICATION+"','"+STATION_ID+"','"+COMPLAINT_ADDRESS+"','"+PHONE_NUMBER+"','"+STATUS+"')";

			   int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageMissPersons.jsp">
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