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
			String CRIME_ID=request.getParameter("CRIME_ID");
			String NAME=request.getParameter("NAME");
			String FATHERS_NAME=request.getParameter("FATHERS_NAME");
		    String ADDRESS=request.getParameter("ADDRESS");
			String DATE_OF_ARREST=request.getParameter("DATE_OF_ARREST");
			String PLACE_OF_ARREST=request.getParameter("PLACE_OF_ARREST");
			String RELATIVE_NAME=request.getParameter("RELATIVE_NAME");
			String RELATIVE_ADDRESS=request.getParameter("RELATIVE_ADDRESS");
			String RELATION=request.getParameter("RELATION");
			String FINGER_PRINT_NUMBER=request.getParameter("FINGER_PRINT_NUMBER");
		    String OTHER_IDENTIFICATIONS=request.getParameter("OTHER_IDENTIFICATIONS");
			if((STATION_ID.length()==0) || (CRIME_ID.length()==0) || (NAME.length()==0) || (DATE_OF_ARREST.length()==0))
			{

        %>
             <html>
             <title>Failed</title>
             <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
             <meta http-equiv="refresh" content="0;URL=/ecops/pageArrests.jsp">
             </head>
             <body>

        <%
            }
            else
             {
                String str="INSERT INTO arrests VALUES('"+STATION_ID+"','"+CRIME_ID+"','"+NAME+"','"+FATHERS_NAME+"','"+ADDRESS+"','"+DATE_OF_ARREST+"','"+PLACE_OF_ARREST+"','"+RELATIVE_NAME+"','"+RELATIVE_ADDRESS+"','"+RELATION+"','"+FINGER_PRINT_NUMBER+"','"+OTHER_IDENTIFICATIONS+"')";

		    	int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageArrests.jsp">
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