<%@ page language="java" %>
<%@ page import="java.sql.*"%>

<html>
	<head>
		<title>Incident Modus Operandi</title>
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
	    	String PREMISES=request.getParameter("PREMISES");
			String CONDITION=request.getParameter("CONDITION");
			String ENTRY_METHOD=request.getParameter("ENTRY_METHOD");
			String POINT_OF_ENTRY=request.getParameter("POINT_OF_ENTRY");
			String VEHICLE_ENTRY=request.getParameter("VEHICLE_ENTRY");
			String WEAPON_USED=request.getParameter("WEAPON_USED");
			String TOOLS_USED=request.getParameter("TOOLS_USED");
			String VICTIMS_INJURED=request.getParameter("VICTIMS_INJURED");
			String SUSPECTED_ACTIONS=request.getParameter("SUSPECTED_ACTIONS");
 			if((INCIDENT_NUMBER.length()==0) || (PREMISES.length()==0))
			 {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageInciModOper.jsp">
                 </head>
                 <body>
<%
			 }
			else
             {
			    String str="INSERT INTO inci_modus_oper VALUES('"+INCIDENT_NUMBER+"','"+PREMISES+"','"+CONDITION+"','"+ENTRY_METHOD+"','"+POINT_OF_ENTRY+"','"+VEHICLE_ENTRY+"','"+WEAPON_USED+"','"+TOOLS_USED+"','"+VICTIMS_INJURED+"','"+SUSPECTED_ACTIONS+"')";

			    int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageInciModOper.jsp">
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