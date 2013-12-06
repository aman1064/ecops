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

		   	String INCIDENT_NUMBER=request.getParameter("INCIDENT_NUMBER");
		   	String LICENSE=request.getParameter("LICENSE");
			String STATE=request.getParameter("STATE");
			String YEAR=request.getParameter("YEAR");
			String MAKE=request.getParameter("MAKE");
			String MODEL=request.getParameter("MODEL");
			String STYLE=request.getParameter("STYLE");
            String COLOR=request.getParameter("COLOUR");
            String REGISTRATION_OWNER=request.getParameter("REGISTRATION_OWNER");
            String IS_STOLEN=request.getParameter("IS_STOLEN");
            String IS_RECOVERED=request.getParameter("IS_RECOVERED");
            String IS_LEFT_AT_SCENE=request.getParameter("IS_LEFT_AT_SCENE");
            String IS_RELEASED_AT_SCENE=request.getParameter("IS_RELEASED_AT_SCENE");
			if((LICENSE.length()==0) || (MAKE.length()==0))
			 {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageInciVehicles.jsp">
                 </head>
                 <body>
<%
			 }
            else
             {

		    	String str="INSERT INTO inci_vehicles VALUES('"+INCIDENT_NUMBER+"','"+LICENSE+"','"+STATE+"','"+YEAR+"','"+MAKE+"','"+MODEL+"','"+STYLE+"','"+COLOR+"','"+REGISTRATION_OWNER+"','"+IS_STOLEN+"','"+IS_RECOVERED+"','"+IS_LEFT_AT_SCENE+"','"+IS_RELEASED_AT_SCENE+"')";
   			    int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageInciVehicles.jsp">
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