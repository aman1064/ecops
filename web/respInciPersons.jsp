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
	    	String NAME=request.getParameter("NAME");
			String DOB=request.getParameter("DOB");
			String TYPE=request.getParameter("TYPE");
			String ADDRESS=request.getParameter("ADDRESS");
			String PHONE_NUMBER=request.getParameter("PHONE_NUMBER");
			String GENDER=request.getParameter("GENDER");
			if((INCIDENT_NUMBER.length()==0) || (NAME.length()==0) || (TYPE.length()==0) || (GENDER.length()==0))
			 {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageInciPersons.jsp">
                 </head>
                 <body>
<%
			 }
			else
             {
     		   String str="INSERT INTO inci_persons VALUES('"+INCIDENT_NUMBER+"','"+NAME+"','"+DOB+"','"+TYPE+"','"+ADDRESS+"','"+PHONE_NUMBER+"','"+GENDER+"')";
        	   int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageInciPersons.jsp">
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